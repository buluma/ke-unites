<?php
/**
 * @package     Joomla.Plugin
 * @subpackage  Search.newsfeeds
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Newsfeeds search plugin.
 *
 * @since  1.6
 */
class PlgSearchPages extends JPlugin
{
	/**
	 * Load the language file on instantiation.
	 *
	 * @var    boolean
	 * @since  3.1
	 */
	protected $autoloadLanguage = true;

	/**
	 * Determine areas searchable by this plugin.
	 *
	 * @return  array  An array of search areas.
	 *
	 * @since   1.6
	 */
	public function onContentSearchAreas()
	{
		static $areas = array(
			'pages' => 'PLG_SEARCH_PAGES'
		);

		return $areas;
	}

	/**
	 * Search content (products).
	 *
	 * The SQL must return the following fields that are used in a common display
	 * routine: href, title, section, created, text, browsernav.
	 *
	 * @param   string  $text      Target search string.
	 * @param   string  $phrase    Matching option (possible values: exact|any|all).  Default is "any".
	 * @param   string  $ordering  Ordering option (possible values: newest|oldest|popular|alpha|category).  Default is "newest".
	 * @param   mixed   $areas     An array if the search it to be restricted to areas or null to search all areas.
	 *
	 * @return  array  Search results.
	 *
	 * @since   1.6
	 */
	public function onContentSearch($text, $phrase = '', $ordering = '', $areas = null)
	{
		$db = JFactory::getDbo();
		$app = JFactory::getApplication();
		$user = JFactory::getUser();
		$groups = implode(',', $user->getAuthorisedViewLevels());

		if (is_array($areas))
		{
			if (!array_intersect($areas, array_keys($this->onContentSearchAreas())))
			{
				return array();
			}
		}

		$sContent = $this->params->get('search_content', 1);
		$sArchived = $this->params->get('search_archived', 1);
		$limit = $this->params->def('search_limit', 50);
		$state = array();

		if ($sContent)
		{
			$state[] = 1;
		}

		if ($sArchived)
		{
			$state[] = 2;
		}

		if (empty($state))
		{
			return array();
		}

		$text = trim($text);

		if ($text == '')
		{
			return array();
		}

		switch ($phrase)
		{
			case 'exact':
				$text = $db->quote('%' . $db->escape($text, true) . '%', false);
				$wheres2 = array();
				$wheres2[] = 'a.title LIKE ' . $text;
				$wheres2[] = 'a.text LIKE ' . $text;
				$where = '(' . implode(') OR (', $wheres2) . ')';
				break;

			case 'all':
			case 'any':
			default:
				$words = explode(' ', $text);
				$wheres = array();

				foreach ($words as $word)
				{
					$word = $db->quote('%' . $db->escape($word, true) . '%', false);
					$wheres2 = array();
					$wheres2[] = 'a.title LIKE ' . $word;
					$wheres2[] = 'a.text LIKE ' . $word;
					$wheres[] = implode(' OR ', $wheres2);
				}

				$where = '(' . implode(($phrase == 'all' ? ') AND (' : ') OR ('), $wheres) . ')';
				break;
		}

		switch ($ordering)
		{
			case 'alpha':
				$order = 'a.title ASC';
				break;

			case 'category':
				$order = 'c.title ASC, a.title ASC';
				break;

			case 'oldest':
			case 'popular':
			case 'newest':
			default:
				$order = 'a.title ASC';
		}

		$searchNewsfeeds = JText::_('Kenya Unites');

		$query = $db->getQuery(true);

		// SQLSRV changes.
		$case_when  = ' CASE WHEN ';
		$case_when .= $query->charLength('a.title', '!=', '0');
		$case_when .= ' THEN ';
		$a_id       = $query->castAsChar('a.id');
		$case_when .= $query->concatenate(array($a_id, 'a.title'), ':');
		$case_when .= ' ELSE ';
		$case_when .= $a_id . ' END as slug';

		$case_when1  = ' CASE WHEN ';
		$case_when1 .= $query->charLength('c.alias', '!=', '0');
		$case_when1 .= ' THEN ';
		$c_id        = $query->castAsChar('c.id');
		$case_when1 .= $query->concatenate(array($c_id, 'c.alias'), ':');
		$case_when1 .= ' ELSE ';
		$case_when1 .= $c_id . ' END as catslug';

		// $query->select('a.id, a.title AS title, a.created_on AS created, a.text AS text, ' . $case_when . "," . $case_when1)
		// 	->select($query->concatenate(array($db->quote($searchNewsfeeds), 'c.title'), " / ") . ' AS section')
		// 	->select('\'1\' AS browsernav')
		// 	->from('#__sppagebuilder AS a')
		// 	->join('INNER', '#__categories as c ON c.id = a.catid')
		// 	->where('(' . $where . ') AND a.published IN (' . implode(',', $state) . ') AND c.published = 1 AND c.access IN (' . $groups . ')')
		// 	->order($order);

		$query->select('a.id, a.title AS title, a.created_on AS created, a.text AS text')
		->select($query->concatenate(array($db->quote($searchNewsfeeds), 'a.title'), " / ") . ' AS section')
			->select('\'1\' AS browsernav')
			->from('#__sppagebuilder AS a')
			// ->join('INNER', '#__categories as c ON c.id = a.catid')
			->where('(' . $where . ') AND a.published IN (' . implode(',', $state) . ')')
			->order($order);

		// Filter by language.
		// if ($app->isSite() && JLanguageMultilang::isEnabled())
		// {
		// 	$tag = JFactory::getLanguage()->getTag();
		// 	$query->where('a.language in (' . $db->quote($tag) . ',' . $db->quote('*') . ')')
		// 		->where('c.language in (' . $db->quote($tag) . ',' . $db->quote('*') . ')');
		// }
		// echo $query;
		$db->setQuery($query, 0, $limit);

		try
		{
			$rows = $db->loadObjectList();
				// echo '<pre>';
				// echo $rows['1'];
				// var_dump($rows);
				// echo '</pre>';
		}
		catch (RuntimeException $e)
		{
			$rows = array();
			JFactory::getApplication()->enqueueMessage(JText::_('JERROR_AN_ERROR_HAS_OCCURRED'), 'error');
		}

		// echo '<pre>';
		// print_r($rows);
		// echo '</pre>';
		if ($rows)
		{
			foreach ($rows as $key => $row)
			{
				// $rows[$key]->href = 'index.php?option=com_products&view=cover&id=' . $row->id .'&Itemid=627';
				$rows[$key]->href = 'index.php?option=com_sppagebuilder&view=page&id='. $row->id .'&Itemid=747';
			}
		}

		return $rows;
	}
}
