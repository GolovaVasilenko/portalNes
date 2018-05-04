-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Хост: annayu.mysql.ukraine.com.ua
-- Время создания: Май 04 2018 г., 15:18
-- Версия сервера: 5.7.16-10-log
-- Версия PHP: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `annayu_bistro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wd_ariadminer_connections`
--

CREATE TABLE `wd_ariadminer_connections` (
  `connection_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('server','sqlite','pgsql','oracle','mssql','firebird','simpledb','mongo','elastic') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'server',
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `crypt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_commentmeta`
--

CREATE TABLE `wd_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_comments`
--

CREATE TABLE `wd_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_comments`
--

INSERT INTO `wd_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-10-13 11:54:49', '2017-10-13 11:54:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_create_map`
--

CREATE TABLE `wd_create_map` (
  `map_id` int(11) NOT NULL,
  `map_title` varchar(255) DEFAULT NULL,
  `map_width` varchar(255) DEFAULT NULL,
  `map_height` varchar(255) DEFAULT NULL,
  `map_zoom_level` varchar(255) DEFAULT NULL,
  `map_type` varchar(255) DEFAULT NULL,
  `map_scrolling_wheel` varchar(255) DEFAULT NULL,
  `map_visual_refresh` varchar(255) DEFAULT NULL,
  `map_45imagery` varchar(255) DEFAULT NULL,
  `map_street_view_setting` text,
  `map_route_direction_setting` text,
  `map_all_control` text,
  `map_info_window_setting` text,
  `style_google_map` text,
  `map_locations` longtext,
  `map_layer_setting` text,
  `map_polygon_setting` longtext,
  `map_polyline_setting` longtext,
  `map_cluster_setting` text,
  `map_overlay_setting` text,
  `map_geotags` text,
  `map_infowindow_setting` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_create_map`
--

INSERT INTO `wd_create_map` (`map_id`, `map_title`, `map_width`, `map_height`, `map_zoom_level`, `map_type`, `map_scrolling_wheel`, `map_visual_refresh`, `map_45imagery`, `map_street_view_setting`, `map_route_direction_setting`, `map_all_control`, `map_info_window_setting`, `style_google_map`, `map_locations`, `map_layer_setting`, `map_polygon_setting`, `map_polyline_setting`, `map_cluster_setting`, `map_overlay_setting`, `map_geotags`, `map_infowindow_setting`) VALUES
(1, 'Beirut Bistro', '100%', '500', '5', 'ROADMAP', '', NULL, '', 'a:2:{s:11:\"pov_heading\";s:0:\"\";s:9:\"pov_pitch\";s:0:\"\";}', 'N;', 'a:12:{s:19:\"map_center_latitude\";s:0:\"\";s:20:\"map_center_longitude\";s:0:\"\";s:21:\"zoom_control_position\";s:8:\"TOP_LEFT\";s:18:\"zoom_control_style\";s:5:\"LARGE\";s:25:\"map_type_control_position\";s:9:\"TOP_RIGHT\";s:22:\"map_type_control_style\";s:14:\"HORIZONTAL_BAR\";s:28:\"full_screen_control_position\";s:9:\"TOP_RIGHT\";s:28:\"street_view_control_position\";s:8:\"TOP_LEFT\";s:18:\"infowindow_setting\";s:0:\"\";s:21:\"infowindow_openoption\";s:5:\"click\";s:19:\"marker_default_icon\";s:89:\"http://ns6.inleed.net/~beirutbist/wp-content/plugins/wp-google-map-plugin/assets/images//default_marker.png\";s:27:\"infowindow_bounce_animation\";s:0:\"\";}', 'N;', 'N;', 'a:0:{}', 'N;', 'N;', NULL, 'N;', 'N;', 'N;', 'N;'),
(2, 'Beirut Bistro', '100%', '500', '5', 'ROADMAP', '', NULL, '', 'a:2:{s:11:\"pov_heading\";s:0:\"\";s:9:\"pov_pitch\";s:0:\"\";}', 'N;', 'a:12:{s:19:\"map_center_latitude\";s:0:\"\";s:20:\"map_center_longitude\";s:0:\"\";s:21:\"zoom_control_position\";s:8:\"TOP_LEFT\";s:18:\"zoom_control_style\";s:5:\"LARGE\";s:25:\"map_type_control_position\";s:9:\"TOP_RIGHT\";s:22:\"map_type_control_style\";s:14:\"HORIZONTAL_BAR\";s:28:\"full_screen_control_position\";s:9:\"TOP_RIGHT\";s:28:\"street_view_control_position\";s:8:\"TOP_LEFT\";s:18:\"infowindow_setting\";s:0:\"\";s:21:\"infowindow_openoption\";s:5:\"click\";s:19:\"marker_default_icon\";s:89:\"http://ns6.inleed.net/~beirutbist/wp-content/plugins/wp-google-map-plugin/assets/images//default_marker.png\";s:27:\"infowindow_bounce_animation\";s:0:\"\";}', 'N;', 'N;', 'a:0:{}', 'N;', 'N;', NULL, 'N;', 'N;', 'N;', 'N;');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_circles`
--

CREATE TABLE `wd_gmwd_circles` (
  `id` int(16) NOT NULL,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `center_address` varchar(256) NOT NULL,
  `center_lat` varchar(256) NOT NULL,
  `center_lng` varchar(256) NOT NULL,
  `show_marker` tinyint(1) NOT NULL,
  `radius` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `fill_color` varchar(256) NOT NULL,
  `fill_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `fill_color_hover` varchar(256) NOT NULL,
  `fill_opacity_hover` varchar(256) NOT NULL,
  `enable_info_window` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_maps`
--

CREATE TABLE `wd_gmwd_maps` (
  `id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `width` varchar(256) NOT NULL,
  `height` varchar(256) NOT NULL,
  `center_address` varchar(256) NOT NULL,
  `center_lat` varchar(256) NOT NULL,
  `center_lng` varchar(256) NOT NULL,
  `width_percent` varchar(16) NOT NULL,
  `map_alignment` varchar(16) NOT NULL,
  `border_radius` varchar(16) NOT NULL,
  `zoom_level` int(16) NOT NULL,
  `min_zoom` int(16) NOT NULL,
  `max_zoom` int(16) NOT NULL,
  `enable_zoom_control` tinyint(1) NOT NULL,
  `zoom_control_position` int(16) NOT NULL,
  `enable_map_type_control` tinyint(1) NOT NULL,
  `map_type_control_position` int(16) NOT NULL,
  `map_type_control_style` int(16) NOT NULL,
  `enable_scale_control` tinyint(1) NOT NULL,
  `enable_street_view_control` tinyint(1) NOT NULL,
  `street_view_control_position` int(16) NOT NULL,
  `enable_fullscreen_control` tinyint(1) NOT NULL,
  `fullscreen_control_position` int(16) NOT NULL,
  `enable_rotate_control` tinyint(1) NOT NULL,
  `whell_scrolling` tinyint(1) NOT NULL,
  `map_draggable` tinyint(1) NOT NULL,
  `map_db_click_zoom` tinyint(1) NOT NULL,
  `enable_directions` tinyint(1) NOT NULL,
  `directions_window_open` tinyint(1) NOT NULL,
  `info_window_open_on` varchar(16) NOT NULL,
  `direction_position` int(16) NOT NULL,
  `directions_window_width` varchar(16) NOT NULL,
  `directions_window_width_unit` varchar(16) NOT NULL,
  `enable_store_locator` tinyint(1) NOT NULL,
  `store_locator_header_title` varchar(256) NOT NULL,
  `store_locator_window_width` varchar(16) NOT NULL,
  `store_locator_window_width_unit` varchar(16) NOT NULL,
  `store_locator_position` varchar(16) NOT NULL,
  `restrict_to_country` varchar(256) NOT NULL,
  `distance_in` varchar(256) NOT NULL,
  `show_bouncing_icon` tinyint(1) NOT NULL,
  `enable_bicycle_layer` tinyint(1) NOT NULL,
  `enable_traffic_layer` tinyint(1) NOT NULL,
  `enable_transit_layer` tinyint(1) NOT NULL,
  `georss_url` varchar(256) NOT NULL,
  `kml_url` varchar(256) NOT NULL,
  `fusion_table_id` varchar(256) NOT NULL,
  `geolocate_user` tinyint(1) NOT NULL,
  `marker_listing_type` int(16) NOT NULL,
  `marker_list_position` int(16) NOT NULL,
  `enable_category_filter` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `marker_list_inside_map` tinyint(1) NOT NULL,
  `marker_list_inside_map_position` int(16) NOT NULL,
  `advanced_info_window_position` int(16) NOT NULL,
  `circle_line_color` varchar(256) NOT NULL,
  `circle_line_opacity` varchar(256) NOT NULL,
  `circle_fill_color` varchar(256) NOT NULL,
  `circle_fill_opacity` varchar(256) NOT NULL,
  `circle_line_width` int(16) NOT NULL,
  `shortcode_id` int(16) NOT NULL,
  `theme_id` int(16) NOT NULL,
  `enable_searchbox` tinyint(1) NOT NULL,
  `searchbox_position` int(16) NOT NULL,
  `info_window_info` varchar(256) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_gmwd_maps`
--

INSERT INTO `wd_gmwd_maps` (`id`, `title`, `width`, `height`, `center_address`, `center_lat`, `center_lng`, `width_percent`, `map_alignment`, `border_radius`, `zoom_level`, `min_zoom`, `max_zoom`, `enable_zoom_control`, `zoom_control_position`, `enable_map_type_control`, `map_type_control_position`, `map_type_control_style`, `enable_scale_control`, `enable_street_view_control`, `street_view_control_position`, `enable_fullscreen_control`, `fullscreen_control_position`, `enable_rotate_control`, `whell_scrolling`, `map_draggable`, `map_db_click_zoom`, `enable_directions`, `directions_window_open`, `info_window_open_on`, `direction_position`, `directions_window_width`, `directions_window_width_unit`, `enable_store_locator`, `store_locator_header_title`, `store_locator_window_width`, `store_locator_window_width_unit`, `store_locator_position`, `restrict_to_country`, `distance_in`, `show_bouncing_icon`, `enable_bicycle_layer`, `enable_traffic_layer`, `enable_transit_layer`, `georss_url`, `kml_url`, `fusion_table_id`, `geolocate_user`, `marker_listing_type`, `marker_list_position`, `enable_category_filter`, `type`, `marker_list_inside_map`, `marker_list_inside_map_position`, `advanced_info_window_position`, `circle_line_color`, `circle_line_opacity`, `circle_fill_color`, `circle_fill_opacity`, `circle_line_width`, `shortcode_id`, `theme_id`, `enable_searchbox`, `searchbox_position`, `info_window_info`, `published`) VALUES
(1, 'My First Map', '100', '', 'R. do Celeiros 2, 7780, Portugal', '42.45362248301644', '-21.056485250000033', '%', 'left', '', 3, 2, 22, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 'click', 0, '100', '%', 1, '', '100', '%', '', '', 'km', 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '000', '0.6', '7FDF16', '0.3', 2, 1, 1, 0, 0, 'title,address,desc,pic', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_mapstyles`
--

CREATE TABLE `wd_gmwd_mapstyles` (
  `id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `styles` longtext NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_markercategories`
--

CREATE TABLE `wd_gmwd_markercategories` (
  `id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `category_picture` varchar(256) NOT NULL,
  `parent` int(16) NOT NULL,
  `level` int(16) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_markers`
--

CREATE TABLE `wd_gmwd_markers` (
  `id` int(16) NOT NULL,
  `map_id` int(16) NOT NULL,
  `lat` varchar(256) NOT NULL,
  `lng` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `animation` varchar(16) NOT NULL,
  `enable_info_window` tinyint(1) NOT NULL,
  `info_window_open` tinyint(1) NOT NULL,
  `marker_size` int(16) NOT NULL,
  `custom_marker_url` varchar(256) NOT NULL,
  `choose_marker_icon` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `link_url` varchar(256) NOT NULL,
  `pic_url` varchar(256) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_gmwd_markers`
--

INSERT INTO `wd_gmwd_markers` (`id`, `map_id`, `lat`, `lng`, `category`, `title`, `address`, `animation`, `enable_info_window`, `info_window_open`, `marker_size`, `custom_marker_url`, `choose_marker_icon`, `description`, `link_url`, `pic_url`, `published`) VALUES
(1, 1, '41.87194', '12.567379999999957', '0', 'Italia', 'Italia', 'DROP', 1, 0, 32, '', 1, '', '', '', 1),
(2, 1, '40.6356899', '-73.60066499999999', '0', 'CIDNEY PHILLIPS, Washington Street, Baldwin, NY, United States', 'CIDNEY PHILLIPS, Washington Street, Baldwin, NY, United States', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(3, 1, '40.4167754', '-3.7037901999999576', '0', 'Madrid, España', 'Madrid, España', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(4, 1, '48.85661400000001', '2.3522219000000177', '0', 'Paris, France', 'Paris, France', 'DROP', 1, 0, 32, '', 1, '', '', '', 1),
(5, 1, '51.5073509', '-0.12775829999998223', '0', 'London, UK', 'London, UK', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(6, 1, '39.9525839', '-75.16522150000003', '0', 'Philadelphia, PA, United States', 'Philadelphia, PA, United States', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(7, 1, '40.7127837', '-74.00594130000002', '0', 'New York, NY, United States', 'New York, NY, United States', 'BOUNCE', 1, 0, 32, '', 1, '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_options`
--

CREATE TABLE `wd_gmwd_options` (
  `id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `value` varchar(256) NOT NULL,
  `default_value` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_gmwd_options`
--

INSERT INTO `wd_gmwd_options` (`id`, `name`, `value`, `default_value`) VALUES
(1, 'map_api_key', '', ''),
(2, 'map_language', '', ''),
(3, 'choose_marker_icon', '', '1'),
(4, 'marker_default_icon', '', ''),
(5, 'center_address', '', 'New York, NY, United States'),
(6, 'center_lat', '', '40.7127837'),
(7, 'center_lng', '', '-74.00594130000002'),
(8, 'zoom_level', '', '7'),
(9, 'whell_scrolling', '', '0'),
(10, 'map_draggable', '', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_polygons`
--

CREATE TABLE `wd_gmwd_polygons` (
  `id` int(16) NOT NULL,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `fill_color` varchar(256) NOT NULL,
  `fill_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `fill_color_hover` varchar(256) NOT NULL,
  `fill_opacity_hover` varchar(256) NOT NULL,
  `data` text NOT NULL,
  `show_markers` tinyint(1) NOT NULL,
  `enable_info_windows` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_gmwd_polygons`
--

INSERT INTO `wd_gmwd_polygons` (`id`, `map_id`, `title`, `link`, `line_width`, `line_color`, `line_opacity`, `fill_color`, `fill_opacity`, `line_color_hover`, `line_opacity_hover`, `fill_color_hover`, `fill_opacity_hover`, `data`, `show_markers`, `enable_info_windows`, `published`) VALUES
(1, 1, 'Polygon 1', '', '2', '0B0833', '0.8', '7AF6FF', '0.3', '000000', '0.9', 'FF0000', '0.4', '(48.28502057399577, -117.59765625),(37.51190453731693, -116.01562000000001),(37.37233994582321, -106.87499999999994),(50.3472131272189, -106.34764874999001),', 1, 0, 1),
(2, 1, 'Polygon 2', '', '4', '072908', '0.8', '87FF1F', '0.3', '000000', '0.9', 'FF0000', '0.4', '(48.750756296177386, 8.96484375),(61.649466740560335, 26.19140625),(47.22143353240337, 42.714843700000074),', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_polylines`
--

CREATE TABLE `wd_gmwd_polylines` (
  `id` int(16) NOT NULL,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `data` text NOT NULL,
  `show_markers` tinyint(1) NOT NULL,
  `enable_info_windows` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_gmwd_polylines`
--

INSERT INTO `wd_gmwd_polylines` (`id`, `map_id`, `title`, `line_width`, `line_color`, `line_opacity`, `line_color_hover`, `line_opacity_hover`, `data`, `show_markers`, `enable_info_windows`, `published`) VALUES
(1, 1, 'Polyline', '3', '0C5413', '0.8', '000000', '0.9', '(-28.84226783718747, 17.40234375),(-18.393623895475326, 27.7734375),(-8.83893716666915, 34.27734375),(2.3751129338801293, 35.859375),(11.784014005457768, 33.3984375),(19.06471383653978, 25.48828125),', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_rectangles`
--

CREATE TABLE `wd_gmwd_rectangles` (
  `id` int(16) NOT NULL,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `fill_color` varchar(256) NOT NULL,
  `fill_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `fill_color_hover` varchar(256) NOT NULL,
  `fill_opacity_hover` varchar(256) NOT NULL,
  `south_west` varchar(256) NOT NULL,
  `north_east` varchar(256) NOT NULL,
  `show_markers` tinyint(1) NOT NULL,
  `enable_info_windows` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_shortcodes`
--

CREATE TABLE `wd_gmwd_shortcodes` (
  `id` int(16) NOT NULL,
  `tag_text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_gmwd_shortcodes`
--

INSERT INTO `wd_gmwd_shortcodes` (`id`, `tag_text`) VALUES
(1, 'id=1 map=1');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_gmwd_themes`
--

CREATE TABLE `wd_gmwd_themes` (
  `id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `map_style_id` int(16) NOT NULL,
  `map_style_code` longtext NOT NULL,
  `map_border_radius` varchar(16) NOT NULL,
  `directions_title_color` varchar(16) NOT NULL,
  `directions_window_background_color` varchar(16) NOT NULL,
  `directions_window_border_radius` varchar(16) NOT NULL,
  `directions_input_border_radius` varchar(16) NOT NULL,
  `directions_input_border_color` varchar(16) NOT NULL,
  `directions_label_color` varchar(16) NOT NULL,
  `directions_label_background_color` varchar(16) NOT NULL,
  `directions_label_border_radius` varchar(16) NOT NULL,
  `directions_button_width` varchar(16) NOT NULL,
  `directions_button_border_radius` varchar(16) NOT NULL,
  `directions_button_background_color` varchar(16) NOT NULL,
  `directions_button_color` varchar(16) NOT NULL,
  `directions_button_alignment` tinyint(1) NOT NULL,
  `directions_columns` tinyint(1) NOT NULL,
  `store_locator_title_color` varchar(16) NOT NULL,
  `store_locator_window_bgcolor` varchar(16) NOT NULL,
  `store_locator_window_border_radius` varchar(16) NOT NULL,
  `store_locator_input_border_radius` varchar(16) NOT NULL,
  `store_locator_input_border_color` varchar(16) NOT NULL,
  `store_locator_label_color` varchar(16) NOT NULL,
  `store_locator_label_background_color` varchar(16) NOT NULL,
  `store_locator_label_border_radius` varchar(16) NOT NULL,
  `store_locator_buttons_alignment` tinyint(1) NOT NULL,
  `store_locator_button_width` varchar(16) NOT NULL,
  `store_locator_button_border_radius` varchar(16) NOT NULL,
  `store_locator_search_button_background_color` varchar(16) NOT NULL,
  `store_locator_search_button_color` varchar(16) NOT NULL,
  `store_locator_reset_button_background_color` varchar(16) NOT NULL,
  `store_locator_reset_button_color` varchar(16) NOT NULL,
  `store_locator_columns` tinyint(1) NOT NULL,
  `marker_listsing_basic_title_color` varchar(16) NOT NULL,
  `marker_listsing_basic_bgcolor` varchar(16) NOT NULL,
  `marker_listsing_basic_marker_title_color` varchar(16) NOT NULL,
  `marker_listsing_basic_marker_desc_color` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_border_radius` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_width` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_height` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_background_color` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_color` varchar(16) NOT NULL,
  `marker_advanced_title_color` varchar(16) NOT NULL,
  `marker_advanced_table_background` varchar(16) NOT NULL,
  `marker_advanced_table_border_radius` varchar(16) NOT NULL,
  `marker_advanced_table_color` varchar(16) NOT NULL,
  `marker_advanced_table_header_background` varchar(16) NOT NULL,
  `marker_advanced_table_header_color` varchar(16) NOT NULL,
  `advanced_info_window_background` varchar(16) NOT NULL,
  `advanced_info_window_title_color` varchar(16) NOT NULL,
  `advanced_info_window_title_background_color` varchar(16) NOT NULL,
  `advanced_info_window_desc_color` varchar(16) NOT NULL,
  `advanced_info_window_dir_color` varchar(16) NOT NULL,
  `advanced_info_window_dir_background_color` varchar(16) NOT NULL,
  `advanced_info_window_dir_border_radius` varchar(16) NOT NULL,
  `carousel_item_height` int(16) NOT NULL,
  `carousel_item_border_radius` int(16) NOT NULL,
  `carousel_items_count` int(16) NOT NULL,
  `carousel_color` varchar(16) NOT NULL,
  `carousel_background_color` varchar(16) NOT NULL,
  `carousel_hover_color` varchar(16) NOT NULL,
  `carousel_hover_background_color` varchar(16) NOT NULL,
  `marker_listsing_inside_map_color` varchar(16) NOT NULL,
  `marker_listsing_inside_map_bgcolor` varchar(16) NOT NULL,
  `marker_listsing_inside_map_width` varchar(16) NOT NULL,
  `marker_listsing_inside_map_height` varchar(16) NOT NULL,
  `marker_listsing_inside_map_border_radius` varchar(16) NOT NULL,
  `auto_generate_style_code` tinyint(1) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_gmwd_themes`
--

INSERT INTO `wd_gmwd_themes` (`id`, `title`, `map_style_id`, `map_style_code`, `map_border_radius`, `directions_title_color`, `directions_window_background_color`, `directions_window_border_radius`, `directions_input_border_radius`, `directions_input_border_color`, `directions_label_color`, `directions_label_background_color`, `directions_label_border_radius`, `directions_button_width`, `directions_button_border_radius`, `directions_button_background_color`, `directions_button_color`, `directions_button_alignment`, `directions_columns`, `store_locator_title_color`, `store_locator_window_bgcolor`, `store_locator_window_border_radius`, `store_locator_input_border_radius`, `store_locator_input_border_color`, `store_locator_label_color`, `store_locator_label_background_color`, `store_locator_label_border_radius`, `store_locator_buttons_alignment`, `store_locator_button_width`, `store_locator_button_border_radius`, `store_locator_search_button_background_color`, `store_locator_search_button_color`, `store_locator_reset_button_background_color`, `store_locator_reset_button_color`, `store_locator_columns`, `marker_listsing_basic_title_color`, `marker_listsing_basic_bgcolor`, `marker_listsing_basic_marker_title_color`, `marker_listsing_basic_marker_desc_color`, `marker_listsing_basic_dir_border_radius`, `marker_listsing_basic_dir_width`, `marker_listsing_basic_dir_height`, `marker_listsing_basic_dir_background_color`, `marker_listsing_basic_dir_color`, `marker_advanced_title_color`, `marker_advanced_table_background`, `marker_advanced_table_border_radius`, `marker_advanced_table_color`, `marker_advanced_table_header_background`, `marker_advanced_table_header_color`, `advanced_info_window_background`, `advanced_info_window_title_color`, `advanced_info_window_title_background_color`, `advanced_info_window_desc_color`, `advanced_info_window_dir_color`, `advanced_info_window_dir_background_color`, `advanced_info_window_dir_border_radius`, `carousel_item_height`, `carousel_item_border_radius`, `carousel_items_count`, `carousel_color`, `carousel_background_color`, `carousel_hover_color`, `carousel_hover_background_color`, `marker_listsing_inside_map_color`, `marker_listsing_inside_map_bgcolor`, `marker_listsing_inside_map_width`, `marker_listsing_inside_map_height`, `marker_listsing_inside_map_border_radius`, `auto_generate_style_code`, `default`, `published`) VALUES
(1, 'Default', 1, '', '', '000000', 'F2F2F2', '', '', '000000', '000000', 'F2F2F2', '', '100', '', '000000', 'FFFFFF', 0, 0, '000000', 'F2F2F2', '', '', '000000', '000000', 'F2F2F2', '', 0, '', '', '000000', 'FFFFFF', '000000', 'FFFFFF', 0, '000000', 'F2F2F2', '000000', '000000', '', '130', '30', '000000', 'FFFFFF', '000000', 'F2F2F2', '', '000000', '000000', 'FFFFFF', 'FFFFFF', '000000', 'F2F2F2', '000000', 'FFFFFF', '000000', '', 45, 0, 3, '000000', 'F2F2F2', 'F2F2F2', '000000', '000000', 'F2F2F2', '250', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_group_map`
--

CREATE TABLE `wd_group_map` (
  `group_map_id` int(11) NOT NULL,
  `group_map_title` varchar(255) DEFAULT NULL,
  `group_marker` text,
  `extensions_fields` text,
  `group_parent` int(11) DEFAULT '0',
  `group_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_links`
--

CREATE TABLE `wd_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_map_locations`
--

CREATE TABLE `wd_map_locations` (
  `location_id` int(11) NOT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_draggable` varchar(255) DEFAULT NULL,
  `location_infowindow_default_open` varchar(255) DEFAULT NULL,
  `location_animation` varchar(255) DEFAULT NULL,
  `location_latitude` varchar(255) DEFAULT NULL,
  `location_longitude` varchar(255) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_state` varchar(255) DEFAULT NULL,
  `location_country` varchar(255) DEFAULT NULL,
  `location_postal_code` varchar(255) DEFAULT NULL,
  `location_zoom` int(11) DEFAULT NULL,
  `location_author` int(11) DEFAULT NULL,
  `location_messages` text,
  `location_settings` text,
  `location_group_map` text,
  `location_extrafields` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wd_options`
--

CREATE TABLE `wd_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_options`
--

INSERT INTO `wd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ns6.inleed.net/~beirutbist', 'yes'),
(2, 'home', 'http://ns6.inleed.net/~beirutbist', 'yes'),
(3, 'blogname', 'Beirut Bistro  - Libanesisk restaurang Libanesisk mat', 'yes'),
(4, 'blogdescription', 'Beirut Bistro - Libanesisk kök &amp; bar, Hornsbergs strand 85, 112 15 Stockholm', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vasilenko75@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:168:{s:34:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$\";s:40:\"index.php?xml_sitemap=params=$matches[2]\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$\";s:49:\"index.php?xml_sitemap=params=$matches[2];zip=true\";s:35:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html$\";s:50:\"index.php?xml_sitemap=params=$matches[2];html=true\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$\";s:59:\"index.php?xml_sitemap=params=$matches[2];html=true;zip=true\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"dishes/?$\";s:30:\"index.php?post_type=restaurant\";s:39:\"dishes/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=restaurant&feed=$matches[1]\";s:34:\"dishes/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=restaurant&feed=$matches[1]\";s:26:\"dishes/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=restaurant&paged=$matches[1]\";s:12:\"fw-slider/?$\";s:29:\"index.php?post_type=fw-slider\";s:42:\"fw-slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=fw-slider&feed=$matches[1]\";s:37:\"fw-slider/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=fw-slider&feed=$matches[1]\";s:29:\"fw-slider/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=fw-slider&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"owl-carousel/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"owl-carousel/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"owl-carousel/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"owl-carousel/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"owl-carousel/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"owl-carousel/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"owl-carousel/([^/]+)/embed/?$\";s:45:\"index.php?owl-carousel=$matches[1]&embed=true\";s:33:\"owl-carousel/([^/]+)/trackback/?$\";s:39:\"index.php?owl-carousel=$matches[1]&tb=1\";s:41:\"owl-carousel/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?owl-carousel=$matches[1]&paged=$matches[2]\";s:48:\"owl-carousel/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?owl-carousel=$matches[1]&cpage=$matches[2]\";s:37:\"owl-carousel/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?owl-carousel=$matches[1]&page=$matches[2]\";s:29:\"owl-carousel/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"owl-carousel/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"owl-carousel/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"owl-carousel/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"owl-carousel/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"owl-carousel/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"carousel/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?carousel=$matches[1]&feed=$matches[2]\";s:44:\"carousel/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?carousel=$matches[1]&feed=$matches[2]\";s:25:\"carousel/([^/]+)/embed/?$\";s:41:\"index.php?carousel=$matches[1]&embed=true\";s:37:\"carousel/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?carousel=$matches[1]&paged=$matches[2]\";s:19:\"carousel/([^/]+)/?$\";s:30:\"index.php?carousel=$matches[1]\";s:34:\"dishes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"dishes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"dishes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"dishes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"dishes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"dishes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"dishes/([^/]+)/embed/?$\";s:43:\"index.php?restaurant=$matches[1]&embed=true\";s:27:\"dishes/([^/]+)/trackback/?$\";s:37:\"index.php?restaurant=$matches[1]&tb=1\";s:47:\"dishes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?restaurant=$matches[1]&feed=$matches[2]\";s:42:\"dishes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?restaurant=$matches[1]&feed=$matches[2]\";s:35:\"dishes/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?restaurant=$matches[1]&paged=$matches[2]\";s:42:\"dishes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?restaurant=$matches[1]&cpage=$matches[2]\";s:31:\"dishes/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?restaurant=$matches[1]&page=$matches[2]\";s:23:\"dishes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"dishes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"dishes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"dishes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"dishes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"dishes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"restaurant/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?menu_category=$matches[1]&feed=$matches[2]\";s:46:\"restaurant/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?menu_category=$matches[1]&feed=$matches[2]\";s:27:\"restaurant/([^/]+)/embed/?$\";s:46:\"index.php?menu_category=$matches[1]&embed=true\";s:39:\"restaurant/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?menu_category=$matches[1]&paged=$matches[2]\";s:21:\"restaurant/([^/]+)/?$\";s:35:\"index.php?menu_category=$matches[1]\";s:37:\"fw-slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"fw-slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"fw-slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"fw-slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"fw-slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"fw-slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"fw-slider/([^/]+)/embed/?$\";s:42:\"index.php?fw-slider=$matches[1]&embed=true\";s:30:\"fw-slider/([^/]+)/trackback/?$\";s:36:\"index.php?fw-slider=$matches[1]&tb=1\";s:50:\"fw-slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?fw-slider=$matches[1]&feed=$matches[2]\";s:45:\"fw-slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?fw-slider=$matches[1]&feed=$matches[2]\";s:38:\"fw-slider/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?fw-slider=$matches[1]&paged=$matches[2]\";s:45:\"fw-slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?fw-slider=$matches[1]&cpage=$matches[2]\";s:34:\"fw-slider/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?fw-slider=$matches[1]&page=$matches[2]\";s:26:\"fw-slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"fw-slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"fw-slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"fw-slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"fw-slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"fw-slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:27:\"ari-adminer/ari-adminer.php\";i:1;s:38:\"carbon-fields/carbon-fields-plugin.php\";i:2;s:36:\"google-sitemap-generator/sitemap.php\";i:3;s:50:\"lanars-tripadvisor-reviews/tripadvisor-reviews.php\";i:4;s:34:\"minify-html-markup/minify-html.php\";i:5;s:28:\"owl-carousel/owlcarousel.php\";i:6;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:7;s:17:\"unyson/unyson.php\";i:8;s:24:\"wordpress-seo/wp-seo.php\";i:9;s:25:\"wp-cookies-alert/wpca.php\";i:10;s:27:\"wp-super-cache/wp-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"/home/annayu/anna-yu.com.ua/bistro/wp-content/themes/webdom/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'webdom', 'yes'),
(41, 'stylesheet', 'webdom', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '241', 'yes'),
(59, 'thumbnail_size_h', '180', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '375', 'yes'),
(62, 'medium_size_h', '250', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:5:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";s:50:\"lanars-tripadvisor-reviews/tripadvisor-reviews.php\";s:13:\"tar_uninstall\";s:29:\"css-optimizer/bpminifycss.php\";s:21:\"bpminifycss_uninstall\";s:27:\"autoptimize/autoptimize.php\";s:21:\"autoptimize_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wd_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:72:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpgmp_admin_overview\";b:1;s:18:\"wpgmp_how_overview\";b:1;s:19:\"wpgmp_form_location\";b:1;s:21:\"wpgmp_manage_location\";b:1;s:14:\"wpgmp_form_map\";b:1;s:16:\"wpgmp_manage_map\";b:1;s:20:\"wpgmp_form_group_map\";b:1;s:22:\"wpgmp_manage_group_map\";b:1;s:21:\"wpgmp_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;s:11:\"run_adminer\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:18:\"orphaned_widgets_1\";a:1:{i:0;s:6:\"text-4\";}s:18:\"orphaned_widgets_2\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:22;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:9:{i:1524152238;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1524182089;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524210903;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524222230;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524225349;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524225818;a:1:{s:13:\"sm_ping_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524234084;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524234798;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:11;s:7:\"panel_2\";i:8;s:7:\"panel_3\";i:10;s:7:\"panel_4\";i:9;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1507898125;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(122, 'can_compress_scripts', '0', 'no'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'fw_active_extensions', 'a:26:{s:6:\"update\";a:0:{}s:13:\"github-update\";a:0:{}s:4:\"blog\";a:0:{}s:10:\"shortcodes\";a:0:{}s:12:\"page-builder\";a:0:{}s:17:\"editor-shortcodes\";a:0:{}s:7:\"builder\";a:0:{}s:5:\"forms\";a:0:{}s:13:\"contact-forms\";a:0:{}s:6:\"mailer\";a:0:{}s:13:\"wp-shortcodes\";a:0:{}s:8:\"sidebars\";a:0:{}s:9:\"analytics\";a:0:{}s:6:\"social\";a:0:{}s:15:\"social-facebook\";a:0:{}s:14:\"social-twitter\";a:0:{}s:5:\"media\";a:0:{}s:6:\"slider\";a:0:{}s:9:\"bx-slider\";a:0:{}s:11:\"nivo-slider\";a:0:{}s:12:\"owl-carousel\";a:0:{}s:17:\"population-method\";a:0:{}s:23:\"population-method-posts\";a:0:{}s:22:\"population-method-tags\";a:0:{}s:24:\"population-method-custom\";a:0:{}s:28:\"population-method-categories\";a:0:{}}', 'yes'),
(160, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(161, 'current_theme', 'webdom', 'yes'),
(162, 'theme_mods_webdom', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:3:\"top\";i:2;s:6:\"social\";i:3;s:15:\"top-footer-menu\";i:4;s:15:\"restaurant menu\";i:22;s:11:\"dishes-menu\";i:25;s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:10:\"fw_options\";a:1:{s:8:\"option_1\";s:17:\"My new Parameters\";}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(176, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"vasilenko75@gmail.com\";s:7:\"version\";s:5:\"4.9.5\";s:9:\"timestamp\";i:1524151646;}', 'no'),
(207, 'webdom-fw-sidebars-options', 'a:2:{s:14:\"allowed_places\";a:1:{s:9:\"sidebar-1\";s:4:\"blue\";}s:8:\"settings\";a:0:{}}', 'no'),
(214, 'widget_srmgmap_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(217, 'gmwd_pro', 'no', 'no'),
(218, 'gmwd_version', '1.0.49', 'no'),
(219, 'gmwd_download_markers', '0', 'yes'),
(220, 'widget_gmwd_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(221, 'gmwd_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"12/5/2017\";s:3:\"int\";i:14;}}', 'yes'),
(222, 'widget_wpgmp_google_map_widget_class', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(223, 'wpgmp_language', 'no', 'yes'),
(224, 'wpgmp_api_key', 'AIzaSyDQV7Eh7j1yl1B7H2iktDhHkKvABdolyzQ', 'yes'),
(225, 'wpgmp_scripts_place', 'footer', 'yes'),
(226, 'wpgmp_location_extrafields', 's:6:\"a:0:{}\";', 'yes'),
(227, 'wpgmp_allow_meta', 's:6:\"a:0:{}\";', 'yes'),
(228, 'ank_google_map', 'a:26:{s:10:\"plugin_ver\";s:5:\"2.6.2\";s:9:\"div_width\";s:3:\"100\";s:10:\"div_height\";s:3:\"500\";s:14:\"div_width_unit\";i:2;s:16:\"div_border_color\";s:0:\"\";s:7:\"map_Lat\";s:18:\"28.613939100000003\";s:7:\"map_Lng\";s:17:\"77.20902120000005\";s:8:\"map_zoom\";i:19;s:13:\"map_lang_code\";s:0:\"\";s:8:\"map_type\";i:1;s:9:\"map_style\";i:0;s:12:\"marker_title\";s:38:\"Hornsbergs strand 85, 112 15 Stockholm\";s:11:\"marker_anim\";i:1;s:12:\"marker_color\";i:9;s:11:\"marker_file\";s:0:\"\";s:7:\"api_key\";s:39:\"AIzaSyB-RFAbg5pglb5Njh8yzOmH8YbaciDepx0\";s:16:\"gesture_handling\";s:4:\"auto\";s:19:\"disable_mouse_wheel\";s:1:\"0\";s:13:\"map_control_2\";s:1:\"0\";s:13:\"map_control_3\";s:1:\"0\";s:13:\"map_control_4\";s:1:\"1\";s:13:\"map_control_5\";s:1:\"1\";s:9:\"marker_on\";s:1:\"1\";s:7:\"info_on\";s:1:\"1\";s:10:\"info_state\";s:1:\"0\";s:9:\"info_text\";s:23:\"<b>Your Destination</b>\";}', 'yes'),
(241, 'fw_extensions', 'a:1:{s:11:\"seo-sitemap\";a:1:{s:6:\"update\";i:1515745384;}}', 'no'),
(242, 'fw-option-types:gmap-key', 'AIzaSyCA30n1mOdgIVN9zmxIUyw6APp2sbH6-xA', 'no'),
(335, 'category_children', 'a:0:{}', 'yes'),
(350, 'mfbfw', 'a:38:{s:11:\"borderColor\";s:7:\"#BBBBBB\";s:15:\"showCloseButton\";s:2:\"on\";s:11:\"closeHorPos\";s:5:\"right\";s:11:\"closeVerPos\";s:3:\"top\";s:12:\"paddingColor\";s:7:\"#FFFFFF\";s:7:\"padding\";s:2:\"10\";s:11:\"overlayShow\";s:2:\"on\";s:12:\"overlayColor\";s:7:\"#666666\";s:14:\"overlayOpacity\";s:3:\"0.3\";s:9:\"titleShow\";s:2:\"on\";s:13:\"titlePosition\";s:6:\"inside\";s:10:\"titleColor\";s:7:\"#333333\";s:13:\"showNavArrows\";s:2:\"on\";s:11:\"zoomOpacity\";s:2:\"on\";s:11:\"zoomSpeedIn\";s:3:\"500\";s:12:\"zoomSpeedOut\";s:3:\"500\";s:15:\"zoomSpeedChange\";s:3:\"300\";s:12:\"transitionIn\";s:4:\"fade\";s:13:\"transitionOut\";s:4:\"fade\";s:8:\"easingIn\";s:11:\"easeOutBack\";s:9:\"easingOut\";s:10:\"easeInBack\";s:12:\"easingChange\";s:14:\"easeInOutQuart\";s:10:\"imageScale\";s:2:\"on\";s:14:\"centerOnScroll\";s:2:\"on\";s:18:\"hideOnOverlayClick\";s:2:\"on\";s:18:\"enableEscapeButton\";s:2:\"on\";s:6:\"cyclic\";s:2:\"on\";s:11:\"galleryType\";s:6:\"custom\";s:16:\"customExpression\";s:63:\"jQuery(thumbnails).addClass(\"fancybox\").attr(\"rel\",\"fancybox\");\";s:14:\"autoDimensions\";s:2:\"on\";s:10:\"frameWidth\";s:3:\"560\";s:11:\"frameHeight\";s:3:\"340\";s:15:\"callbackOnStart\";s:31:\"function() { alert(\"Start!\"); }\";s:16:\"callbackOnCancel\";s:32:\"function() { alert(\"Cancel!\"); }\";s:18:\"callbackOnComplete\";s:34:\"function() { alert(\"Complete!\"); }\";s:17:\"callbackOnCleanup\";s:33:\"function() { alert(\"CleanUp!\"); }\";s:15:\"callbackOnClose\";s:31:\"function() { alert(\"Close!\"); }\";s:14:\"extraCallsData\";s:0:\"\";}', 'yes'),
(351, 'mfbfw_active_version', '3.0.12', 'yes'),
(352, 'widget_owl_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(353, 'owl_carousel_wordpress_gallery', 'off', 'yes'),
(354, 'owl_carousel_orderby', 'post_date', 'yes'),
(355, 'Carousel_children', 'a:0:{}', 'yes'),
(368, 'apss_share_settings', 'a:18:{s:13:\"share_options\";a:1:{i:0;s:4:\"post\";}s:15:\"social_icon_set\";s:1:\"4\";s:15:\"share_positions\";s:13:\"above_content\";s:15:\"social_networks\";a:8:{s:8:\"facebook\";i:1;s:7:\"twitter\";i:1;s:9:\"pinterest\";i:1;s:11:\"google-plus\";i:1;s:8:\"linkedin\";i:0;s:4:\"digg\";i:0;s:5:\"email\";i:1;s:5:\"print\";i:0;}s:23:\"disable_frontend_assets\";s:1:\"0\";s:10:\"share_text\";s:0:\"\";s:16:\"twitter_username\";N;s:22:\"counter_enable_options\";s:1:\"0\";s:19:\"twitter_counter_api\";s:1:\"1\";s:17:\"api_configuration\";a:1:{s:8:\"facebook\";a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}}s:28:\"total_counter_enable_options\";s:1:\"0\";s:17:\"enable_http_count\";s:1:\"0\";s:12:\"enable_cache\";s:1:\"1\";s:12:\"cache_period\";s:2:\"48\";s:18:\"dialog_box_options\";s:1:\"1\";s:18:\"apss_email_subject\";s:30:\"Please visit this link %%url%%\";s:15:\"apss_email_body\";s:104:\"Hey!, I found this information for you: \"%%title%%\". Here is the website link: %%permalink%%. Thank you.\";s:29:\"apss_social_counts_transients\";a:0:{}}', 'yes'),
(369, 'apss_social_counts_transients', 'a:0:{}', 'yes'),
(373, 'show_new_notification', 'yes', 'yes'),
(374, 'show_premium_cumulative_count_notification', 'yes', 'yes'),
(375, 'sfsi_section1_options', 's:410:\"a:11:{s:16:\"sfsi_rss_display\";s:2:\"no\";s:18:\"sfsi_email_display\";s:2:\"no\";s:21:\"sfsi_facebook_display\";s:3:\"yes\";s:20:\"sfsi_twitter_display\";s:3:\"yes\";s:19:\"sfsi_google_display\";s:3:\"yes\";s:18:\"sfsi_share_display\";s:2:\"no\";s:20:\"sfsi_youtube_display\";s:2:\"no\";s:22:\"sfsi_pinterest_display\";s:3:\"yes\";s:21:\"sfsi_linkedin_display\";s:2:\"no\";s:22:\"sfsi_instagram_display\";s:2:\"no\";s:17:\"sfsi_custom_files\";s:0:\"\";}\";', 'yes'),
(376, 'sfsi_section2_options', 's:1713:\"a:36:{s:12:\"sfsi_rss_url\";s:0:\"\";s:17:\"sfsi_rss_blogName\";s:0:\"\";s:18:\"sfsi_rss_blogEmail\";s:0:\"\";s:14:\"sfsi_rss_icons\";s:0:\"\";s:14:\"sfsi_email_url\";s:296:\"http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/OU5BZHdtZnpkZitFNkZBWHkzbEdNN0RFNWkzaVp0YXcwKzRjQUJFQ0laM1ZCVllTVzFUemtHdEl4WW80L0o0N0lkSkk0eUlrQlluSXcwelpQTHI4dWNUZmVYL3JvUXVxRzkyOGxXT3pLYWlaVE9xRmlnMUlvVEo3RmpuUFdHOFd8MEx5dnBYeVRhQUl5Y215ZE5Qdityd1pacHBWeWxDajBzQkZXUGs2c295RT0=/OA==\";s:24:\"sfsi_facebookPage_option\";s:2:\"no\";s:21:\"sfsi_facebookPage_url\";s:0:\"\";s:24:\"sfsi_facebookLike_option\";s:3:\"yes\";s:25:\"sfsi_facebookShare_option\";s:3:\"yes\";s:21:\"sfsi_twitter_followme\";s:2:\"no\";s:27:\"sfsi_twitter_followUserName\";s:0:\"\";s:22:\"sfsi_twitter_aboutPage\";s:3:\"yes\";s:17:\"sfsi_twitter_page\";s:2:\"no\";s:20:\"sfsi_twitter_pageURL\";s:0:\"\";s:26:\"sfsi_twitter_aboutPageText\";s:82:\"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name\";s:16:\"sfsi_google_page\";s:2:\"no\";s:19:\"sfsi_google_pageURL\";s:0:\"\";s:22:\"sfsi_googleLike_option\";s:3:\"yes\";s:23:\"sfsi_googleShare_option\";s:3:\"yes\";s:20:\"sfsi_youtube_pageUrl\";s:0:\"\";s:17:\"sfsi_youtube_page\";s:0:\"\";s:19:\"sfsi_youtube_follow\";s:0:\"\";s:15:\"sfsi_ytube_user\";s:0:\"\";s:19:\"sfsi_pinterest_page\";s:2:\"no\";s:22:\"sfsi_pinterest_pageUrl\";s:0:\"\";s:23:\"sfsi_pinterest_pingBlog\";s:3:\"yes\";s:22:\"sfsi_instagram_pageUrl\";s:0:\"\";s:18:\"sfsi_linkedin_page\";s:0:\"\";s:21:\"sfsi_linkedin_pageURL\";s:0:\"\";s:20:\"sfsi_linkedin_follow\";s:0:\"\";s:27:\"sfsi_linkedin_followCompany\";i:0;s:23:\"sfsi_linkedin_SharePage\";s:0:\"\";s:30:\"sfsi_linkedin_recommendBusines\";s:2:\"no\";s:30:\"sfsi_linkedin_recommendCompany\";s:0:\"\";s:32:\"sfsi_linkedin_recommendProductId\";i:0;s:21:\"sfsi_CustomIcon_links\";s:0:\"\";}\";', 'yes'),
(377, 'sfsi_section3_options', 's:578:\"a:14:{s:18:\"sfsi_actvite_theme\";s:4:\"flat\";s:14:\"sfsi_mouseOver\";s:2:\"no\";s:21:\"sfsi_mouseOver_effect\";s:7:\"fade_in\";s:18:\"sfsi_shuffle_icons\";s:2:\"no\";s:22:\"sfsi_shuffle_Firstload\";s:2:\"no\";s:21:\"sfsi_shuffle_interval\";s:2:\"no\";s:25:\"sfsi_shuffle_intervalTime\";i:0;s:26:\"sfsi_specialIcon_animation\";s:0:\"\";s:26:\"sfsi_specialIcon_MouseOver\";s:2:\"no\";s:26:\"sfsi_specialIcon_Firstload\";s:2:\"no\";s:32:\"sfsi_specialIcon_Firstload_Icons\";s:3:\"all\";s:25:\"sfsi_specialIcon_interval\";s:2:\"no\";s:29:\"sfsi_specialIcon_intervalTime\";s:0:\"\";s:30:\"sfsi_specialIcon_intervalIcons\";s:3:\"all\";}\";', 'yes'),
(378, 'sfsi_section4_options', 's:1677:\"a:43:{s:19:\"sfsi_display_counts\";s:2:\"no\";s:24:\"sfsi_email_countsDisplay\";s:0:\"\";s:21:\"sfsi_email_countsFrom\";s:0:\"\";s:23:\"sfsi_email_manualCounts\";i:20;s:22:\"sfsi_rss_countsDisplay\";s:0:\"\";s:21:\"sfsi_rss_manualCounts\";i:20;s:27:\"sfsi_facebook_countsDisplay\";s:2:\"no\";s:24:\"sfsi_facebook_countsFrom\";s:6:\"manual\";s:26:\"sfsi_facebook_mypageCounts\";s:0:\"\";s:26:\"sfsi_facebook_manualCounts\";i:20;s:26:\"sfsi_twitter_countsDisplay\";s:2:\"no\";s:23:\"sfsi_twitter_countsFrom\";s:6:\"manual\";s:25:\"sfsi_twitter_manualCounts\";i:20;s:15:\"tw_consumer_key\";s:0:\"\";s:18:\"tw_consumer_secret\";s:0:\"\";s:21:\"tw_oauth_access_token\";s:0:\"\";s:28:\"tw_oauth_access_token_secret\";s:0:\"\";s:25:\"sfsi_google_countsDisplay\";s:2:\"no\";s:22:\"sfsi_google_countsFrom\";s:6:\"manual\";s:24:\"sfsi_google_manualCounts\";i:20;s:19:\"sfsi_google_api_key\";s:0:\"\";s:27:\"sfsi_linkedIn_countsDisplay\";s:0:\"\";s:24:\"sfsi_linkedIn_countsFrom\";s:0:\"\";s:26:\"sfsi_linkedIn_manualCounts\";i:20;s:26:\"sfsi_youtube_countsDisplay\";s:0:\"\";s:23:\"sfsi_youtube_countsFrom\";s:0:\"\";s:25:\"sfsi_youtube_manualCounts\";i:20;s:17:\"sfsi_youtube_user\";s:0:\"\";s:22:\"sfsi_youtube_channelId\";s:0:\"\";s:28:\"sfsi_pinterest_countsDisplay\";s:2:\"no\";s:25:\"sfsi_pinterest_countsFrom\";s:6:\"manual\";s:27:\"sfsi_pinterest_manualCounts\";i:20;s:25:\"sfsi_instagram_countsFrom\";s:0:\"\";s:28:\"sfsi_instagram_countsDisplay\";s:0:\"\";s:27:\"sfsi_instagram_manualCounts\";i:20;s:19:\"sfsi_instagram_User\";s:0:\"\";s:23:\"sfsi_instagram_clientid\";s:0:\"\";s:21:\"sfsi_instagram_appurl\";s:0:\"\";s:20:\"sfsi_instagram_token\";s:0:\"\";s:25:\"sfsi_shares_countsDisplay\";s:0:\"\";s:22:\"sfsi_shares_countsFrom\";s:0:\"\";s:24:\"sfsi_shares_manualCounts\";i:20;s:24:\"sfsi_youtubeusernameorid\";s:4:\"name\";}\";', 'yes'),
(379, 'sfsi_section5_options', 's:1385:\"a:36:{s:15:\"sfsi_icons_size\";i:20;s:18:\"sfsi_icons_spacing\";i:5;s:20:\"sfsi_icons_Alignment\";s:4:\"left\";s:17:\"sfsi_icons_perRow\";i:5;s:24:\"sfsi_icons_ClickPageOpen\";s:3:\"yes\";s:16:\"sfsi_icons_float\";s:2:\"no\";s:23:\"sfsi_disable_floaticons\";s:2:\"no\";s:24:\"sfsi_icons_floatPosition\";s:12:\"center-right\";s:26:\"sfsi_icons_floatMargin_top\";i:0;s:29:\"sfsi_icons_floatMargin_bottom\";i:0;s:27:\"sfsi_icons_floatMargin_left\";i:0;s:28:\"sfsi_icons_floatMargin_right\";i:0;s:16:\"sfsi_icons_stick\";s:2:\"no\";s:22:\"sfsi_rss_MouseOverText\";s:0:\"\";s:24:\"sfsi_email_MouseOverText\";s:0:\"\";s:26:\"sfsi_twitter_MouseOverText\";s:7:\"Twitter\";s:27:\"sfsi_facebook_MouseOverText\";s:8:\"Facebook\";s:25:\"sfsi_google_MouseOverText\";s:7:\"Google+\";s:27:\"sfsi_linkedIn_MouseOverText\";s:0:\"\";s:28:\"sfsi_pinterest_MouseOverText\";s:9:\"Pinterest\";s:26:\"sfsi_youtube_MouseOverText\";s:0:\"\";s:24:\"sfsi_share_MouseOverText\";s:0:\"\";s:28:\"sfsi_instagram_MouseOverText\";s:0:\"\";s:22:\"sfsi_CustomIcons_order\";s:0:\"\";s:18:\"sfsi_rssIcon_order\";i:1;s:20:\"sfsi_emailIcon_order\";i:2;s:23:\"sfsi_facebookIcon_order\";i:3;s:21:\"sfsi_googleIcon_order\";i:4;s:22:\"sfsi_twitterIcon_order\";i:5;s:20:\"sfsi_shareIcon_order\";i:6;s:22:\"sfsi_youtubeIcon_order\";i:7;s:24:\"sfsi_pinterestIcon_order\";i:8;s:24:\"sfsi_instagramIcon_order\";i:10;s:23:\"sfsi_linkedinIcon_order\";i:9;s:26:\"sfsi_custom_MouseOverTexts\";s:0:\"\";s:23:\"sfsi_custom_social_hide\";s:2:\"no\";}\";', 'yes'),
(380, 'sfsi_section6_options', 's:434:\"a:12:{s:17:\"sfsi_show_Onposts\";s:3:\"yes\";s:22:\"sfsi_icons_postPositon\";s:0:\"\";s:20:\"sfsi_icons_alignment\";s:4:\"left\";s:20:\"sfsi_textBefor_icons\";s:26:\"Please follow and like us:\";s:24:\"sfsi_icons_DisplayCounts\";s:2:\"no\";s:12:\"sfsi_rectsub\";s:3:\"yes\";s:11:\"sfsi_rectfb\";s:3:\"yes\";s:11:\"sfsi_rectgp\";s:3:\"yes\";s:12:\"sfsi_rectshr\";s:2:\"no\";s:13:\"sfsi_recttwtr\";s:3:\"yes\";s:14:\"sfsi_rectpinit\";s:3:\"yes\";s:16:\"sfsi_rectfbshare\";s:2:\"no\";}\";', 'yes'),
(381, 'sfsi_section7_options', 's:526:\"a:13:{s:15:\"sfsi_popup_text\";s:0:\"\";s:27:\"sfsi_popup_background_color\";s:7:\"#ffffff\";s:23:\"sfsi_popup_border_color\";s:7:\"#ffffff\";s:27:\"sfsi_popup_border_thickness\";i:1;s:24:\"sfsi_popup_border_shadow\";s:2:\"no\";s:15:\"sfsi_popup_font\";s:26:\"Helvetica,Arial,sans-serif\";s:19:\"sfsi_popup_fontSize\";i:30;s:20:\"sfsi_popup_fontStyle\";s:0:\"\";s:20:\"sfsi_popup_fontColor\";s:7:\"#000000\";s:17:\"sfsi_Show_popupOn\";s:4:\"none\";s:25:\"sfsi_Show_popupOn_PageIDs\";s:0:\"\";s:14:\"sfsi_Shown_pop\";s:8:\"ETscroll\";s:24:\"sfsi_Shown_popupOnceTime\";i:0;}\";', 'yes'),
(382, 'sfsi_feed_id', 'OU5BZHdtZnpkZitFNkZBWHkzbEdNN0RFNWkzaVp0YXcwKzRjQUJFQ0laM1ZCVllTVzFUemtHdEl4WW80L0o0N0lkSkk0eUlrQlluSXcwelpQTHI4dWNUZmVYL3JvUXVxRzkyOGxXT3pLYWlaVE9xRmlnMUlvVEo3RmpuUFdHOFd8MEx5dnBYeVRhQUl5Y215ZE5Qdityd1pacHBWeWxDajBzQkZXUGs2c295RT0=', 'yes'),
(383, 'sfsi_redirect_url', 'http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/OU5BZHdtZnpkZitFNkZBWHkzbEdNN0RFNWkzaVp0YXcwKzRjQUJFQ0laM1ZCVllTVzFUemtHdEl4WW80L0o0N0lkSkk0eUlrQlluSXcwelpQTHI4dWNUZmVYL3JvUXVxRzkyOGxXT3pLYWlaVE9xRmlnMUlvVEo3RmpuUFdHOFd8MEx5dnBYeVRhQUl5Y215ZE5Qdityd1pacHBWeWxDajBzQkZXUGs2c295RT0=/OA==', 'yes'),
(384, 'sfsi_installDate', '2017-11-28 04:12:31', 'yes'),
(385, 'sfsi_RatingDiv', 'no', 'yes'),
(386, 'sfsi_footer_sec', 'no', 'yes'),
(387, 'sfsi_activate', '0', 'yes'),
(388, 'sfsi_instagram_sf_count', 's:93:\"a:3:{s:4:\"date\";i:1511827200;s:13:\"sfsi_sf_count\";s:0:\"\";s:20:\"sfsi_instagram_count\";s:0:\"\";}\";', 'yes'),
(389, 'widget_sfsi-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(390, 'widget_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(391, 'sfsi_pluginVersion', '1.82', 'yes'),
(392, 'sfsi_serverphpVersionnotification', 'yes', 'yes'),
(393, 'show_premium_notification', 'yes', 'yes'),
(394, 'show_notification', 'yes', 'yes'),
(395, 'show_mobile_notification', 'yes', 'yes'),
(396, 'sfsi_languageNotice', 'yes', 'yes'),
(397, 'sfsi_section8_options', 's:1186:\"a:26:{s:20:\"sfsi_form_adjustment\";s:3:\"yes\";s:16:\"sfsi_form_height\";i:180;s:15:\"sfsi_form_width\";i:230;s:16:\"sfsi_form_border\";s:3:\"yes\";s:26:\"sfsi_form_border_thickness\";i:1;s:22:\"sfsi_form_border_color\";s:7:\"#b5b5b5\";s:20:\"sfsi_form_background\";s:7:\"#ffffff\";s:22:\"sfsi_form_heading_text\";s:22:\"Get new posts by email\";s:22:\"sfsi_form_heading_font\";s:26:\"Helvetica,Arial,sans-serif\";s:27:\"sfsi_form_heading_fontstyle\";s:4:\"bold\";s:27:\"sfsi_form_heading_fontcolor\";s:7:\"#000000\";s:26:\"sfsi_form_heading_fontsize\";i:16;s:27:\"sfsi_form_heading_fontalign\";s:6:\"center\";s:20:\"sfsi_form_field_text\";s:16:\"Enter your email\";s:20:\"sfsi_form_field_font\";s:26:\"Helvetica,Arial,sans-serif\";s:25:\"sfsi_form_field_fontstyle\";s:6:\"normal\";s:25:\"sfsi_form_field_fontcolor\";s:0:\"\";s:24:\"sfsi_form_field_fontsize\";i:14;s:25:\"sfsi_form_field_fontalign\";s:6:\"center\";s:21:\"sfsi_form_button_text\";s:9:\"Subscribe\";s:21:\"sfsi_form_button_font\";s:26:\"Helvetica,Arial,sans-serif\";s:26:\"sfsi_form_button_fontstyle\";s:4:\"bold\";s:26:\"sfsi_form_button_fontcolor\";s:7:\"#000000\";s:25:\"sfsi_form_button_fontsize\";i:16;s:26:\"sfsi_form_button_fontalign\";s:6:\"center\";s:27:\"sfsi_form_button_background\";s:7:\"#dedede\";}\";', 'yes'),
(398, 'sfsi_verificatiom_code', 'CLvwCKXLdxLfjTFSkTdd', 'yes'),
(399, 'adding_tags', 'yes', 'yes'),
(435, 'fancybox_enableImg', '1', 'yes'),
(436, 'fancybox_enableInline', '', 'yes'),
(437, 'fancybox_enablePDF', '', 'yes'),
(438, 'fancybox_enableSWF', '', 'yes'),
(439, 'fancybox_enableSVG', '', 'yes'),
(440, 'fancybox_enableYoutube', '', 'yes'),
(441, 'fancybox_enableVimeo', '', 'yes'),
(442, 'fancybox_enableDailymotion', '', 'yes'),
(443, 'fancybox_enableiFrame', '', 'yes'),
(444, 'fancybox_overlayShow', '1', 'yes'),
(445, 'fancybox_hideOnOverlayClick', '1', 'yes'),
(446, 'fancybox_overlayOpacity', '', 'yes'),
(447, 'fancybox_overlayColor', '', 'yes'),
(448, 'fancybox_overlaySpotlight', '', 'yes'),
(449, 'fancybox_showCloseButton', '1', 'yes'),
(450, 'fancybox_backgroundColor', '', 'yes'),
(451, 'fancybox_textColor', '', 'yes'),
(452, 'fancybox_titleColor', '', 'yes'),
(453, 'fancybox_paddingColor', '', 'yes'),
(454, 'fancybox_borderRadius', '', 'yes');
INSERT INTO `wd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(455, 'fancybox_width', '660', 'yes'),
(456, 'fancybox_height', '440', 'yes'),
(457, 'fancybox_padding', '5', 'yes'),
(458, 'fancybox_margin', '20', 'yes'),
(459, 'fancybox_centerOnScroll', '1', 'yes'),
(460, 'fancybox_enableEscapeButton', '1', 'yes'),
(461, 'fancybox_autoScale', '1', 'yes'),
(462, 'fancybox_speedIn', '', 'yes'),
(463, 'fancybox_speedOut', '', 'yes'),
(464, 'fancybox_autoClick', '1', 'yes'),
(465, 'fancybox_delayClick', '1000', 'yes'),
(466, 'fancybox_compatIE8', '', 'yes'),
(467, 'fancybox_metaData', '', 'yes'),
(468, 'fancybox_autoAttribute', '.jpg .jpeg .png .webp', 'yes'),
(469, 'fancybox_autoAttributeLimit', '', 'yes'),
(470, 'fancybox_classType', '', 'yes'),
(471, 'fancybox_transitionIn', 'elastic', 'yes'),
(472, 'fancybox_easingIn', 'easeOutBack', 'yes'),
(473, 'fancybox_transitionOut', 'elastic', 'yes'),
(474, 'fancybox_easingOut', 'easeInBack', 'yes'),
(475, 'fancybox_opacity', '', 'yes'),
(476, 'fancybox_hideOnContentClick', '', 'yes'),
(477, 'fancybox_titleShow', '1', 'yes'),
(478, 'fancybox_titlePosition', 'over', 'yes'),
(479, 'fancybox_titleFromAlt', '1', 'yes'),
(480, 'fancybox_autoGallery', '1', 'yes'),
(481, 'fancybox_showNavArrows', '1', 'yes'),
(482, 'fancybox_enableKeyboardNav', '1', 'yes'),
(483, 'fancybox_mouseWheel', '1', 'yes'),
(484, 'fancybox_cyclic', '', 'yes'),
(485, 'fancybox_changeSpeed', '', 'yes'),
(486, 'fancybox_changeFade', '', 'yes'),
(487, 'fancybox_autoSelector', 'div.gallery', 'yes'),
(537, 'tadv_settings', 'a:6:{s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"options\";s:15:\"menubar,advlist\";s:7:\"plugins\";s:13:\"table,advlist\";}', 'yes'),
(538, 'tadv_admin_settings', 'a:2:{s:7:\"options\";s:8:\"no_autop\";s:16:\"disabled_editors\";s:0:\"\";}', 'yes'),
(539, 'tadv_version', '4000', 'yes'),
(658, 'ossdl_off_cdn_url', 'http://ns6.inleed.net/~beirutbist', 'yes'),
(659, 'ossdl_off_blog_url', 'http://ns6.inleed.net/~beirutbist', 'yes'),
(660, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(661, 'ossdl_off_exclude', '.php', 'yes'),
(662, 'ossdl_cname', '', 'yes'),
(668, 'wpsupercache_start', '1513064531', 'yes'),
(669, 'wpsupercache_count', '0', 'yes'),
(670, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1519203700;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}s:7:\"wpcache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}}', 'yes'),
(710, 'wpsupercache_gc_time', '1524151638', 'yes'),
(730, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(811, 'WPLANG', '', 'yes'),
(812, 'new_admin_email', 'vasilenko75@gmail.com', 'yes'),
(850, 'wpsc_feed_list', 'a:0:{}', 'yes'),
(1047, 'aj_enabled', '1', 'yes'),
(1048, 'aj_method', 'defer', 'yes'),
(1049, 'aj_jquery', 'exclude', 'yes'),
(1050, 'aj_exclusions', '', 'yes'),
(1051, 'aj_autoptimize_enabled', '1', 'yes'),
(1052, 'aj_autoptimize_method', 'defer', 'yes'),
(1117, 'menu_category_children', 'a:0:{}', 'yes'),
(1126, 'wpca_en', '{\"alert_message\":\"We use cookies to ensure that we give you the best experience on our website.\",\"alert_txt_color\":\"#000\",\"box_bg_color\":\"rgba(255,255,255,0.85)\",\"box_position\":\"bottom_fixed\",\"use_tag\":\"\",\"more_link_title\":\"More about our cookies\",\"more_link_url\":\"\",\"more_link_color\":\"#FFCC00\",\"ok_title\":\"Ok\",\"ok_bg_color\":\"#670017\",\"ok_txt_color\":\"#FFFFFF\"}', 'yes'),
(1206, 'tar_id', '308', 'yes'),
(1292, 'w3tc_nr_application_id', '{\"d41d8cd98f00b204e9800998ecf8427e\":0}', 'yes'),
(1293, 'w3tc_state', '{\"common.install\":1515591227,\"minify.hide_minify_help\":true,\"common.show_note.flush_posts_needed\":true,\"common.show_note.flush_posts_needed.timestamp\":1515592416,\"minify.show_note.need_flush\":true,\"minify.show_note.need_flush.timestamp\":1515591776}', 'no'),
(1296, 'w3tc_generic_widgetservices', '{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"expires\":1516196028}', 'no'),
(1313, 'w3tc_minify', '{\"865e7.js\":[\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/js\\/jquery.bxslider.min.js\",\"wp-content\\/plugins\\/owl-carousel\\/js\\/owl.carousel.js\",\"wp-content\\/plugins\\/owl-carousel\\/js\\/script.js\"],\"a0a8b.js\":[\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/js\\/jquery.svg.min.js\",\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/js\\/custom.js\",\"wp-content\\/themes\\/webdom\\/js\\/navigation.js\"],\"1acd0.js\":[\"wp-content\\/themes\\/webdom\\/builder\\/build\\/js\\/main.js\",\"wp-content\\/themes\\/webdom\\/js\\/skip-link-focus-fix.js\",\"wp-content\\/themes\\/webdom\\/builder\\/build\\/js\\/custom.js\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/js\\/core.js\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/js\\/transition.js\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/js\\/background.js\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/js\\/background.init.js\",\"wp-content\\/themes\\/webdom\\/framework-customizations\\/extensions\\/shortcodes\\/shortcodes\\/show-menu\\/static\\/js\\/scripts.js\"],\"21ec1.js\":[\"wp-includes\\/js\\/underscore.min.js\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/map\\/static\\/js\\/scripts.js\",\"wp-includes\\/js\\/wp-embed.min.js\"],\"354a6.css\":[\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/css\\/jquery.bxslider.min.css\",\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/css\\/custom.css\",\"wp-content\\/plugins\\/wp-cookies-alert\\/style.css\",\"wp-content\\/themes\\/webdom\\/style.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/builder\\/static\\/css\\/frontend-grid.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/forms\\/static\\/css\\/frontend.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/css\\/background.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/css\\/styles.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/special-heading\\/static\\/css\\/styles.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/map\\/static\\/css\\/styles.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/owl.carousel.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/owl.theme.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/owl.transitions.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/styles.css\"],\"4a47c.js\":[\"wp-includes\\/js\\/admin-bar.min.js\",\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/js\\/jquery.svg.min.js\",\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/js\\/custom.js\",\"wp-content\\/themes\\/webdom\\/js\\/navigation.js\"],\"69ce7.css\":[\"wp-includes\\/css\\/dashicons.min.css\",\"wp-includes\\/css\\/admin-bar.min.css\",\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/css\\/jquery.bxslider.min.css\",\"wp-content\\/plugins\\/lanars-tripadvisor-reviews\\/assets\\/css\\/custom.css\",\"wp-content\\/plugins\\/wp-cookies-alert\\/style.css\",\"wp-content\\/themes\\/webdom\\/style.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/builder\\/static\\/css\\/frontend-grid.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/forms\\/static\\/css\\/frontend.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/css\\/background.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/section\\/static\\/css\\/styles.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/special-heading\\/static\\/css\\/styles.css\",\"wp-content\\/plugins\\/unyson\\/framework\\/extensions\\/shortcodes\\/shortcodes\\/map\\/static\\/css\\/styles.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/owl.carousel.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/owl.theme.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/owl.transitions.css\",\"wp-content\\/plugins\\/owl-carousel\\/css\\/styles.css\"]}', 'no'),
(1481, 'sm_rewrite_done', '$Id: sitemap-loader.php 937300 2014-06-23 18:04:11Z arnee $', 'yes'),
(1482, 'wpseo', 'a:25:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"6.3.1\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:20:\"enable_setting_pages\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1515755030;}', 'yes'),
(1483, 'wpseo_permalinks', 'a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:0;s:13:\"trailingslash\";b:0;}', 'yes'),
(1484, 'wpseo_titles', 'a:65:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:18:\"title-owl-carousel\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-owl-carousel\";s:0:\"\";s:20:\"noindex-owl-carousel\";b:0;s:21:\"showdate-owl-carousel\";b:0;s:24:\"hideeditbox-owl-carousel\";b:0;s:16:\"title-restaurant\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-restaurant\";s:0:\"\";s:18:\"noindex-restaurant\";b:0;s:19:\"showdate-restaurant\";b:0;s:22:\"hideeditbox-restaurant\";b:0;s:26:\"title-ptarchive-restaurant\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:29:\"metadesc-ptarchive-restaurant\";s:0:\"\";s:28:\"bctitle-ptarchive-restaurant\";s:0:\"\";s:28:\"noindex-ptarchive-restaurant\";b:0;s:18:\"title-tax-Carousel\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-Carousel\";s:0:\"\";s:24:\"hideeditbox-tax-Carousel\";b:0;s:20:\"noindex-tax-Carousel\";b:0;s:23:\"title-tax-menu_category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-tax-menu_category\";s:0:\"\";s:29:\"hideeditbox-tax-menu_category\";b:0;s:25:\"noindex-tax-menu_category\";b:0;}', 'yes'),
(1485, 'wpseo_social', 'a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"144b153a7b78c0aacf94854b39f39984\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(1486, 'wpseo_rss', 'a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";}', 'yes'),
(1487, 'wpseo_internallinks', 'a:14:{s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:23:\"post_types-post-maintax\";i:0;s:31:\"post_types-owl-carousel-maintax\";i:0;s:29:\"post_types-restaurant-maintax\";i:0;s:26:\"taxonomy-Carousel-ptparent\";i:0;s:31:\"taxonomy-menu_category-ptparent\";i:0;}', 'yes'),
(1488, 'wpseo_xml', 'a:20:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:31:\"user_role-editor-not_in_sitemap\";b:0;s:31:\"user_role-author-not_in_sitemap\";b:0;s:36:\"user_role-contributor-not_in_sitemap\";b:0;s:35:\"user_role-subscriber-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:38:\"post_types-owl-carousel-not_in_sitemap\";b:0;s:36:\"post_types-restaurant-not_in_sitemap\";b:0;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;s:34:\"taxonomies-Carousel-not_in_sitemap\";b:0;s:39:\"taxonomies-menu_category-not_in_sitemap\";b:0;}', 'yes'),
(1489, 'wpseo_flush_rewrite', '1', 'yes'),
(1490, '_transient_timeout_wpseo_link_table_inaccessible', '1547291030', 'no'),
(1491, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(1492, '_transient_timeout_wpseo_meta_table_inaccessible', '1547291030', 'no'),
(1493, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(1502, 'wpseo_sitemap_1_cache_validator', '3ljaC', 'no'),
(1503, 'wpseo_sitemap_page_cache_validator', '3VSnd', 'no'),
(1505, 'sm_options', 'a:52:{s:18:\"sm_b_prio_provider\";s:41:\"GoogleSitemapGeneratorPrioByCountProvider\";s:9:\"sm_b_ping\";b:1;s:10:\"sm_b_stats\";b:0;s:12:\"sm_b_pingmsn\";b:1;s:12:\"sm_b_autozip\";b:1;s:11:\"sm_b_memory\";s:0:\"\";s:9:\"sm_b_time\";i:-1;s:18:\"sm_b_style_default\";b:1;s:10:\"sm_b_style\";s:0:\"\";s:12:\"sm_b_baseurl\";s:0:\"\";s:11:\"sm_b_robots\";b:1;s:9:\"sm_b_html\";b:1;s:12:\"sm_b_exclude\";a:0:{}s:17:\"sm_b_exclude_cats\";a:0:{}s:10:\"sm_in_home\";b:1;s:11:\"sm_in_posts\";b:1;s:15:\"sm_in_posts_sub\";b:0;s:11:\"sm_in_pages\";b:1;s:10:\"sm_in_cats\";b:0;s:10:\"sm_in_arch\";b:0;s:10:\"sm_in_auth\";b:0;s:10:\"sm_in_tags\";b:0;s:9:\"sm_in_tax\";a:0:{}s:17:\"sm_in_customtypes\";a:0:{}s:13:\"sm_in_lastmod\";b:1;s:10:\"sm_cf_home\";s:5:\"daily\";s:11:\"sm_cf_posts\";s:7:\"monthly\";s:11:\"sm_cf_pages\";s:6:\"weekly\";s:10:\"sm_cf_cats\";s:6:\"weekly\";s:10:\"sm_cf_auth\";s:6:\"weekly\";s:15:\"sm_cf_arch_curr\";s:5:\"daily\";s:14:\"sm_cf_arch_old\";s:6:\"yearly\";s:10:\"sm_cf_tags\";s:6:\"weekly\";s:10:\"sm_pr_home\";d:1;s:11:\"sm_pr_posts\";d:0.59999999999999997779553950749686919152736663818359375;s:15:\"sm_pr_posts_min\";d:0.200000000000000011102230246251565404236316680908203125;s:11:\"sm_pr_pages\";d:0.59999999999999997779553950749686919152736663818359375;s:10:\"sm_pr_cats\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_arch\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_auth\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_tags\";d:0.299999999999999988897769753748434595763683319091796875;s:12:\"sm_i_donated\";b:0;s:17:\"sm_i_hide_donated\";b:0;s:17:\"sm_i_install_date\";i:1515755852;s:16:\"sm_i_hide_survey\";b:0;s:14:\"sm_i_hide_note\";b:0;s:15:\"sm_i_hide_works\";b:0;s:16:\"sm_i_hide_donors\";b:0;s:9:\"sm_i_hash\";s:20:\"c1d0564aeab904c0cd36\";s:13:\"sm_i_lastping\";i:1518599483;s:16:\"sm_i_supportfeed\";b:1;s:22:\"sm_i_supportfeed_cache\";i:1524151648;}', 'yes'),
(1506, 'sm_status', 'O:28:\"GoogleSitemapGeneratorStatus\":4:{s:39:\"\0GoogleSitemapGeneratorStatus\0startTime\";d:1518599482.9985721111297607421875;s:37:\"\0GoogleSitemapGeneratorStatus\0endTime\";d:1518599483.4029219150543212890625;s:41:\"\0GoogleSitemapGeneratorStatus\0pingResults\";a:2:{s:6:\"google\";a:5:{s:9:\"startTime\";d:1518599483.00002288818359375;s:7:\"endTime\";d:1518599483.1914389133453369140625;s:7:\"success\";b:1;s:3:\"url\";s:103:\"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Fns6.inleed.net/~beirutbist%2Fsitemap.xml\";s:4:\"name\";s:6:\"Google\";}s:4:\"bing\";a:5:{s:9:\"startTime\";d:1518599483.192913055419921875;s:7:\"endTime\";d:1518599483.4001560211181640625;s:7:\"success\";b:1;s:3:\"url\";s:96:\"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Fns6.inleed.net/~beirutbist%2Fsitemap.xml\";s:4:\"name\";s:4:\"Bing\";}}s:38:\"\0GoogleSitemapGeneratorStatus\0autoSave\";b:1;}', 'no'),
(1524, 'wpsmy_combine_js', 'on', 'yes'),
(1525, 'wpsmy_combine_css', 'on', 'yes'),
(1531, 'fastvelocity_min_blacklist', '/html5shiv.js\n/excanvas.js\n/avada-ie9.js\n/respond.js\n/respond.min.js\n/selectivizr.js\n/Avada/assets/css/ie.css\n/html5.js\n/IE9.js\n/fusion-ie9.js\n/vc_lte_ie9.min.css\n/old-ie.css\n/ie.css\n/vc-ie8.min.css\n/mailchimp-for-wp/assets/js/third-party/placeholders.min.js\n/assets/js/plugins/wp-enqueue/min/webfontloader.js\n/a.optnmstr.com/app/js/api.min.js', 'yes'),
(1532, 'fastvelocity_min_ignorelist', '/Avada/assets/js/main.min.js\n/woocommerce-product-search/js/product-search.js\n/includes/builder/scripts/frontend-builder-scripts.js\n/assets/js/jquery.themepunch.tools.min.js', 'yes'),
(1535, 'fvm_transient_keys', 'a:0:{}', 'yes'),
(1605, 'fvm-last-cache-update', '1515761238', 'yes'),
(1663, 'wpabtf_version', '2.9.2', 'no'),
(1667, 'abtf_webfontjs_version', '1.6.28', 'yes'),
(1668, 'abovethefold_notices', 'a:0:{}', 'no'),
(1671, 'autoptimize_version', '2.3.0', 'yes'),
(1687, 'autoptimize_html', '', 'yes'),
(1688, 'autoptimize_html_keepcomments', '', 'yes'),
(1689, 'autoptimize_js', '', 'yes'),
(1690, 'autoptimize_js_exclude', 'seal.js, js/jquery/jquery.js', 'yes'),
(1691, 'autoptimize_js_trycatch', '', 'yes'),
(1692, 'autoptimize_js_justhead', '', 'yes'),
(1693, 'autoptimize_js_forcehead', '', 'yes'),
(1694, 'autoptimize_js_include_inline', '', 'yes'),
(1695, 'autoptimize_css', '', 'yes'),
(1696, 'autoptimize_css_exclude', 'admin-bar.min.css, dashicons.min.css', 'yes'),
(1697, 'autoptimize_css_justhead', '', 'yes'),
(1698, 'autoptimize_css_datauris', '', 'yes'),
(1699, 'autoptimize_css_defer', '', 'yes'),
(1700, 'autoptimize_css_defer_inline', '', 'yes'),
(1701, 'autoptimize_css_inline', '', 'yes'),
(1702, 'autoptimize_css_include_inline', 'on', 'yes'),
(1703, 'autoptimize_cdn_url', '', 'yes'),
(1704, 'autoptimize_cache_clean', '0', 'yes'),
(1705, 'autoptimize_cache_nogzip', 'on', 'yes'),
(1706, 'autoptimize_show_adv', '1', 'yes'),
(1707, 'autoptimize_optimize_logged', 'on', 'yes'),
(1708, 'autoptimize_optimize_checkout', '', 'yes'),
(1839, 'wpseo_sitemap_204_cache_validator', '6fN54', 'no'),
(1840, 'wpseo_sitemap_Carousel_cache_validator', '6brgu', 'no'),
(1841, 'wpseo_sitemap_221_cache_validator', '6fN58', 'no'),
(1842, 'wpseo_sitemap_225_cache_validator', '6fN5a', 'no'),
(1843, 'wpseo_sitemap_222_cache_validator', '6fN5c', 'no'),
(1844, 'wpseo_sitemap_220_cache_validator', '6fN5e', 'no'),
(1845, 'wpseo_sitemap_219_cache_validator', '6fN5g', 'no'),
(1846, 'wpseo_sitemap_218_cache_validator', '6fN5i', 'no'),
(1847, 'wpseo_sitemap_217_cache_validator', '6fN5k', 'no'),
(1848, 'wpseo_sitemap_216_cache_validator', '6fN5m', 'no'),
(1849, 'wpseo_sitemap_215_cache_validator', '6fN5o', 'no'),
(1850, 'wpseo_sitemap_214_cache_validator', '6fN5q', 'no'),
(1878, 'wpseo_sitemap_291_cache_validator', '6brgs', 'no'),
(1891, 'wpseo_sitemap_post_cache_validator', '3ljaD', 'no'),
(1958, 'wpseo_sitemap_menu_category_cache_validator', 'cPlR', 'no'),
(1959, 'wpseo_sitemap_restaurant_cache_validator', 'cPlT', 'no'),
(2011, 'wpseo_sitemap_cache_validator_global', '3n1LK', 'no'),
(2092, 'ari_adminer', '1.1.9', 'yes'),
(2093, 'ari_adminer_settings', 'a:5:{s:5:\"theme\";s:4:\"flat\";s:4:\"mode\";s:7:\"adminer\";s:5:\"roles\";a:0:{}s:14:\"stop_on_logout\";b:1;s:15:\"show_quick_icon\";b:0;}', 'yes'),
(2168, 'wpseo_sitemap_68_cache_validator', '3o8b8', 'no'),
(2169, 'wpseo_sitemap_73_cache_validator', '3o8ba', 'no'),
(2173, 'wpseo_sitemap_253_cache_validator', 'fzn1', 'no'),
(2174, 'wpseo_sitemap_254_cache_validator', 'fzn3', 'no'),
(2175, 'wpseo_sitemap_263_cache_validator', 'fzn6', 'no'),
(2176, 'wpseo_sitemap_264_cache_validator', 'fzn8', 'no'),
(2177, 'wpseo_sitemap_265_cache_validator', '3oDoT', 'no'),
(2178, 'wpseo_sitemap_267_cache_validator', '3oDoW', 'no'),
(2473, '_site_transient_timeout_theme_roots', '1524153440', 'no'),
(2474, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:6:\"webdom\";s:7:\"/themes\";}', 'no'),
(2476, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1524151645;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(2477, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524151646;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:6:\"webdom\";s:5:\"1.0.0\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(2478, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1524151647;s:7:\"checked\";a:14:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:27:\"ari-adminer/ari-adminer.php\";s:5:\"1.1.9\";s:27:\"autoptimize/autoptimize.php\";s:5:\"2.3.2\";s:38:\"carbon-fields/carbon-fields-plugin.php\";s:5:\"1.6.0\";s:36:\"google-sitemap-generator/sitemap.php\";s:5:\"4.0.9\";s:9:\"hello.php\";s:3:\"1.6\";s:34:\"minify-html-markup/minify-html.php\";s:4:\"1.98\";s:28:\"owl-carousel/owlcarousel.php\";s:5:\"0.5.3\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"4.6.7\";s:50:\"lanars-tripadvisor-reviews/tripadvisor-reviews.php\";s:3:\"1.0\";s:17:\"unyson/unyson.php\";s:6:\"2.7.12\";s:25:\"wp-cookies-alert/wpca.php\";s:5:\"1.1.1\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.5.9\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"6.3.1\";}s:8:\"response\";a:3:{s:27:\"ari-adminer/ari-adminer.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/ari-adminer\";s:4:\"slug\";s:11:\"ari-adminer\";s:6:\"plugin\";s:27:\"ari-adminer/ari-adminer.php\";s:11:\"new_version\";s:6:\"1.1.10\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ari-adminer/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ari-adminer.1.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ari-adminer/assets/icon-256x256.png?rev=1558811\";s:2:\"1x\";s:64:\"https://ps.w.org/ari-adminer/assets/icon-128x128.png?rev=1558811\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/ari-adminer/assets/banner-772x250.jpg?rev=1558800\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:46:\"<ul>\n<li>Update Adminer to v. 4.6.2</li>\n</ul>\";s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:5:\"2.3.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/autoptimize.2.3.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.jpg?rev=1836026\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:3:\"7.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wordpress-seo.7.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:38:\"carbon-fields/carbon-fields-plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/carbon-fields\";s:4:\"slug\";s:13:\"carbon-fields\";s:6:\"plugin\";s:38:\"carbon-fields/carbon-fields-plugin.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/carbon-fields/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/carbon-fields.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/carbon-fields/assets/icon-256x256.jpg?rev=1340610\";s:2:\"1x\";s:66:\"https://ps.w.org/carbon-fields/assets/icon-128x128.jpg?rev=1340610\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/carbon-fields/assets/banner-1544x500.png?rev=1703160\";s:2:\"1x\";s:68:\"https://ps.w.org/carbon-fields/assets/banner-772x250.png?rev=1703160\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"google-sitemap-generator/sitemap.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/google-sitemap-generator\";s:4:\"slug\";s:24:\"google-sitemap-generator\";s:6:\"plugin\";s:36:\"google-sitemap-generator/sitemap.php\";s:11:\"new_version\";s:5:\"4.0.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-256x256.png?rev=1701944\";s:2:\"1x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-128x128.png?rev=1701944\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/google-sitemap-generator/assets/banner-772x250.png?rev=1701944\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"minify-html-markup/minify-html.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/minify-html-markup\";s:4:\"slug\";s:18:\"minify-html-markup\";s:6:\"plugin\";s:34:\"minify-html-markup/minify-html.php\";s:11:\"new_version\";s:4:\"1.98\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/minify-html-markup/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/minify-html-markup.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/minify-html-markup/assets/icon-128x128.png?rev=1354357\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/minify-html-markup/assets/banner-1544x500.png?rev=1354339\";s:2:\"1x\";s:73:\"https://ps.w.org/minify-html-markup/assets/banner-772x250.png?rev=1354339\";}s:11:\"banners_rtl\";a:0:{}}s:28:\"owl-carousel/owlcarousel.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/owl-carousel\";s:4:\"slug\";s:12:\"owl-carousel\";s:6:\"plugin\";s:28:\"owl-carousel/owlcarousel.php\";s:11:\"new_version\";s:5:\"0.5.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/owl-carousel/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/owl-carousel.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/owl-carousel/assets/icon-256x256.png?rev=1434595\";s:2:\"1x\";s:65:\"https://ps.w.org/owl-carousel/assets/icon-128x128.png?rev=1434595\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/owl-carousel/assets/banner-772x250.png?rev=1434595\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.6.7\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"unyson/unyson.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/unyson\";s:4:\"slug\";s:6:\"unyson\";s:6:\"plugin\";s:17:\"unyson/unyson.php\";s:11:\"new_version\";s:6:\"2.7.12\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/unyson/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/unyson.2.7.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/unyson/assets/icon-256x256.jpg?rev=1034261\";s:2:\"1x\";s:59:\"https://ps.w.org/unyson/assets/icon-128x128.jpg?rev=1034260\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/unyson/assets/banner-1544x500.png?rev=1034271\";s:2:\"1x\";s:61:\"https://ps.w.org/unyson/assets/banner-772x250.png?rev=1034270\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"wp-cookies-alert/wpca.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-cookies-alert\";s:4:\"slug\";s:16:\"wp-cookies-alert\";s:6:\"plugin\";s:25:\"wp-cookies-alert/wpca.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-cookies-alert/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-cookies-alert.1.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:60:\"https://s.w.org/plugins/geopattern-icon/wp-cookies-alert.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.5.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.5.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2479, '_transient_timeout_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', '1524756448', 'no');
INSERT INTO `wd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2480, '_transient_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:371:\"\n\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n			\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n							\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WordPress.org Forums » [Google XML Sitemaps] Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/plugin/google-sitemap-generator/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Apr 2018 15:16:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://bbpress.org/?v=2.6-alpha-6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:30:{i:0;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/google-xml-sitemap-wpseo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Google XML Sitemap + wpSEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/google-xml-sitemap-wpseo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Apr 2018 08:45:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:427:\"\n						\n						<p>Replies: 0</p>\n						<p>Hello,</p>\n<p>Google XMK Sitemap does not work with wpSEO, a famous SEO-Plugin. It can mark posts or pages with &#8220;noindex, nofollow&#8221;, but they still appear in the generated sitemap. </p>\n<p>I&#8217;ve made the effort to exclude those posts in the BuildPosts()-function. Is there ano official way to contribute it to this plugin? </p>\n<p>Thanks,<br />\nAndreas</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"agreif84\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/support/topic/custom-posts-into-a-single-xml-file/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Custom Posts into a single xml file\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/support/topic/custom-posts-into-a-single-xml-file/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Apr 2018 14:00:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:301:\"\n						\n						<p>Replies: 0</p>\n						<p>Custom posts are being entered one at a time at the top level of the sitemap.  I would prefer them to be entered into a folder where all my custom posts would live in the XML file similar to pages.  One folder for each unique custom post type.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"rick9004\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.org/support/topic/add-a-xml-sitemap-manually/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Add a xml sitemap manually\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.org/support/topic/add-a-xml-sitemap-manually/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Apr 2018 10:38:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:260:\"\n						\n						<p>Replies: 1</p>\n						<p>Hello everybody, is it possible to add a .xml sitemap manually to the existing sitemaps or to manipulate the existing sitemaps and insert some .xml code in the sitemap-misc.xml ? Thanks for your efforts</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"msarman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/empty-sitemap-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Empty sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/empty-sitemap-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Apr 2018 08:15:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:581:\"\n						\n						<p>Replies: 2</p>\n						<p>Quite a recent change, my sitemap files now appears as empty in google search console ( i have x2 because of different languages).</p>\n<p>If i request the file by clicking on the link (mysite/sitemap.xml.gz or mysite/sitemap.xml) the sitemap shows correctly. If i create manually the file from this link it works.</p>\n<p>But if i only give the link to google then it fails with empty sitemap 🙁<br />\nIt always worked. A recent change was to migrate to PHP 7.2 but i&#8217;m not sure it comes from this. What is going on?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"herrvigg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/support/topic/is-it-possible-to-generate-an-all-in-one-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Is it possible to generate an all-in-one sitemap?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/support/topic/is-it-possible-to-generate-an-all-in-one-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Apr 2018 05:16:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:140:\"\n						\n						<p>Replies: 1</p>\n						<p>I&#8217;d rather to have a simple sitemap file contains all links, is it possible?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Edward\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wordpress.org/support/topic/how-i-can-exclude-html-pages-from-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"how i can exclude html pages from sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wordpress.org/support/topic/how-i-can-exclude-html-pages-from-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 06:52:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:419:\"\n						\n						<p>Replies: 1</p>\n						<p>hey.<br />\nthanks for your plugin.</p>\n<p>i made a many html pages without using wordpress. and they have noindex tag.</p>\n<p>now i don&#8217;t know how this plugin listed these pages in sitemap.</p>\n<p>i have many error with this subject &#8220;Submitted URL marked ‘noindex’&#8221;.</p>\n<p>please help me how i can exclude them from sitemap.</p>\n<p>thanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Fara-marZ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/support/topic/google-says-my-sitemap-shows-as-an-html/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Google says my sitemap shows as an html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/support/topic/google-says-my-sitemap-shows-as-an-html/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 28 Mar 2018 23:03:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"\n						\n						<p>Replies: 3</p>\n						<p>Google says this is an html sitemap</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"jtnkkm\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/support/topic/error-in-xml-sitemap-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Error in xml sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/support/topic/error-in-xml-sitemap-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 25 Mar 2018 08:24:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:414:\"\n						\n						<p>Replies: 1</p>\n						<p>Hello</p>\n<p>I have installed google sitemap generator plugin in my website.</p>\n<p>But getting below error so please advise me what&#8217;s going wrong with this plugin.</p>\n<p><strong>error on line 3 at column 6: XML declaration allowed only at the start of the document</strong></p>\n<p>I know there is white space before xml tag but how can i remove it.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"nayanparmar\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/topic/will-there-be-an-update-soon-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Will there be an update soon?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/topic/will-there-be-an-update-soon-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Mar 2018 02:18:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:369:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi,<br />\nI am writing reviews on Sitemap tools for WordPress and articles on which plugins to use for WordPress SEO. As much as I liked to consider your Plugin in my review &#8211; it has not been updated for a while.<br />\nTherefore I was wondering if it was still actively being developed.<br />\nKind Regards</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Online-marketing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wordpress.org/support/topic/my-sitemap-shows-like-a-html/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"My Sitemap shows like a html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wordpress.org/support/topic/my-sitemap-shows-like-a-html/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Mar 2018 11:16:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"\n						\n						<p>Replies: 6</p>\n						<p>The sitemap generated is not valid</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"jakobiaa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/support/topic/plugin-does-not-show-me-the-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Plugin does not show me the Sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/support/topic/plugin-does-not-show-me-the-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Mar 2018 11:42:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:422:\"\n						\n						<p>Replies: 3</p>\n						<p>Good morning. </p>\n<p>Since a few days ago the plugin does not show me the Sitemap as before, it does it in text format. I leave you the url so you can see and check it. </p>\n<p><a href=\"http://laradiofrecuenciafacial.es/sitemap.xml\" rel=\"nofollow\">http://laradiofrecuenciafacial.es/sitemap.xml</a></p>\n<p>How can I fix this? Thank you very much.</p>\n<p>A greeting</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"michelsegovia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wordpress.org/support/topic/noindex-error-in-google-search-console/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"&amp;#8220;noindex&amp;#8221; error in Google Search Console\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wordpress.org/support/topic/noindex-error-in-google-search-console/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Mar 2018 08:15:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:453:\"\n						\n						<p>Replies: 21</p>\n						<p>Hallo and greetings from Germany! Google Search Console shows me a &#8220;noindex&#8221;error for<br />\n<a href=\"https://metallbau-nielsen-sylt.de/sitemap.html\" rel=\"nofollow\">https://metallbau-nielsen-sylt.de/sitemap.html</a>, it started in February the 25, i changeed nothing. I also use Yoast Seo, but i deactivated the Sitemap there. Any Idea what the Problem could be? Thank you very much!</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"annoy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/support/topic/private-pages-are-showing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Private Pages are showing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/support/topic/private-pages-are-showing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Mar 2018 00:18:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:172:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi guys,</p>\n<p>Is possible to disable the option to not include the private pages in the XML SiteMap.</p>\n<p>Thks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"algvictor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://wordpress.org/support/topic/google-xml-sitemaps-showing-error-on-line-42-at-column-6-xml-declaration-allowe/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"Google XML Sitemaps showing error on line 42 at column 6: XML declaration allowe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://wordpress.org/support/topic/google-xml-sitemaps-showing-error-on-line-42-at-column-6-xml-declaration-allowe/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2018 12:40:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:567:\"\n						\n						<p>Replies: 0</p>\n						<p>I am using wordpress 4.8 version and installed Google XML Sitemaps plugin for generating sitemap.</p>\n<p>But it showing error :<br />\nThis page contains the following errors:<br />\nerror on line 42 at column 6: XML declaration allowed only at the start of the document<br />\nBelow is a rendering of the page up to the first error.</p>\n<p>I have tried all the possibilities like space removal from function.php, php tag end issue etc.<br />\nBut its not resolved yet.</p>\n<p>Please help me as soon as possible. </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"testeuphern\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wordpress.org/support/topic/no-sitemap-found-message-seen-at-the-sitemap-xml-file/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:196:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;&amp;#8220;No sitemap found&amp;#8221; message seen at the sitemap.xml file\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wordpress.org/support/topic/no-sitemap-found-message-seen-at-the-sitemap-xml-file/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Mar 2018 12:58:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:398:\"\n						\n						<p>Replies: 1</p>\n						<p>I have newly installed Google XML Sitemaps plugin. </p>\n<p>The sitemap.xml page shows the error: No sitemap found. Maybe it&#8217;s being generated. Please try again later.</p>\n<p>I had Yoast plugin installed earlier, but I have deleted it right now, to check with this issue. </p>\n<p>I would really appreciate any help or pointers. Thanks.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"tanushree42\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/showing-white-blank-page/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Showing White Blank Page\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/showing-white-blank-page/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Mar 2018 11:47:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:170:\"\n						\n						<p>Replies: 0</p>\n						<p>Showing only white bank pages. XML code found in source code. Checked with disabling yoast also. Please help me.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"sankar789\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/support/topic/noindex-nofollow-error-in-google-web-master-tool/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Noindex, nofollow error in google web master tool\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/support/topic/noindex-nofollow-error-in-google-web-master-tool/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Mar 2018 07:22:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:606:\"\n						\n						<p>Replies: 2</p>\n						<p>today, I got warning message that my blog has new index coverage issue. </p>\n<p>Message says &#8220;Search Console has identified that your site is affected by 1 new Index coverage related issue. This means that Index coverage may be negatively affected in Google Search results. We encourage you to review and consider fixing this issue&#8221; when I went into deep it shows that sitemap.html is the issue. In this it shows noindex and nofollow. I have checked &#8220;the button &#8220;Include Sitemap in HTML format&#8221;. Should I uncheck this?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"hisureshkumar\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/support/topic/issues-with-google-web-master-tools/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Issues with Google Web Master Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/support/topic/issues-with-google-web-master-tools/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Mar 2018 03:16:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi Guys,</p>\n<p>In my Website i promote a lot of pages (job listings) every week we deleted the old jobs and create it a new ones, but i saw that the site maps continue sending to Google the old Urls. How i can fix this?</p>\n<p>The plugin had some button to delete and create a new sitemap?</p>\n<p>Thks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"algvictor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/support/topic/sitemap-of-a-subsection-of-website/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Sitemap of a subsection of website\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/support/topic/sitemap-of-a-subsection-of-website/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 01:37:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1895:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi is it possible to create multiple sitemaps for different sections of the website?</p>\n<p>Our site <a href=\"www.spadental.co.uk\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.spadental.co.uk/</a> covers six separate locations which we would like tracked in separate properties by Google Analytics.<br />\nie our locations are:<br />\n&#8211; SpaDental Ledbury &#8211; <a href=\"https://www.spadental.co.uk/ledbury\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.spadental.co.uk/ledbury</a><br />\n&#8211; SpaDental Plymouth &#8211; <a href=\"https://www.spadental.co.uk/plymouth\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.spadental.co.uk/plymouth</a><br />\n&#8211; SpaDental Ross on Wye &#8211; <a href=\"https://www.spadental.co.uk/ross-on-wye\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.spadental.co.uk/ross-on-wye</a><br />\n&#8211; SpaDental Wem &#8211; <a href=\"https://www.spadental.co.uk/wem\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.spadental.co.uk/wem</a><br />\n&#8211; SpaDental Whitchurch &#8211; <a href=\"https://www.spadental.co.uk/whitchurch\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.spadental.co.uk/whitchurch</a><br />\n&#8211; SpaDental Wotton under Edge &#8211; <a href=\"https://www.spadental.co.uk/wotton-under-edge\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.spadental.co.uk/wotton-under-edge</a></p>\n<p>Each location has about 50 WordPress Pages under the above URLs.  In addition to the location pages, we have about 500 blog posts which are separate to the individual sites.</p>\n<p>If this plugin does not provide this functionality, does anyone know of a plugin that does provide this functionality?</p>\n<p>Thanks<br />\nChristopher Hilling</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Christopher Hilling\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wordpress.org/support/topic/removing-your-plugin-does-not-remove-the-sitemap-rewrite/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Removing your plugin does not remove the sitemap rewrite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wordpress.org/support/topic/removing-your-plugin-does-not-remove-the-sitemap-rewrite/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 04 Mar 2018 12:25:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1242:\"\n						\n						<p>Replies: 0</p>\n						<p>Whenever I install your plugin, you add 4 entries to the <code>wp_options</code> entry named <code>&quot;rewrite_rules&quot;</code></p>\n<p><code>s:34:&quot;sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$&quot;;</code><br />\n<code>s:40:&quot;index.php?xml_sitemap=params=$matches[2]&quot;;</code><br />\n<code>s:38:&quot;sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$&quot;;</code><br />\n<code>s:49:&quot;index.php?xml_sitemap=params=$matches[2];zip=true&quot;;</code><br />\n<code>s:35:&quot;sitemap(-+([a-zA-Z0-9_-]+))?\\.html$&quot;;</code><br />\n<code>s:50:&quot;index.php?xml_sitemap=params=$matches[2];html=true&quot;;</code><br />\n<code>s:38:&quot;sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$&quot;;</code><br />\n<code>s:59:&quot;index.php?xml_sitemap=params=$matches[2];html=true;zip=true&quot;;</code></p>\n<p>Whenever I uninstall your plugin, those rules stay in my <code>wp_options</code> table and going to <code>sitemap.xml</code> redirects to <code>sitemap.xml/</code> and shows my home page. Not too good to my point of view. The .html has the same problem and the .gz also show the home page.</p>\n<p>Whenever I deactivate your plugin I expect those entries to be removed.</p>\n<p>Thank you.<br />\nAlex</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Alexis Wilke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/sitemap-too-big/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sitemap too big\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/sitemap-too-big/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Mar 2018 22:16:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:437:\"\n						\n						<p>Replies: 1</p>\n						<p>Google Webmaster gives me the following error for my site-map.</p>\n<p>Your Sitemap exceeds the maximum file size limit. Please create multiple Sitemaps containing fewer URLs to meet the file size limit.</p>\n<p>I&#8217;m not sure how to limit the URLs in the site-map or how to then regenerate it once I have done that. My site is GoingFor2.com in case you need it for anything.  </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Goingfor2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/support/topic/ive-changed-links-structure/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"I&amp;#8217;ve changed links structure\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/support/topic/ive-changed-links-structure/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 26 Feb 2018 14:47:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:194:\"\n						\n						<p>Replies: 1</p>\n						<p>I&#8217;ve changed links structure could you please tell me how to re-generate new sitemap to remove old links from the page structure. </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"konkistadoor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/remove-noindex/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"remove noindex\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/remove-noindex/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 25 Feb 2018 09:17:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:830:\"\n						\n						<p>Replies: 13</p>\n						<p>In my source sitemap.html i have:<br />\n<code>content=&quot;noindex,follow&quot;/&gt;&lt;style type=&quot;text/css&quot;&gt;</code></p>\n<p>I received an error from Google because i have included sitemap in my robots allowed file</p>\n<p>but if i have nofollow in this generate an error.</p>\n<p>I can&#8217;t download sitemap with filezilla because is a virtual file generated by plugin.</p>\n<p>How can modify this?</p>\n<p>Thank you</p>\n\n\n<ul id=\"bbp-topic-revision-log-10012051\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-10012051-item-10012053\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month, 3 weeks ago by <a href=\"https://wordpress.org/support/users/fabrixx2/\" title=\"View fabrixx2&#039;s profile\">fabrixx2</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"fabrixx2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/support/topic/why-are-there-4-versions-of-the-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Why are there 4 versions of the sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/support/topic/why-are-there-4-versions-of-the-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 24 Feb 2018 19:16:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:877:\"\n						\n						<p>Replies: 0</p>\n						<p>For some reason I have 4 versions of the sitemap<br />\nWordpress is installed within a sub-folder<br />\nBut ALL of these resolve&#8230; which surely isn&#8217;t correct&#8230;<br />\n<a href=\"https://www.lastminutetheatretickets.com/londonwestend/sitemap.xml\" rel=\"nofollow\">https://www.lastminutetheatretickets.com/londonwestend/sitemap.xml</a><br />\n<a href=\"https://www.lastminutetheatretickets.com/londonwestend/sitemap-index.xml\" rel=\"nofollow\">https://www.lastminutetheatretickets.com/londonwestend/sitemap-index.xml</a><br />\n<a href=\"https://www.lastminutetheatretickets.com/sitemap-index.xml\" rel=\"nofollow\">https://www.lastminutetheatretickets.com/sitemap-index.xml</a><br />\n<a href=\"https://www.lastminutetheatretickets.com/sitemap.xml\" rel=\"nofollow\">https://www.lastminutetheatretickets.com/sitemap.xml</a></p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Gemini23\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/support/topic/submitted-url-not-selected-as-canonical/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Submitted URL not selected as canonical\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/support/topic/submitted-url-not-selected-as-canonical/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Feb 2018 23:38:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1138:\"\n						\n						<p>Replies: 0</p>\n						<p>Hey, I have never had this issue crop up before (I have been using this plugin for almost two years now) and this issue only recently appeared. I now have several of my major pages (Store directory, Leasing, contact, events page, etc) that are not being indexed because of this error.</p>\n<p>This issue is happening on ALL of our sites that are using this plugin.<br />\nAny suggestions? </p>\n<p>Here is a prntscrn link of what I am seeing on Google Search Console.<br />\n<a href=\"http://prntscr.com/iiy6mr\" rel=\"nofollow\">http://prntscr.com/iiy6mr</a></p>\n<p>EDIT: Here is my environment information;<br />\nWordpress 4.9.4<br />\nXML Sitemaps 4.0.9<br />\nHosting is managed by CrapDaddy (Switching to InMotion dedicated hosting soon).</p>\n\n\n<ul id=\"bbp-topic-revision-log-10009184\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-10009184-item-10009198\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month, 3 weeks ago by <a href=\"https://wordpress.org/support/users/dylanlee98/\" title=\"View dylanlee98&#039;s profile\">dylanlee98</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"dylanlee98\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/change-to-ssl-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Change to SSL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/change-to-ssl-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Feb 2018 19:28:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:405:\"\n						\n						<p>Replies: 0</p>\n						<p>I installed sitemap when my page was unsecured, now that I have SSL how do I update my Dashboard The URL to your sitemap index file is: <a href=\"http://wwwc\" rel=\"nofollow\">http://wwwc</a>&#8230;. to Https:<br />\nOr maybe I don&#8217;t need to worry about it?<br />\nI have both an http and https in google search console.</p>\n<p>Thanks</p>\n<p>John</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"cecnaadmin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/support/topic/change-the-post-url-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Change the post URL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/support/topic/change-the-post-url-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Feb 2018 07:14:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:443:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi,</p>\n<p>I would to know if there is any way to change the posts&#8217; URL that saved in the sitemap from:<br />\n<a href=\"https://mydomain.com/blog/components/post-name\" rel=\"nofollow\">https://mydomain.com/blog/components/post-name</a><br />\nto:<br />\n<a href=\"https://mydomain.com/components/post-name\" rel=\"nofollow\">https://mydomain.com/components/post-name</a></p>\n<p>Thank you!</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"sampibiz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/topic/priority-for-custom-taxonomies/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Priority for Custom Taxonomies\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/topic/priority-for-custom-taxonomies/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 17 Feb 2018 08:45:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"\n						\n						<p>Replies: 1</p>\n						<p>How can we set the Priority for Custom Taxonomies?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"ratul29\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/support/topic/sitemap-could-not-be-read/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Sitemap could not be read\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/support/topic/sitemap-could-not-be-read/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Feb 2018 23:06:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:183:\"\n						\n						<p>Replies: 1</p>\n						<p>HI<br />\nsitemap-tax-post_tag.xml not load<br />\n&#8220;Sitemap could not be read&#8221; in google webmaster tools<br />\nwhy?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"sirjavidan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/sitemap-only-showing-154-out-of-6-5k-pages/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Google XML Sitemap only shows 154 of 6.5k+ pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/sitemap-only-showing-154-out-of-6-5k-pages/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Feb 2018 20:51:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:897:\"\n						\n						<p>Replies: 1</p>\n						<p>My sitemap is only showing about 154 of my site&#8217;s 6.5k+ pages. I am considering moving off this plugin as I&#8217;ve tried so many different settings and forum/help suggestions but not had any success in getting my pages into the sitemap.</p>\n\n\n<ul id=\"bbp-topic-revision-log-9971286\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-9971286-item-9971332\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 2 months ago by <a href=\"https://wordpress.org/support/users/rbeckstead/\" title=\"View rbeckstead&#039;s profile\">rbeckstead</a>.\n	</li>\n	<li id=\"bbp-topic-revision-log-9971286-item-9972043\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 2 months ago by <a href=\"https://wordpress.org/support/users/jdembowski/\" title=\"View Jan Dembowski&#039;s profile\">Jan Dembowski</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"rbeckstead\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:67:\"https://wordpress.org/support/plugin/google-sitemap-generator/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 19 Apr 2018 15:27:28 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20171211081420\";}', 'no');
INSERT INTO `wd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2481, '_transient_timeout_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1524756448', 'no'),
(2482, '_transient_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1524151648', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_postmeta`
--

CREATE TABLE `wd_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_postmeta`
--

INSERT INTO `wd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_wp_attached_file', '2017/10/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/10/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_wp_attached_file', '2017/10/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/10/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(10, 6, '_wp_attached_file', '2017/10/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2017/10/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(17, 9, '_thumbnail_id', '4'),
(73, 23, '_menu_item_type', 'custom'),
(74, 23, '_menu_item_menu_item_parent', '0'),
(75, 23, '_menu_item_object_id', '23'),
(76, 23, '_menu_item_object', 'custom'),
(77, 23, '_menu_item_target', ''),
(78, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 23, '_menu_item_xfn', ''),
(80, 23, '_menu_item_url', 'https://facebook.com/beirutbistro.se'),
(81, 24, '_menu_item_type', 'custom'),
(82, 24, '_menu_item_menu_item_parent', '0'),
(83, 24, '_menu_item_object_id', '24'),
(84, 24, '_menu_item_object', 'custom'),
(85, 24, '_menu_item_target', ''),
(86, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 24, '_menu_item_xfn', ''),
(88, 24, '_menu_item_url', 'https://twitter.com/beirutbistrose'),
(89, 25, '_menu_item_type', 'custom'),
(90, 25, '_menu_item_menu_item_parent', '0'),
(91, 25, '_menu_item_object_id', '25'),
(92, 25, '_menu_item_object', 'custom'),
(93, 25, '_menu_item_target', ''),
(94, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 25, '_menu_item_xfn', ''),
(96, 25, '_menu_item_url', 'https://www.instagram.com/beirutbistro/'),
(107, 1, '_edit_lock', '1512373427:1'),
(110, 7, '_edit_lock', '1519725657:1'),
(166, 33, '_menu_item_type', 'custom'),
(167, 33, '_menu_item_menu_item_parent', '0'),
(168, 33, '_menu_item_object_id', '33'),
(169, 33, '_menu_item_object', 'custom'),
(170, 33, '_menu_item_target', ''),
(171, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 33, '_menu_item_xfn', ''),
(173, 33, '_menu_item_url', '#welcome'),
(175, 34, '_menu_item_type', 'custom'),
(176, 34, '_menu_item_menu_item_parent', '0'),
(177, 34, '_menu_item_object_id', '34'),
(178, 34, '_menu_item_object', 'custom'),
(179, 34, '_menu_item_target', ''),
(180, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 34, '_menu_item_xfn', ''),
(182, 34, '_menu_item_url', '#dishes-menu'),
(184, 35, '_menu_item_type', 'custom'),
(185, 35, '_menu_item_menu_item_parent', '0'),
(186, 35, '_menu_item_object_id', '35'),
(187, 35, '_menu_item_object', 'custom'),
(188, 35, '_menu_item_target', ''),
(189, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 35, '_menu_item_xfn', ''),
(191, 35, '_menu_item_url', '#book-table'),
(193, 36, '_menu_item_type', 'custom'),
(194, 36, '_menu_item_menu_item_parent', '0'),
(195, 36, '_menu_item_object_id', '36'),
(196, 36, '_menu_item_object', 'custom'),
(197, 36, '_menu_item_target', ''),
(198, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 36, '_menu_item_xfn', ''),
(200, 36, '_menu_item_url', '#actions'),
(202, 37, '_menu_item_type', 'custom'),
(203, 37, '_menu_item_menu_item_parent', '0'),
(204, 37, '_menu_item_object_id', '37'),
(205, 37, '_menu_item_object', 'custom'),
(206, 37, '_menu_item_target', ''),
(207, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 37, '_menu_item_xfn', ''),
(209, 37, '_menu_item_url', '#gallery'),
(211, 38, '_menu_item_type', 'custom'),
(212, 38, '_menu_item_menu_item_parent', '0'),
(213, 38, '_menu_item_object_id', '38'),
(214, 38, '_menu_item_object', 'custom'),
(215, 38, '_menu_item_target', ''),
(216, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 38, '_menu_item_xfn', ''),
(218, 38, '_menu_item_url', '#gmap'),
(220, 39, '_menu_item_type', 'custom'),
(221, 39, '_menu_item_menu_item_parent', '0'),
(222, 39, '_menu_item_object_id', '39'),
(223, 39, '_menu_item_object', 'custom'),
(224, 39, '_menu_item_target', ''),
(225, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 39, '_menu_item_xfn', ''),
(227, 39, '_menu_item_url', 'http://www.tripadvisor.se/Restaurant_Review-g189852-d7092405-Reviews-Beirut_Bistro-Stockholm.html'),
(229, 40, '_menu_item_type', 'custom'),
(230, 40, '_menu_item_menu_item_parent', '0'),
(231, 40, '_menu_item_object_id', '40'),
(232, 40, '_menu_item_object', 'custom'),
(233, 40, '_menu_item_target', ''),
(234, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 40, '_menu_item_xfn', ''),
(236, 40, '_menu_item_url', '#welcome'),
(238, 41, '_menu_item_type', 'custom'),
(239, 41, '_menu_item_menu_item_parent', '0'),
(240, 41, '_menu_item_object_id', '41'),
(241, 41, '_menu_item_object', 'custom'),
(242, 41, '_menu_item_target', ''),
(243, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(244, 41, '_menu_item_xfn', ''),
(245, 41, '_menu_item_url', '#dishes-menu'),
(247, 42, '_menu_item_type', 'custom'),
(248, 42, '_menu_item_menu_item_parent', '0'),
(249, 42, '_menu_item_object_id', '42'),
(250, 42, '_menu_item_object', 'custom'),
(251, 42, '_menu_item_target', ''),
(252, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(253, 42, '_menu_item_xfn', ''),
(254, 42, '_menu_item_url', '#book-table'),
(256, 43, '_menu_item_type', 'custom'),
(257, 43, '_menu_item_menu_item_parent', '0'),
(258, 43, '_menu_item_object_id', '43'),
(259, 43, '_menu_item_object', 'custom'),
(260, 43, '_menu_item_target', ''),
(261, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(262, 43, '_menu_item_xfn', ''),
(263, 43, '_menu_item_url', '#actions'),
(265, 44, '_menu_item_type', 'custom'),
(266, 44, '_menu_item_menu_item_parent', '0'),
(267, 44, '_menu_item_object_id', '44'),
(268, 44, '_menu_item_object', 'custom'),
(269, 44, '_menu_item_target', ''),
(270, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(271, 44, '_menu_item_xfn', ''),
(272, 44, '_menu_item_url', '#gallery'),
(288, 7, '_edit_last', '1'),
(289, 7, '_wp_page_template', 'default'),
(290, 7, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"welcome-container\",\"custom_class\":\"container\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"special_heading\",\"atts\":{\"title\":\"V\\u00e4lkommen\",\"subtitle\":\"\",\"heading\":\"h1\",\"centered\":true,\"custom_class\":\"title\"}},{\"type\":\"column\",\"width\":\"3_4\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p>Strax intill den vackra Hornsbergs strand i Stockholm ligger Beirut Bistro. En gemytlig kvarterskrog som bjuder p\\u00e5 en vacker utsikt \\u00f6ver Ulvsundasj\\u00f6n.<\\/p><p>Menyn best\\u00e5r av ungef\\u00e4r 30 traditionella libanesiska sm\\u00e5r\\u00e4tter (meze) och ett antal varmr\\u00e4tter fr\\u00e5n grillen. Beirut Bistro erbjuder olika paketl\\u00f6sningar f\\u00f6r stora s\\u00e4llskap och diverse drycker i den vackert utsmyckade baren.<br \\/>Bland Beirut Bistros meze-alternativ finns hommos, vindolmar, spenatpiroger, tzatziki och falafel. Ut\\u00f6ver meze g\\u00e5r det ocks\\u00e5 att best\\u00e4lla r\\u00e4tter fr\\u00e5n den breda grillmenyn.<\\/p><p>Beirut Bistro \\u00e4r inredd p\\u00e5 ett modernt libanesiskt vis och trivselfaktorn \\u00e4r h\\u00f6g. Arkitekturen i lokalen \\u00e4r v\\u00e4l genomt\\u00e4nkt med tv\\u00e5 g\\u00e4st toaletter varav en handikappanpassad p\\u00e5 nedre v\\u00e5ning och en vanlig g\\u00e4st toalett p\\u00e5 \\u00f6vre v\\u00e5ning. Med 35 sittplatser p\\u00e5 nedre v\\u00e5ning och 55 sittplatser p\\u00e5 \\u00f6vre v\\u00e5ning kan Beirut Bistro erbjuda st\\u00f6rre s\\u00e4llskap ett mer avskiljt upplevelse.<\\/p><p>Beirut Bistro p\\u00e5 Hornsbergs strand 85 ligger p\\u00e5 g\\u00e5ngavst\\u00e5nd till b\\u00e5de Kristinebergs och Stadshagens tunnelbana.<\\/p>\",\"custom_class\":\"welcome-desc\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<div class=\\\"first-item\\\"><h3>Avvikande \\u00f6ppettider<\\/h3><p>2\\/1-5\\/1, Lunchst\\u00e4ngt, \\u00d6ppet fr 16<\\/p><\\/div><div class=\\\"h3-liner-big\\\"><h3>\\u00d6ppettider<br \\/>Lunch<\\/h3><p>M\\u00e5n-fre 11-14<\\/p><\\/div><div class=\\\"middle-item\\\"><h3>Middag<\\/h3><p>M\\u00e5n, 16-21<br \\/>Tis-Tor, 16-22<br \\/>Fre-L\\u00f6r, 16-23<\\/p><\\/div><div class=\\\"last-item\\\"><h3>AW<\\/h3><p>M\\u00e5n-fre 14-17<\\/p><\\/div>\",\"custom_class\":\"welcome-feature\"}}]}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"\",\"custom_class\":\"mid-content\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"show_menu\"},{\"type\":\"simple\",\"shortcode\":\"book\",\"atts\":{\"number\":\"\",\"custom_id\":\"\",\"custom_class\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"news\",\"atts\":{\"number\":\"3\",\"custom_id\":\"\",\"custom_class\":\"container\"}},{\"type\":\"simple\",\"shortcode\":\"gallery_on_home\",\"atts\":{\"custom_id\":\"\",\"custom_class\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"map\",\"atts\":{\"data_provider\":{\"population_method\":\"custom\",\"custom\":{\"locations\":[{\"location\":{\"location\":\"Hornsbergs Strand, Stockholms l\\u00e4n, Sweden, 112 15\",\"venue\":\"Hornsbergs Strand 85\",\"address\":\"Hornsbergs Strand\",\"city\":\"\",\"state\":\"Stockholms l\\u00e4n\",\"country\":\"Sweden\",\"zip\":\"112 15\",\"coordinates\":{\"lat\":59.3392043,\"lng\":18.0041965}},\"title\":\"Beirut Bistro\",\"description\":\"\",\"url\":\"\",\"thumb\":\"\"}]}},\"gmap-key\":\"AIzaSyCA30n1mOdgIVN9zmxIUyw6APp2sbH6-xA\",\"map_type\":\"roadmap\",\"map_height\":\"500\",\"disable_scrolling\":false}}]}]'),
(291, 7, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(318, 59, '_wp_attached_file', '2017/11/placeholder-375x250.png'),
(319, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2017/11/placeholder-375x250.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"placeholder-375x250-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(320, 59, '_wp_attachment_image_alt', 'no image placeholder'),
(321, 61, '_edit_last', '1'),
(322, 61, '_edit_lock', '1518161499:1'),
(323, 61, 'price', '165:-'),
(324, 61, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(352, 65, '_menu_item_type', 'taxonomy'),
(353, 65, '_menu_item_menu_item_parent', '0'),
(354, 65, '_menu_item_object_id', '5'),
(355, 65, '_menu_item_object', 'menu_category'),
(356, 65, '_menu_item_target', ''),
(357, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(358, 65, '_menu_item_xfn', ''),
(359, 65, '_menu_item_url', ''),
(361, 66, '_menu_item_type', 'taxonomy'),
(362, 66, '_menu_item_menu_item_parent', '0'),
(363, 66, '_menu_item_object_id', '13'),
(364, 66, '_menu_item_object', 'menu_category'),
(365, 66, '_menu_item_target', ''),
(366, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(367, 66, '_menu_item_xfn', ''),
(368, 66, '_menu_item_url', ''),
(370, 67, '_menu_item_type', 'taxonomy'),
(371, 67, '_menu_item_menu_item_parent', '0'),
(372, 67, '_menu_item_object_id', '18'),
(373, 67, '_menu_item_object', 'menu_category'),
(374, 67, '_menu_item_target', ''),
(375, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 67, '_menu_item_xfn', ''),
(377, 67, '_menu_item_url', ''),
(388, 69, '_menu_item_type', 'taxonomy'),
(389, 69, '_menu_item_menu_item_parent', '0'),
(390, 69, '_menu_item_object_id', '14'),
(391, 69, '_menu_item_object', 'menu_category'),
(392, 69, '_menu_item_target', ''),
(393, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(394, 69, '_menu_item_xfn', ''),
(395, 69, '_menu_item_url', ''),
(397, 70, '_menu_item_type', 'taxonomy'),
(398, 70, '_menu_item_menu_item_parent', '0'),
(399, 70, '_menu_item_object_id', '12'),
(400, 70, '_menu_item_object', 'menu_category'),
(401, 70, '_menu_item_target', ''),
(402, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(403, 70, '_menu_item_xfn', ''),
(404, 70, '_menu_item_url', ''),
(406, 71, '_menu_item_type', 'taxonomy'),
(407, 71, '_menu_item_menu_item_parent', '0'),
(408, 71, '_menu_item_object_id', '10'),
(409, 71, '_menu_item_object', 'menu_category'),
(410, 71, '_menu_item_target', ''),
(411, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(412, 71, '_menu_item_xfn', ''),
(413, 71, '_menu_item_url', ''),
(415, 72, '_menu_item_type', 'taxonomy'),
(416, 72, '_menu_item_menu_item_parent', '0'),
(417, 72, '_menu_item_object_id', '11'),
(418, 72, '_menu_item_object', 'menu_category'),
(419, 72, '_menu_item_target', ''),
(420, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 72, '_menu_item_xfn', ''),
(422, 72, '_menu_item_url', ''),
(433, 74, '_menu_item_type', 'taxonomy'),
(434, 74, '_menu_item_menu_item_parent', '0'),
(435, 74, '_menu_item_object_id', '8'),
(436, 74, '_menu_item_object', 'menu_category'),
(437, 74, '_menu_item_target', ''),
(438, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(439, 74, '_menu_item_xfn', ''),
(440, 74, '_menu_item_url', ''),
(442, 75, '_menu_item_type', 'taxonomy'),
(443, 75, '_menu_item_menu_item_parent', '0'),
(444, 75, '_menu_item_object_id', '6'),
(445, 75, '_menu_item_object', 'menu_category'),
(446, 75, '_menu_item_target', ''),
(447, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(448, 75, '_menu_item_xfn', ''),
(449, 75, '_menu_item_url', ''),
(451, 76, '_menu_item_type', 'taxonomy'),
(452, 76, '_menu_item_menu_item_parent', '0'),
(453, 76, '_menu_item_object_id', '7'),
(454, 76, '_menu_item_object', 'menu_category'),
(455, 76, '_menu_item_target', ''),
(456, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(457, 76, '_menu_item_xfn', ''),
(458, 76, '_menu_item_url', ''),
(460, 77, '_menu_item_type', 'taxonomy'),
(461, 77, '_menu_item_menu_item_parent', '0'),
(462, 77, '_menu_item_object_id', '19'),
(463, 77, '_menu_item_object', 'menu_category'),
(464, 77, '_menu_item_target', ''),
(465, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(466, 77, '_menu_item_xfn', ''),
(467, 77, '_menu_item_url', ''),
(469, 78, '_menu_item_type', 'taxonomy'),
(470, 78, '_menu_item_menu_item_parent', '0'),
(471, 78, '_menu_item_object_id', '16'),
(472, 78, '_menu_item_object', 'menu_category'),
(473, 78, '_menu_item_target', ''),
(474, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(475, 78, '_menu_item_xfn', ''),
(476, 78, '_menu_item_url', ''),
(478, 79, '_menu_item_type', 'taxonomy'),
(479, 79, '_menu_item_menu_item_parent', '0'),
(480, 79, '_menu_item_object_id', '17'),
(481, 79, '_menu_item_object', 'menu_category'),
(482, 79, '_menu_item_target', ''),
(483, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(484, 79, '_menu_item_xfn', ''),
(485, 79, '_menu_item_url', ''),
(487, 80, '_menu_item_type', 'taxonomy'),
(488, 80, '_menu_item_menu_item_parent', '0'),
(489, 80, '_menu_item_object_id', '9'),
(490, 80, '_menu_item_object', 'menu_category'),
(491, 80, '_menu_item_target', ''),
(492, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(493, 80, '_menu_item_xfn', ''),
(494, 80, '_menu_item_url', ''),
(496, 81, '_menu_item_type', 'taxonomy'),
(497, 81, '_menu_item_menu_item_parent', '0'),
(498, 81, '_menu_item_object_id', '15'),
(499, 81, '_menu_item_object', 'menu_category'),
(500, 81, '_menu_item_target', ''),
(501, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(502, 81, '_menu_item_xfn', ''),
(503, 81, '_menu_item_url', ''),
(504, 83, '_edit_last', '1'),
(505, 83, '_edit_lock', '1518161083:1'),
(506, 83, 'price', '195:-'),
(507, 83, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(508, 84, '_edit_last', '1'),
(509, 84, '_edit_lock', '1518161058:1'),
(510, 84, 'price', '295:-'),
(511, 84, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(512, 85, 'price', '365:-'),
(513, 85, '_edit_last', '1'),
(514, 85, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(515, 85, '_edit_lock', '1518161033:1'),
(516, 86, 'price', '275:-'),
(517, 86, '_edit_last', '1'),
(518, 86, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(519, 86, '_edit_lock', '1518160980:1'),
(520, 87, 'price', '129:-'),
(521, 87, '_edit_last', '1'),
(522, 87, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(523, 87, '_edit_lock', '1511336405:1'),
(524, 89, '_wp_attached_file', '2017/11/13.-Basterma-750x500-w-50-middle-375x250.jpg'),
(525, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:52:\"2017/11/13.-Basterma-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"13.-Basterma-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(526, 88, 'price', '95:-'),
(527, 88, '_edit_last', '1'),
(528, 88, '_thumbnail_id', '89'),
(529, 88, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(530, 88, '_edit_lock', '1511336491:1'),
(531, 90, 'price', '89:-'),
(532, 90, '_edit_last', '1'),
(533, 90, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(534, 90, '_edit_lock', '1511336539:1'),
(535, 91, '_edit_last', '1'),
(536, 91, '_edit_lock', '1511336649:1'),
(537, 92, '_wp_attached_file', '2017/11/11.-Ardishoki-750x500-w-50-middle-375x250.jpg'),
(538, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:53:\"2017/11/11.-Ardishoki-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"11.-Ardishoki-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(539, 91, 'price', '89:-'),
(540, 91, '_thumbnail_id', '92'),
(541, 91, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(542, 93, '_edit_last', '1'),
(543, 93, '_edit_lock', '1511336734:1'),
(544, 94, '_wp_attached_file', '2017/11/9.-Tarator-de-jez-750x500-w-50-middle-375x250.jpg'),
(545, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:57:\"2017/11/9.-Tarator-de-jez-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"9.-Tarator-de-jez-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 93, 'price', '75:-'),
(547, 93, '_thumbnail_id', '94'),
(548, 93, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(549, 95, '_edit_last', '1'),
(550, 95, '_edit_lock', '1511336809:1'),
(551, 96, '_wp_attached_file', '2017/11/7.-Mhammara-750x500-w-50-middle-375x250.jpg'),
(552, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:51:\"2017/11/7.-Mhammara-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"7.-Mhammara-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 95, 'price', '75:-'),
(554, 95, '_thumbnail_id', '96'),
(555, 95, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(556, 97, '_edit_last', '1'),
(557, 97, '_edit_lock', '1511338350:1'),
(558, 98, '_wp_attached_file', '2017/11/6.-Baba-Ganoushr-750x500-w-50-middle-375x250.jpg'),
(559, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:56:\"2017/11/6.-Baba-Ganoushr-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"6.-Baba-Ganoushr-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(560, 97, 'price', '75:-'),
(561, 97, '_thumbnail_id', '98'),
(562, 97, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(563, 99, '_edit_last', '1'),
(564, 99, '_edit_lock', '1511338444:1'),
(565, 100, '_wp_attached_file', '2017/11/4.-Warak-inab-750x500-w-50-middle-375x250.jpg'),
(566, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:53:\"2017/11/4.-Warak-inab-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"4.-Warak-inab-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(567, 99, 'price', '69:-'),
(568, 99, '_thumbnail_id', '100'),
(569, 99, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(570, 101, '_edit_last', '1'),
(571, 101, '_edit_lock', '1511338547:1'),
(572, 102, '_wp_attached_file', '2017/11/2.-Labneh-750x500-w-50-middle-375x250.jpg'),
(573, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:49:\"2017/11/2.-Labneh-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"2.-Labneh-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(574, 101, 'price', '69:-'),
(575, 101, '_thumbnail_id', '102'),
(576, 101, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(577, 103, '_edit_last', '1'),
(578, 103, '_edit_lock', '1511338638:1'),
(579, 104, '_wp_attached_file', '2017/11/1.-Hoummos-750x500-w-50-middle-375x250.jpg'),
(580, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:50:\"2017/11/1.-Hoummos-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"1.-Hoummos-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(581, 103, 'price', '69:-'),
(582, 103, '_thumbnail_id', '104'),
(583, 103, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(584, 105, '_edit_last', '1'),
(585, 105, '_edit_lock', '1511338729:1'),
(586, 105, 'price', '115:-'),
(587, 105, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(588, 106, '_edit_last', '1'),
(589, 106, '_edit_lock', '1511338808:1'),
(590, 107, '_wp_attached_file', '2017/11/26.-Kebbe-trabolsie-750x500-w-50-middle-375x250.jpg'),
(591, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:59:\"2017/11/26.-Kebbe-trabolsie-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"26.-Kebbe-trabolsie-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(592, 106, 'price', '89:-'),
(593, 106, '_thumbnail_id', '107'),
(594, 106, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(595, 109, '_wp_attached_file', '2017/11/24.-Hoummos-bel-lahme-750x500-w-50-middle-375x250.jpg'),
(596, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:61:\"2017/11/24.-Hoummos-bel-lahme-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"24.-Hoummos-bel-lahme-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 108, '_edit_last', '1'),
(598, 108, '_edit_lock', '1511338916:1'),
(599, 108, 'price', '85:-'),
(600, 108, '_thumbnail_id', '109'),
(601, 108, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(602, 111, '_wp_attached_file', '2017/11/23.-Sojok-750x500-w-50-middle-375x250.jpg'),
(603, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:49:\"2017/11/23.-Sojok-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"23.-Sojok-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(604, 110, 'price', '85:-'),
(605, 110, '_edit_last', '1'),
(606, 110, '_thumbnail_id', '111'),
(607, 110, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(608, 110, '_edit_lock', '1511338994:1'),
(609, 112, '_edit_last', '1'),
(610, 112, '_edit_lock', '1511339076:1'),
(611, 113, '_wp_attached_file', '2017/11/22.-Halloumi-750x500-w-50-middle-375x250.jpg'),
(612, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:52:\"2017/11/22.-Halloumi-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"22.-Halloumi-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(613, 112, 'price', '85:-'),
(614, 112, '_thumbnail_id', '113'),
(615, 112, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(616, 115, '_wp_attached_file', '2017/11/21.-Jowaneh-michvie-750x500-w-50-middle-375x250.jpg'),
(617, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:59:\"2017/11/21.-Jowaneh-michvie-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"21.-Jowaneh-michvie-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(618, 114, 'price', '75:-'),
(619, 114, '_edit_last', '1'),
(620, 114, '_thumbnail_id', '115'),
(621, 114, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(622, 114, '_edit_lock', '1511339140:1'),
(623, 117, '_wp_attached_file', '2017/11/19.-Sambosek-750x500-w-50-middle-375x250.jpg'),
(624, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:52:\"2017/11/19.-Sambosek-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"19.-Sambosek-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(625, 116, 'price', '75:-'),
(626, 116, '_edit_last', '1'),
(627, 116, '_thumbnail_id', '117'),
(628, 116, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(629, 116, '_edit_lock', '1511339206:1'),
(630, 118, 'price', '85:-'),
(631, 118, '_edit_last', '1'),
(632, 118, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(633, 118, '_edit_lock', '1511339283:1'),
(634, 119, '_edit_last', '1'),
(635, 119, '_edit_lock', '1511339391:1'),
(636, 120, '_wp_attached_file', '2017/11/18.-Rakakat-750x500-w-50-middle-375x250.jpg'),
(637, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:51:\"2017/11/18.-Rakakat-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"18.-Rakakat-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(638, 119, 'price', '75:-'),
(639, 119, '_thumbnail_id', '120'),
(640, 119, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(641, 121, '_edit_last', '1'),
(642, 121, '_edit_lock', '1511339468:1'),
(643, 122, '_wp_attached_file', '2017/11/17.-Fatayer-750x500-w-50-middle-375x250.jpg'),
(644, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:51:\"2017/11/17.-Fatayer-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"17.-Fatayer-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(645, 121, 'price', '75:-'),
(646, 121, '_thumbnail_id', '122'),
(647, 121, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(648, 124, '_wp_attached_file', '2017/11/16.-Falafel-750x500-w-50-middle-375x250.jpg'),
(649, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:51:\"2017/11/16.-Falafel-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"16.-Falafel-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(650, 123, 'price', '69:-'),
(651, 123, '_edit_last', '1'),
(652, 123, '_thumbnail_id', '124'),
(653, 123, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(654, 123, '_edit_lock', '1511339544:1'),
(655, 126, '_wp_attached_file', '2017/11/15.-Batata-Harra-750x500-w-50-middle-375x250.jpg'),
(656, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:56:\"2017/11/15.-Batata-Harra-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"15.-Batata-Harra-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657, 125, '_edit_last', '1'),
(658, 125, '_edit_lock', '1511339624:1'),
(659, 125, 'price', '59:-'),
(660, 125, '_thumbnail_id', '126'),
(661, 125, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(662, 127, '_edit_last', '1'),
(663, 127, '_edit_lock', '1511339689:1'),
(664, 128, '_wp_attached_file', '2017/11/14.-Batata-Bel-Kozbara-750x500-w-50-middle-375x250.jpg'),
(665, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:62:\"2017/11/14.-Batata-Bel-Kozbara-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"14.-Batata-Bel-Kozbara-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 127, 'price', '59:-'),
(667, 127, '_thumbnail_id', '128'),
(668, 127, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(669, 129, 'price', '55:-'),
(670, 129, '_edit_last', '1'),
(671, 129, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(672, 129, '_edit_lock', '1511339727:1'),
(677, 132, '_edit_last', '1'),
(678, 132, '_edit_lock', '1511358421:1'),
(679, 133, '_wp_attached_file', '2017/11/28.-Kraydes-michvie-750x500-w-50-middle-375x250.jpg'),
(680, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:59:\"2017/11/28.-Kraydes-michvie-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"28.-Kraydes-michvie-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(681, 132, 'price', '115:-'),
(682, 132, '_thumbnail_id', '133'),
(683, 132, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(684, 134, '_edit_last', '1'),
(685, 134, '_edit_lock', '1511358504:1'),
(686, 135, '_wp_attached_file', '2017/11/27.-Kraydes-750x500-w-50-middle-375x250.jpg'),
(687, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:51:\"2017/11/27.-Kraydes-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"27.-Kraydes-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(688, 134, 'price', '99:-'),
(689, 134, '_thumbnail_id', '135'),
(690, 134, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(691, 137, '_wp_attached_file', '2017/11/25.-Saffad-750x500-w-50-middle-375x250.jpg'),
(692, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:50:\"2017/11/25.-Saffad-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"25.-Saffad-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(693, 136, 'price', '85:-'),
(694, 136, '_edit_last', '1'),
(695, 136, '_thumbnail_id', '137'),
(696, 136, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(697, 136, '_edit_lock', '1511358567:1'),
(698, 138, '_edit_last', '1'),
(699, 138, '_edit_lock', '1511358910:1'),
(700, 139, '_wp_attached_file', '2017/11/10.-Ton-motabal-750x500-w-50-middle-375x250.jpg'),
(701, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:55:\"2017/11/10.-Ton-motabal-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"10.-Ton-motabal-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(702, 138, 'price', '75:-'),
(703, 138, '_thumbnail_id', '139'),
(704, 138, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(705, 140, '_edit_last', '1'),
(706, 140, '_edit_lock', '1511359024:1'),
(707, 140, 'price', '75:-'),
(708, 140, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(709, 141, '_edit_last', '1'),
(710, 141, '_edit_lock', '1511359117:1'),
(711, 142, '_wp_attached_file', '2017/11/30.-Fatosh-750x500-w-50-middle-375x250.jpg'),
(712, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:50:\"2017/11/30.-Fatosh-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"30.-Fatosh-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(713, 141, 'price', '89:-'),
(714, 141, '_thumbnail_id', '142'),
(715, 141, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(716, 143, '_edit_last', '1'),
(717, 143, '_edit_lock', '1511359287:1'),
(718, 144, '_wp_attached_file', '2017/11/29.-Tabbouli-750x500-w-50-middle-375x250.jpg'),
(719, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:250;s:4:\"file\";s:52:\"2017/11/29.-Tabbouli-750x500-w-50-middle-375x250.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"29.-Tabbouli-750x500-w-50-middle-375x250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(720, 143, 'price', '89:-'),
(721, 143, '_thumbnail_id', '144'),
(722, 143, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(723, 145, 'price', '195:-'),
(724, 145, '_edit_last', '1'),
(725, 145, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(726, 145, '_edit_lock', '1511359331:1'),
(727, 146, '_edit_last', '1'),
(728, 146, '_edit_lock', '1511359373:1'),
(729, 146, 'price', '275:-'),
(730, 146, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(731, 147, 'price', '259:-'),
(732, 147, '_edit_last', '1'),
(733, 147, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(734, 147, '_edit_lock', '1511359407:1'),
(735, 148, '_edit_last', '1'),
(736, 148, '_edit_lock', '1511359445:1'),
(737, 148, 'price', '235:-'),
(738, 148, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(739, 149, '_edit_last', '1'),
(740, 149, '_edit_lock', '1511359489:1'),
(741, 149, 'price', '195:-'),
(742, 149, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(743, 150, '_edit_last', '1'),
(744, 150, '_edit_lock', '1511359597:1'),
(745, 150, 'price', '195:-'),
(746, 150, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(747, 151, 'price', '269:-'),
(748, 151, '_edit_last', '1'),
(749, 151, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(750, 151, '_edit_lock', '1511359652:1'),
(751, 152, 'price', '210:-'),
(752, 152, '_edit_last', '1'),
(753, 152, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(754, 152, '_edit_lock', '1511359715:1'),
(755, 153, '_edit_last', '1'),
(756, 153, '_edit_lock', '1511359766:1'),
(757, 153, 'price', '75:-'),
(758, 153, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(759, 154, 'price', '79:-'),
(760, 154, '_edit_last', '1'),
(761, 154, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(762, 154, '_edit_lock', '1511359818:1');
INSERT INTO `wd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(763, 155, '_edit_last', '1'),
(764, 155, '_edit_lock', '1511359856:1'),
(765, 155, 'price', '58:-'),
(766, 155, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(767, 156, 'price', '58:-'),
(768, 156, '_edit_last', '1'),
(769, 156, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(770, 156, '_edit_lock', '1511359909:1'),
(771, 157, '_edit_last', '1'),
(772, 157, '_edit_lock', '1511360495:1'),
(773, 157, 'price', '35:-'),
(774, 157, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(775, 158, '_edit_last', '1'),
(776, 158, '_edit_lock', '1515751805:1'),
(777, 158, 'price', '385:-'),
(778, 158, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(779, 159, 'price', '372:-'),
(780, 159, '_edit_last', '1'),
(781, 159, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(782, 159, '_edit_lock', '1515751220:1'),
(783, 160, '_edit_last', '1'),
(784, 160, '_edit_lock', '1515751198:1'),
(785, 160, 'price', '348:-'),
(786, 160, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(787, 161, '_edit_last', '1'),
(788, 161, '_edit_lock', '1515749121:1'),
(789, 161, 'price', '308:-'),
(790, 161, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(791, 162, '_edit_last', '1'),
(792, 162, '_edit_lock', '1515751064:1'),
(793, 162, 'price', '595:-'),
(794, 162, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(795, 163, '_edit_last', '1'),
(796, 163, '_edit_lock', '1515750988:1'),
(797, 163, 'price', '495:-'),
(798, 163, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(799, 164, '_edit_last', '1'),
(800, 164, '_edit_lock', '1515750929:1'),
(801, 164, 'price', '445:-'),
(802, 164, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(803, 165, 'price', '372:-'),
(804, 165, '_edit_last', '1'),
(805, 165, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(806, 165, '_edit_lock', '1515752012:1'),
(807, 166, '_edit_last', '1'),
(808, 166, '_edit_lock', '1515750858:1'),
(809, 166, 'price', '332:-'),
(810, 166, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(811, 167, 'price', '308:-'),
(812, 167, '_edit_last', '1'),
(813, 167, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(814, 167, '_edit_lock', '1515749171:1'),
(815, 168, '_edit_last', '1'),
(816, 168, '_edit_lock', '1515753248:1'),
(817, 168, 'price', '348:-'),
(818, 168, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(819, 169, 'price', '595:-'),
(820, 169, '_edit_last', '1'),
(821, 169, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(822, 169, '_edit_lock', '1511422041:1'),
(823, 170, '_edit_last', '1'),
(824, 170, '_edit_lock', '1515748981:1'),
(825, 170, 'price', '462:-'),
(826, 170, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(827, 171, '_edit_last', '1'),
(828, 171, '_edit_lock', '1511422159:1'),
(829, 171, 'price', '69:-'),
(830, 171, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(831, 172, 'price', '69:-'),
(832, 172, '_edit_last', '1'),
(833, 172, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(834, 172, '_edit_lock', '1511422203:1'),
(835, 173, '_edit_last', '1'),
(836, 173, '_edit_lock', '1511422240:1'),
(837, 173, 'price', '69:-'),
(838, 173, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(839, 174, 'price', '69:-'),
(840, 174, '_edit_last', '1'),
(841, 174, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(842, 174, '_edit_lock', '1511422279:1'),
(843, 175, '_edit_last', '1'),
(844, 175, '_edit_lock', '1511422319:1'),
(845, 175, 'price', '56:-'),
(846, 175, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(847, 176, 'price', '54:-'),
(848, 176, '_edit_last', '1'),
(849, 176, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(850, 176, '_edit_lock', '1511422354:1'),
(851, 177, 'price', '49:-'),
(852, 177, '_edit_last', '1'),
(853, 177, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(854, 177, '_edit_lock', '1511422404:1'),
(855, 178, '_edit_last', '1'),
(856, 178, '_edit_lock', '1511422545:1'),
(857, 178, 'price', '46:-'),
(858, 178, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(859, 179, '_edit_last', '1'),
(860, 179, '_edit_lock', '1511422622:1'),
(861, 179, 'price', '54:-'),
(862, 179, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(863, 180, '_edit_last', '1'),
(864, 180, '_edit_lock', '1511422669:1'),
(865, 180, 'price', '95:-'),
(866, 180, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(867, 181, '_edit_last', '1'),
(868, 181, '_edit_lock', '1511422714:1'),
(869, 181, 'price', '15:-'),
(870, 181, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(871, 182, '_edit_last', '1'),
(872, 182, '_edit_lock', '1511422762:1'),
(873, 182, 'price', '95:-'),
(874, 182, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(875, 183, 'price', '95:-'),
(876, 183, '_edit_last', '1'),
(877, 183, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(878, 183, '_edit_lock', '1511422801:1'),
(879, 184, '_edit_last', '1'),
(880, 184, '_edit_lock', '1511422886:1'),
(881, 184, 'price', '95:-'),
(882, 184, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(883, 185, 'price', '95:-'),
(884, 185, '_edit_last', '1'),
(885, 185, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(886, 185, '_edit_lock', '1511422930:1'),
(887, 186, '_edit_last', '1'),
(888, 186, '_edit_lock', '1511422967:1'),
(889, 186, 'price', '129:-'),
(890, 186, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(891, 187, '_edit_last', '1'),
(892, 187, '_edit_lock', '1512374545:1'),
(893, 187, 'price', '95:-'),
(894, 187, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(898, 190, '_wp_attached_file', '2017/10/wedding-205x136.jpg'),
(899, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:205;s:6:\"height\";i:136;s:4:\"file\";s:27:\"2017/10/wedding-205x136.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"wedding-205x136-184x123.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(900, 191, '_wp_attached_file', '2017/10/lunchmini-205x136.jpg'),
(901, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:205;s:6:\"height\";i:136;s:4:\"file\";s:29:\"2017/10/lunchmini-205x136.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"lunchmini-205x136-184x123.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(902, 192, '_wp_attached_file', '2017/10/christmas2-205x136.jpg'),
(903, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:205;s:6:\"height\";i:136;s:4:\"file\";s:30:\"2017/10/christmas2-205x136.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"christmas2-205x136-184x123.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(904, 1, '_edit_last', '1'),
(905, 1, '_thumbnail_id', '191'),
(909, 1, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(910, 194, '_edit_last', '1'),
(911, 194, '_edit_lock', '1511860514:1'),
(912, 194, '_thumbnail_id', '192'),
(916, 194, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(919, 196, '_edit_last', '1'),
(920, 196, '_edit_lock', '1511515716:1'),
(921, 196, '_thumbnail_id', '190'),
(925, 196, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1006, 1, '_wp_old_slug', 'hello-world'),
(1163, 248, '_menu_item_type', 'custom'),
(1164, 248, '_menu_item_menu_item_parent', '0'),
(1165, 248, '_menu_item_object_id', '248'),
(1166, 248, '_menu_item_object', 'custom'),
(1167, 248, '_menu_item_target', ''),
(1168, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1169, 248, '_menu_item_xfn', ''),
(1170, 248, '_menu_item_url', '#5'),
(1172, 249, '_menu_item_type', 'custom'),
(1173, 249, '_menu_item_menu_item_parent', '0'),
(1174, 249, '_menu_item_object_id', '249'),
(1175, 249, '_menu_item_object', 'custom'),
(1176, 249, '_menu_item_target', ''),
(1177, 249, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1178, 249, '_menu_item_xfn', ''),
(1179, 249, '_menu_item_url', '#13'),
(1181, 250, '_menu_item_type', 'custom'),
(1182, 250, '_menu_item_menu_item_parent', '0'),
(1183, 250, '_menu_item_object_id', '250'),
(1184, 250, '_menu_item_object', 'custom'),
(1185, 250, '_menu_item_target', ''),
(1186, 250, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1187, 250, '_menu_item_xfn', ''),
(1188, 250, '_menu_item_url', '#18'),
(1190, 251, '_menu_item_type', 'custom'),
(1191, 251, '_menu_item_menu_item_parent', '34'),
(1192, 251, '_menu_item_object_id', '251'),
(1193, 251, '_menu_item_object', 'custom'),
(1194, 251, '_menu_item_target', ''),
(1195, 251, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1196, 251, '_menu_item_xfn', ''),
(1197, 251, '_menu_item_url', '#5'),
(1199, 252, '_menu_item_type', 'custom'),
(1200, 252, '_menu_item_menu_item_parent', '34'),
(1201, 252, '_menu_item_object_id', '252'),
(1202, 252, '_menu_item_object', 'custom'),
(1203, 252, '_menu_item_target', ''),
(1204, 252, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1205, 252, '_menu_item_xfn', ''),
(1206, 252, '_menu_item_url', '#13'),
(1226, 255, '_menu_item_type', 'custom'),
(1227, 255, '_menu_item_menu_item_parent', '34'),
(1228, 255, '_menu_item_object_id', '255'),
(1229, 255, '_menu_item_object', 'custom'),
(1230, 255, '_menu_item_target', ''),
(1231, 255, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1232, 255, '_menu_item_xfn', ''),
(1233, 255, '_menu_item_url', '#14'),
(1235, 256, '_menu_item_type', 'custom'),
(1236, 256, '_menu_item_menu_item_parent', '34'),
(1237, 256, '_menu_item_object_id', '256'),
(1238, 256, '_menu_item_object', 'custom'),
(1239, 256, '_menu_item_target', ''),
(1240, 256, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1241, 256, '_menu_item_xfn', ''),
(1242, 256, '_menu_item_url', '#12'),
(1244, 257, '_menu_item_type', 'custom'),
(1245, 257, '_menu_item_menu_item_parent', '34'),
(1246, 257, '_menu_item_object_id', '257'),
(1247, 257, '_menu_item_object', 'custom'),
(1248, 257, '_menu_item_target', ''),
(1249, 257, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1250, 257, '_menu_item_xfn', ''),
(1251, 257, '_menu_item_url', '#10'),
(1253, 258, '_menu_item_type', 'custom'),
(1254, 258, '_menu_item_menu_item_parent', '34'),
(1255, 258, '_menu_item_object_id', '258'),
(1256, 258, '_menu_item_object', 'custom'),
(1257, 258, '_menu_item_target', ''),
(1258, 258, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1259, 258, '_menu_item_xfn', ''),
(1260, 258, '_menu_item_url', '#11'),
(1262, 259, '_menu_item_type', 'custom'),
(1263, 259, '_menu_item_menu_item_parent', '34'),
(1264, 259, '_menu_item_object_id', '259'),
(1265, 259, '_menu_item_object', 'custom'),
(1266, 259, '_menu_item_target', ''),
(1267, 259, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1268, 259, '_menu_item_xfn', ''),
(1269, 259, '_menu_item_url', '#21'),
(1271, 260, '_menu_item_type', 'custom'),
(1272, 260, '_menu_item_menu_item_parent', '34'),
(1273, 260, '_menu_item_object_id', '260'),
(1274, 260, '_menu_item_object', 'custom'),
(1275, 260, '_menu_item_target', ''),
(1276, 260, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1277, 260, '_menu_item_xfn', ''),
(1278, 260, '_menu_item_url', '#8'),
(1280, 261, '_menu_item_type', 'custom'),
(1281, 261, '_menu_item_menu_item_parent', '34'),
(1282, 261, '_menu_item_object_id', '261'),
(1283, 261, '_menu_item_object', 'custom'),
(1284, 261, '_menu_item_target', ''),
(1285, 261, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1286, 261, '_menu_item_xfn', ''),
(1287, 261, '_menu_item_url', '#6'),
(1289, 262, '_menu_item_type', 'custom'),
(1290, 262, '_menu_item_menu_item_parent', '34'),
(1291, 262, '_menu_item_object_id', '262'),
(1292, 262, '_menu_item_object', 'custom'),
(1293, 262, '_menu_item_target', ''),
(1294, 262, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1295, 262, '_menu_item_xfn', ''),
(1296, 262, '_menu_item_url', '#7'),
(1325, 266, '_menu_item_type', 'custom'),
(1326, 266, '_menu_item_menu_item_parent', '34'),
(1327, 266, '_menu_item_object_id', '266'),
(1328, 266, '_menu_item_object', 'custom'),
(1329, 266, '_menu_item_target', ''),
(1330, 266, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1331, 266, '_menu_item_xfn', ''),
(1332, 266, '_menu_item_url', '#9'),
(1342, 86, 'menu_structure', '<p class=\"sub-title\">Meny 1</p>\r\n<b>Hummus</b>\r\nKikärtsröra. (veg)\r\n\r\n<b>Labneh</b>\r\nLibanesisk kryddad yoghurt med oliver. (veg)\r\n\r\n<b>Tarator de jez</b>\r\nKycklingröra.\r\n\r\n<b>Muhammara</b>\r\nFinmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)\r\n\r\n<b>Ton motabal</b>\r\nTonfiskröra.\r\n\r\n<b>Batata Bel Kozbara</b>\r\nFriterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)\r\n\r\n<b>Falafel</b>\r\nFriterad kikärts- och bönröra med sesamsås. (veg)\r\n\r\n<b>Fatayer</b>\r\nSpenatpiroger. (veg)\r\n\r\n<b>Rakakat</b>\r\nOstrullar. (veg)\r\n\r\n<b>Sambosek</b>\r\nNötfärspiroger.\r\n\r\n<b>Halloumi</b>\r\nGrillad ost. (veg)\r\n\r\n<b>Tabbouli</b>\r\nFinhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(1343, 84, 'menu_structure', '<p class=\"sub-title\">Meny 2</p>\r\n<b>Hummus</b>\r\nKikärtsröra. (veg)\r\n\r\n<b>Labneh</b>\r\nLibanesisk kryddad yoghurt med oliver. (veg)\r\n\r\n<b>Tarator de jez</b>\r\nKycklingröra.\r\n\r\n<b>Baba Ganoush</b>\r\nAuberginröra. (veg)\r\n\r\n<b>Muhammara</b>\r\nFinmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)\r\n\r\n<b>Warak inab</b>\r\nVegetariska vinbladsdolmar. (veg)\r\n\r\n<b>Ton motabal</b>\r\nTonfiskröra.\r\n\r\n<b>Batata Bel Kozbara</b>\r\nFriterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)\r\n\r\n<b>Falafel</b>\r\nFriterad kikärts- och bönröra med sesamsås. (veg)\r\n\r\n<b>Fatayer</b>\r\nSpenatpiroger. (veg)\r\n\r\n<b>Rakakat</b>\r\nOstrullar. (veg)\r\n\r\n<b>Sambosek</b>\r\nNötfärspiroger.\r\n\r\n<b>Jowaneh michvie</b>\r\nMarinerade grillade kycklingvingar.\r\n\r\n<b>Halloumi</b>\r\nGrillad ost. (veg)\r\n\r\n<b>Kraydes michvie</b>\r\nGrillade vitlöksmarinerade tigerräkor.\r\n\r\n<b>Tabbouli</b>\r\nFinhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(1344, 85, 'menu_structure', '<p class=\"sub-title\">Meny 3</p>\r\n<b>Hummus</b>\r\nKikärtsröra. (veg)\r\n\r\n<b>Labneh</b>\r\nLibanesisk kryddad yoghurt med oliver. (veg)\r\n\r\n<b>Tarator de jez</b>\r\nKycklingröra.\r\n\r\n<b>Baba Ganoush</b>\r\nAuberginröra. (veg)\r\n\r\n<b>Muhammara</b>\r\nFinmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)\r\n\r\n<b>Warak inab</b>\r\nVegetariska vinbladsdolmar. (veg)\r\n\r\n<b>Ton motabal</b>\r\nTonfiskröra.\r\n\r\n<b>Batata Bel Kozbara</b>\r\nFriterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)\r\n\r\n<b>Falafel</b>\r\nFriterad kikärts- och bönröra med sesamsås. (veg)\r\n\r\n<b>Fatayer</b>\r\nSpenatpiroger. (veg)\r\n\r\n<b>Rakakat</b>\r\nOstrullar. (veg)\r\n\r\n<b>Sambosek</b>\r\nNötfärspiroger.\r\n\r\n<b>Halloumi</b>\r\nGrillad ost. (veg)\r\n\r\n<b>Kraydes michvie</b>\r\nGrillade vitlöksmarinerade tigerräkor.\r\n\r\n<b>Tabbouli</b>\r\nFinhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(1345, 83, 'menu_structure', '<p class=\"sub-title\">Vegetarisk meze mixtallrik</p>\r\n<b>Hummus</b>\r\nKikärtsröra. (veg)\r\n\r\n<b>Baba Ganoush</b>\r\nAuberginröra. (veg)\r\n\r\n<b>Muhammara</b>\r\nFinmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)\r\n\r\n<b>Warak inab</b>\r\nVegetariska vinbladsdolmar. (veg)\r\n\r\n<b>Batata Bel Kozbara</b>\r\nFriterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)\r\n\r\n<b>Falafel</b>\r\nFriterad kikärts- och bönröra med sesamsås. (veg)\r\n\r\n<b>Fatayer</b>\r\nSpenatpiroger. (veg)\r\n\r\n<b>Rakakat</b>\r\nOstrullar. (veg)\r\n\r\n<b>Halloumi</b>\r\nGrillad ost. (veg)\r\n\r\n<b>Tabbouli</b>\r\nFinhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(1346, 61, 'menu_structure', '<b>Hummus</b>\r\nKikärtsröra. (veg)\r\n\r\n<b>Muhammara</b>\r\nFinmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)\r\n\r\n<b>Warak inab</b>\r\nVegetariska vinbladsdolmar. (veg)\r\n\r\n<b>Ardishoki</b>\r\nKronärtskocka med citron- vitlöksmarinad. (veg)\r\n\r\n<b>Batata Bel Kozbara</b>\r\nFriterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)\r\n\r\n<b>Falafel</b>\r\nFriterad kikärts- och bönröra med sesamsås. (veg)\r\n\r\n<b>Fatayer</b>\r\nSpenatpiroger. (veg)\r\n\r\n<b>Tabbouli</b>\r\nFinhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(1521, 273, '_wp_attached_file', '2017/12/icon.png'),
(1522, 273, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:16:\"2017/12/icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1556, 275, '_edit_last', '1'),
(1557, 275, '_edit_lock', '1514994028:1'),
(1575, 275, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1576, 284, '_edit_last', '1'),
(1577, 284, '_edit_lock', '1514994050:1'),
(1579, 284, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1580, 285, '_edit_last', '1'),
(1581, 285, '_edit_lock', '1514994101:1'),
(1583, 285, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1584, 286, '_edit_last', '1'),
(1585, 286, '_edit_lock', '1514994148:1'),
(1587, 286, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1588, 287, '_edit_last', '1'),
(1590, 287, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1591, 287, '_edit_lock', '1514994195:1'),
(1592, 288, '_edit_last', '1'),
(1593, 288, '_edit_lock', '1514994239:1'),
(1595, 288, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1596, 289, '_edit_last', '1'),
(1597, 289, '_edit_lock', '1514994322:1'),
(1599, 289, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1600, 290, '_edit_last', '1'),
(1601, 290, '_edit_lock', '1514994702:1'),
(1603, 290, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1608, 293, '_wp_attached_file', '2018/01/placeholder-750x500.png'),
(1609, 293, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:745;s:6:\"height\";i:499;s:4:\"file\";s:31:\"2018/01/placeholder-750x500.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"placeholder-750x500-241x180.png\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"placeholder-750x500-373x250.png\";s:5:\"width\";i:373;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:31:\"placeholder-750x500-180x100.png\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:31:\"placeholder-750x500-600x280.png\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1610, 294, '_wp_attached_file', '2018/01/julbord.jpg'),
(1611, 294, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:649;s:4:\"file\";s:19:\"2018/01/julbord.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"julbord-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"julbord-173x250.jpg\";s:5:\"width\";i:173;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"julbord-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"julbord-450x280.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1612, 295, '_wp_attached_file', '2017/12/DSC5702.jpg'),
(1613, 295, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5825;s:6:\"height\";i:3227;s:4:\"file\";s:19:\"2017/12/DSC5702.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"DSC5702-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"DSC5702-375x208.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"DSC5702-768x425.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"DSC5702-1024x567.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:567;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"DSC5702-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"DSC5702-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409777966\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:1:\"8\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1614, 296, '_wp_attached_file', '2017/12/DSC5691.jpg'),
(1615, 296, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:2893;s:4:\"file\";s:19:\"2017/12/DSC5691.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"DSC5691-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"DSC5691-375x180.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"DSC5691-768x369.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:369;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"DSC5691-1024x492.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"DSC5691-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"DSC5691-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409777555\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"14\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:1:\"6\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1616, 275, '_thumbnail_id', '295'),
(1617, 284, '_thumbnail_id', '296'),
(1618, 297, '_wp_attached_file', '2017/12/DSC5652-1.jpg'),
(1619, 297, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5881;s:6:\"height\";i:3461;s:4:\"file\";s:21:\"2017/12/DSC5652-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"DSC5652-1-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"DSC5652-1-375x221.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"DSC5652-1-768x452.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"DSC5652-1-1024x603.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:603;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:21:\"DSC5652-1-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:21:\"DSC5652-1-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409776310\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.066666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1620, 285, '_thumbnail_id', '297'),
(1621, 298, '_wp_attached_file', '2017/12/DSC5593.jpg'),
(1622, 298, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5032;s:6:\"height\";i:2787;s:4:\"file\";s:19:\"2017/12/DSC5593.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"DSC5593-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"DSC5593-375x208.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"DSC5593-768x425.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"DSC5593-1024x567.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:567;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"DSC5593-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"DSC5593-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409774851\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1623, 286, '_thumbnail_id', '298'),
(1624, 299, '_wp_attached_file', '2017/12/DSC5481.jpg'),
(1625, 299, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5840;s:6:\"height\";i:3683;s:4:\"file\";s:19:\"2017/12/DSC5481.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"DSC5481-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"DSC5481-375x236.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:236;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"DSC5481-768x484.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:484;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"DSC5481-1024x646.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:646;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"DSC5481-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"DSC5481-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409772429\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"16\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1626, 287, '_thumbnail_id', '299'),
(1627, 300, '_wp_attached_file', '2017/12/DSC5433.jpg'),
(1628, 300, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3738;s:6:\"height\";i:5600;s:4:\"file\";s:19:\"2017/12/DSC5433.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"DSC5433-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"DSC5433-167x250.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC5433-768x1151.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"DSC5433-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"DSC5433-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"DSC5433-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409771960\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"14\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1629, 288, '_thumbnail_id', '300'),
(1633, 301, '_wp_attached_file', '2017/12/DSC1761.jpg'),
(1634, 301, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4016;s:6:\"height\";i:6016;s:4:\"file\";s:19:\"2017/12/DSC1761.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"DSC1761-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"DSC1761-167x250.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC1761-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"DSC1761-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"DSC1761-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"DSC1761-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1408636291\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"48\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:17:\"0.066666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1635, 289, '_thumbnail_id', '301'),
(1636, 302, '_wp_attached_file', '2017/12/DSC1645.jpg'),
(1637, 302, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:19:\"2017/12/DSC1645.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"DSC1645-241x180.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"DSC1645-375x250.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"DSC1645-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"DSC1645-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"owl_widget\";a:4:{s:4:\"file\";s:19:\"DSC1645-180x100.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"owl_function\";a:4:{s:4:\"file\";s:19:\"DSC1645-600x280.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1408631397\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"62\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:17:\"0.076923076923077\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1638, 290, '_thumbnail_id', '302'),
(1884, 170, 'price-glas', '89:-'),
(1885, 170, 'price-flaska', '462:-'),
(1886, 306, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(1887, 161, 'price-glas', '79:-'),
(1888, 161, 'price-flaska', '308:-'),
(1889, 167, 'price-glas', '79:-'),
(1890, 167, 'price-flaska', '308:-'),
(1891, 160, 'price-glas', '89:-'),
(1892, 160, 'price-flaska', '348:-'),
(1893, 159, 'price-glas', '95:-'),
(1894, 159, 'price-flaska', '372:-'),
(1895, 168, 'price-glas', '89:-'),
(1896, 168, 'price-flaska', '348:-'),
(1897, 166, 'price-glas', '85:-'),
(1898, 166, 'price-flaska', '332:-'),
(1899, 165, 'price-glas', '95:-'),
(1900, 165, 'price-flaska', '372:-'),
(1901, 7, '_yoast_wpseo_focuskw_text_input', 'Libanesisk restaurang Beirut Bistro'),
(1902, 7, '_yoast_wpseo_focuskw', 'Libanesisk restaurang Beirut Bistro'),
(1903, 7, '_yoast_wpseo_metadesc', 'Libanesisk restaurang Beirut Bistro erbjuder olika paketlösningar för stora sällskap och diverse drycker i den vackert utsmyckade baren.'),
(1904, 7, '_yoast_wpseo_linkdex', '75'),
(1905, 7, '_yoast_wpseo_content_score', '30'),
(1906, 86, '_yoast_wpseo_primary_menu_category', ''),
(1907, 86, '_extra_menu_structure_-_title_menu_0', 'Hummus'),
(1908, 86, '_extra_menu_structure_-_description_menu_0', 'Kikärtsröra. (veg)'),
(1909, 86, '_extra_menu_structure_-_img_menu_0', '104'),
(1910, 86, '_extra_menu_structure_-_title_menu_1', 'Labneh'),
(1911, 86, '_extra_menu_structure_-_description_menu_1', 'Libanesisk kryddad yoghurt med oliver. (veg)'),
(1912, 86, '_extra_menu_structure_-_img_menu_1', '59'),
(1913, 86, '_extra_menu_structure_-_title_menu_2', 'Tarator de jez'),
(1914, 86, '_extra_menu_structure_-_description_menu_2', 'Kycklingröra.'),
(1915, 86, '_extra_menu_structure_-_img_menu_2', '94'),
(1916, 86, '_extra_menu_structure_-_title_menu_3', 'Muhammara'),
(1917, 86, '_extra_menu_structure_-_description_menu_3', 'Finmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)'),
(1918, 86, '_extra_menu_structure_-_img_menu_3', '96'),
(1919, 86, '_extra_menu_structure_-_title_menu_4', 'Ton motabal'),
(1920, 86, '_extra_menu_structure_-_description_menu_4', 'Tonfiskröra.'),
(1921, 86, '_extra_menu_structure_-_img_menu_4', '139'),
(1922, 86, '_extra_menu_structure_-_title_menu_5', 'Batata Bel Kozbara'),
(1923, 86, '_extra_menu_structure_-_description_menu_5', 'Friterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)'),
(1924, 86, '_extra_menu_structure_-_img_menu_5', '128'),
(1925, 86, '_extra_menu_structure_-_title_menu_6', 'Falafel'),
(1926, 86, '_extra_menu_structure_-_description_menu_6', 'Friterad kikärts- och bönröra med sesamsås. (veg)'),
(1927, 86, '_extra_menu_structure_-_img_menu_6', '124'),
(1928, 86, '_extra_menu_structure_-_title_menu_7', 'Fatayer'),
(1929, 86, '_extra_menu_structure_-_description_menu_7', 'Spenatpiroger. (veg)'),
(1930, 86, '_extra_menu_structure_-_img_menu_7', '122'),
(1931, 86, '_extra_menu_structure_-_title_menu_8', 'Rakakat'),
(1932, 86, '_extra_menu_structure_-_description_menu_8', 'Ostrullar. (veg)'),
(1933, 86, '_extra_menu_structure_-_img_menu_8', '120'),
(1934, 86, '_extra_menu_structure_-_title_menu_9', 'Sambosek'),
(1935, 86, '_extra_menu_structure_-_description_menu_9', 'Nötfärspiroger. '),
(1936, 86, '_extra_menu_structure_-_img_menu_9', '117'),
(1937, 86, '_extra_menu_structure_-_title_menu_10', 'Halloumi'),
(1938, 86, '_extra_menu_structure_-_description_menu_10', 'Grillad ost. (veg)'),
(1939, 86, '_extra_menu_structure_-_img_menu_10', '113'),
(1940, 86, '_extra_menu_structure_-_title_menu_11', 'Tabbouli'),
(1941, 86, '_extra_menu_structure_-_description_menu_11', 'Finhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(1942, 86, '_extra_menu_structure_-_img_menu_11', '144'),
(1943, 86, '_yoast_wpseo_content_score', '30'),
(1944, 85, '_yoast_wpseo_primary_menu_category', ''),
(1945, 85, '_extra_menu_structure_-_title_menu_0', 'Hummus'),
(1946, 85, '_extra_menu_structure_-_description_menu_0', 'Kikärtsröra. (veg)'),
(1947, 85, '_extra_menu_structure_-_img_menu_0', '104'),
(1948, 85, '_extra_menu_structure_-_title_menu_1', 'Labneh'),
(1949, 85, '_extra_menu_structure_-_description_menu_1', 'Libanesisk kryddad yoghurt med oliver. (veg)'),
(1950, 85, '_extra_menu_structure_-_img_menu_1', '102'),
(1951, 85, '_extra_menu_structure_-_title_menu_2', 'Tarator de jez'),
(1952, 85, '_extra_menu_structure_-_description_menu_2', 'Kycklingröra.'),
(1953, 85, '_extra_menu_structure_-_img_menu_2', '94'),
(1954, 85, '_extra_menu_structure_-_title_menu_3', 'Baba Ganoush'),
(1955, 85, '_extra_menu_structure_-_description_menu_3', 'Auberginröra. (veg)'),
(1956, 85, '_extra_menu_structure_-_img_menu_3', '98'),
(1957, 85, '_extra_menu_structure_-_title_menu_4', 'Muhammara'),
(1958, 85, '_extra_menu_structure_-_description_menu_4', 'Finmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)'),
(1959, 85, '_extra_menu_structure_-_img_menu_4', '96'),
(1960, 85, '_extra_menu_structure_-_title_menu_5', 'Warak inab'),
(1961, 85, '_extra_menu_structure_-_description_menu_5', 'Vegetariska vinbladsdolmar. (veg)'),
(1962, 85, '_extra_menu_structure_-_img_menu_5', '100'),
(1963, 85, '_extra_menu_structure_-_title_menu_6', 'Ton motabal'),
(1964, 85, '_extra_menu_structure_-_description_menu_6', 'Tonfiskröra.'),
(1965, 85, '_extra_menu_structure_-_img_menu_6', '139'),
(1966, 85, '_extra_menu_structure_-_title_menu_7', 'Batata Bel Kozbara'),
(1967, 85, '_extra_menu_structure_-_description_menu_7', 'Friterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)'),
(1968, 85, '_extra_menu_structure_-_img_menu_7', '128'),
(1969, 85, '_extra_menu_structure_-_title_menu_8', 'Falafel'),
(1970, 85, '_extra_menu_structure_-_description_menu_8', 'Friterad kikärts- och bönröra med sesamsås. (veg)'),
(1971, 85, '_extra_menu_structure_-_img_menu_8', '124'),
(1972, 85, '_extra_menu_structure_-_title_menu_9', 'Fatayer'),
(1973, 85, '_extra_menu_structure_-_description_menu_9', 'Spenatpiroger. (veg)'),
(1974, 85, '_extra_menu_structure_-_img_menu_9', '122'),
(1975, 85, '_extra_menu_structure_-_title_menu_10', 'Rakakat'),
(1976, 85, '_extra_menu_structure_-_description_menu_10', 'Ostrullar. (veg)'),
(1977, 85, '_extra_menu_structure_-_img_menu_10', '120'),
(1978, 85, '_extra_menu_structure_-_title_menu_11', 'Sambosek'),
(1979, 85, '_extra_menu_structure_-_description_menu_11', 'Nötfärspiroger. '),
(1980, 85, '_extra_menu_structure_-_img_menu_11', '117'),
(1981, 85, '_extra_menu_structure_-_title_menu_12', 'Halloumi'),
(1982, 85, '_extra_menu_structure_-_description_menu_12', 'Grillad ost. (veg)'),
(1983, 85, '_extra_menu_structure_-_img_menu_12', '113'),
(1984, 85, '_extra_menu_structure_-_title_menu_13', 'Kraydes michvie'),
(1985, 85, '_extra_menu_structure_-_description_menu_13', 'Grillade vitlöksmarinerade tigerräkor.'),
(1986, 85, '_extra_menu_structure_-_img_menu_13', '133'),
(1987, 85, '_extra_menu_structure_-_title_menu_14', 'Tabbouli'),
(1988, 85, '_extra_menu_structure_-_description_menu_14', 'Finhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(1989, 85, '_extra_menu_structure_-_img_menu_14', '144'),
(1990, 85, '_yoast_wpseo_content_score', '30'),
(1991, 84, '_yoast_wpseo_primary_menu_category', ''),
(1992, 84, '_extra_menu_structure_-_title_menu_0', 'Hummus'),
(1993, 84, '_extra_menu_structure_-_description_menu_0', 'Kikärtsröra. (veg)'),
(1994, 84, '_extra_menu_structure_-_img_menu_0', '104'),
(1995, 84, '_extra_menu_structure_-_title_menu_1', 'Labneh'),
(1996, 84, '_extra_menu_structure_-_description_menu_1', 'Libanesisk kryddad yoghurt med oliver. (veg)'),
(1997, 84, '_extra_menu_structure_-_img_menu_1', '102'),
(1998, 84, '_extra_menu_structure_-_title_menu_2', 'Tarator de jez'),
(1999, 84, '_extra_menu_structure_-_description_menu_2', 'Kycklingröra.'),
(2000, 84, '_extra_menu_structure_-_img_menu_2', '94'),
(2001, 84, '_extra_menu_structure_-_title_menu_3', 'Baba Ganoush'),
(2002, 84, '_extra_menu_structure_-_description_menu_3', 'Auberginröra. (veg)'),
(2003, 84, '_extra_menu_structure_-_img_menu_3', '98'),
(2004, 84, '_extra_menu_structure_-_title_menu_4', 'Muhammara'),
(2005, 84, '_extra_menu_structure_-_description_menu_4', 'Finmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)'),
(2006, 84, '_extra_menu_structure_-_img_menu_4', '96'),
(2007, 84, '_extra_menu_structure_-_title_menu_5', 'Warak inab'),
(2008, 84, '_extra_menu_structure_-_description_menu_5', 'Vegetariska vinbladsdolmar. (veg)'),
(2009, 84, '_extra_menu_structure_-_img_menu_5', '100'),
(2010, 84, '_extra_menu_structure_-_title_menu_6', 'Ton motabal'),
(2011, 84, '_extra_menu_structure_-_description_menu_6', 'Tonfiskröra.'),
(2012, 84, '_extra_menu_structure_-_img_menu_6', '139'),
(2013, 84, '_extra_menu_structure_-_title_menu_7', 'Batata Bel Kozbara'),
(2014, 84, '_extra_menu_structure_-_description_menu_7', 'Friterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)'),
(2015, 84, '_extra_menu_structure_-_img_menu_7', '128'),
(2016, 84, '_extra_menu_structure_-_title_menu_8', 'Falafel'),
(2017, 84, '_extra_menu_structure_-_description_menu_8', 'Friterad kikärts- och bönröra med sesamsås. (veg)'),
(2018, 84, '_extra_menu_structure_-_img_menu_8', '124'),
(2019, 84, '_extra_menu_structure_-_title_menu_9', 'Fatayer'),
(2020, 84, '_extra_menu_structure_-_description_menu_9', 'Spenatpiroger. (veg)'),
(2021, 84, '_extra_menu_structure_-_img_menu_9', '122'),
(2022, 84, '_extra_menu_structure_-_title_menu_10', 'Rakakat'),
(2023, 84, '_extra_menu_structure_-_description_menu_10', 'Ostrullar. (veg)'),
(2024, 84, '_extra_menu_structure_-_img_menu_10', '120'),
(2025, 84, '_extra_menu_structure_-_title_menu_11', 'Sambosek'),
(2026, 84, '_extra_menu_structure_-_description_menu_11', 'Nötfärspiroger. '),
(2027, 84, '_extra_menu_structure_-_img_menu_11', '117'),
(2028, 84, '_extra_menu_structure_-_title_menu_12', 'Jowaneh michvie'),
(2029, 84, '_extra_menu_structure_-_description_menu_12', 'Marinerade grillade kycklingvingar.'),
(2030, 84, '_extra_menu_structure_-_img_menu_12', '115'),
(2031, 84, '_extra_menu_structure_-_title_menu_13', 'Halloumi'),
(2032, 84, '_extra_menu_structure_-_description_menu_13', 'Grillad ost. (veg)'),
(2033, 84, '_extra_menu_structure_-_img_menu_13', '113'),
(2034, 84, '_extra_menu_structure_-_title_menu_14', 'Kraydes michvie'),
(2035, 84, '_extra_menu_structure_-_description_menu_14', 'Grillade vitlöksmarinerade tigerräkor.'),
(2036, 84, '_extra_menu_structure_-_img_menu_14', '133'),
(2037, 84, '_extra_menu_structure_-_title_menu_15', 'Tabbouli'),
(2038, 84, '_extra_menu_structure_-_description_menu_15', 'Finhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(2039, 84, '_extra_menu_structure_-_img_menu_15', '144'),
(2040, 84, '_yoast_wpseo_content_score', '30'),
(2041, 83, '_yoast_wpseo_primary_menu_category', ''),
(2042, 83, '_extra_menu_structure_-_title_menu_0', 'Hummus'),
(2043, 83, '_extra_menu_structure_-_description_menu_0', 'Kikärtsröra. (veg)'),
(2044, 83, '_extra_menu_structure_-_img_menu_0', '104'),
(2045, 83, '_extra_menu_structure_-_title_menu_1', 'Baba Ganoush'),
(2046, 83, '_extra_menu_structure_-_description_menu_1', 'Auberginröra. (veg)'),
(2047, 83, '_extra_menu_structure_-_img_menu_1', '98'),
(2048, 83, '_extra_menu_structure_-_title_menu_2', 'Muhammara'),
(2049, 83, '_extra_menu_structure_-_description_menu_2', 'Finmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)'),
(2050, 83, '_extra_menu_structure_-_img_menu_2', '96'),
(2051, 83, '_extra_menu_structure_-_title_menu_3', 'Warak inab'),
(2052, 83, '_extra_menu_structure_-_description_menu_3', 'Vegetariska vinbladsdolmar. (veg)'),
(2053, 83, '_extra_menu_structure_-_img_menu_3', '100'),
(2054, 83, '_extra_menu_structure_-_title_menu_4', 'Batata Bel Kozbara'),
(2055, 83, '_extra_menu_structure_-_description_menu_4', 'Friterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)'),
(2056, 83, '_extra_menu_structure_-_img_menu_4', '128'),
(2057, 83, '_extra_menu_structure_-_title_menu_5', 'Falafel'),
(2058, 83, '_extra_menu_structure_-_description_menu_5', 'Friterad kikärts- och bönröra med sesamsås. (veg)'),
(2059, 83, '_extra_menu_structure_-_img_menu_5', '124'),
(2060, 83, '_extra_menu_structure_-_title_menu_6', 'Fatayer'),
(2061, 83, '_extra_menu_structure_-_description_menu_6', 'Spenatpiroger. (veg)'),
(2062, 83, '_extra_menu_structure_-_img_menu_6', '122'),
(2063, 83, '_extra_menu_structure_-_title_menu_7', 'Rakakat'),
(2064, 83, '_extra_menu_structure_-_description_menu_7', 'Ostrullar. (veg)'),
(2065, 83, '_extra_menu_structure_-_img_menu_7', '120'),
(2066, 83, '_extra_menu_structure_-_title_menu_8', 'Halloumi'),
(2067, 83, '_extra_menu_structure_-_description_menu_8', 'Grillad ost. (veg)'),
(2068, 83, '_extra_menu_structure_-_img_menu_8', '113'),
(2069, 83, '_extra_menu_structure_-_title_menu_9', 'Tabbouli'),
(2070, 83, '_extra_menu_structure_-_description_menu_9', 'Finhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(2071, 83, '_extra_menu_structure_-_img_menu_9', '144'),
(2072, 83, '_yoast_wpseo_content_score', '30'),
(2073, 61, '_yoast_wpseo_primary_menu_category', ''),
(2074, 61, '_extra_menu_structure_-_title_menu_0', 'Hummus'),
(2075, 61, '_extra_menu_structure_-_description_menu_0', 'Kikärtsröra. (veg)'),
(2076, 61, '_extra_menu_structure_-_img_menu_0', '104'),
(2077, 61, '_extra_menu_structure_-_title_menu_1', 'Muhammara'),
(2078, 61, '_extra_menu_structure_-_description_menu_1', 'Finmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)'),
(2079, 61, '_extra_menu_structure_-_img_menu_1', '96'),
(2080, 61, '_extra_menu_structure_-_title_menu_2', 'Warak inab'),
(2081, 61, '_extra_menu_structure_-_description_menu_2', 'Vegetariska vinbladsdolmar. (veg)'),
(2082, 61, '_extra_menu_structure_-_img_menu_2', '100'),
(2083, 61, '_extra_menu_structure_-_title_menu_3', 'Ardishoki'),
(2084, 61, '_extra_menu_structure_-_description_menu_3', 'Kronärtskocka med citron- vitlöksmarinad. (veg)'),
(2085, 61, '_extra_menu_structure_-_img_menu_3', '92'),
(2086, 61, '_extra_menu_structure_-_title_menu_4', 'Batata Bel Kozbara'),
(2087, 61, '_extra_menu_structure_-_description_menu_4', 'Friterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)'),
(2088, 61, '_extra_menu_structure_-_img_menu_4', '128'),
(2089, 61, '_extra_menu_structure_-_title_menu_5', 'Falafel'),
(2090, 61, '_extra_menu_structure_-_description_menu_5', 'Friterad kikärts- och bönröra med sesamsås. (veg)');
INSERT INTO `wd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2091, 61, '_extra_menu_structure_-_img_menu_5', '124'),
(2092, 61, '_extra_menu_structure_-_title_menu_6', 'Fatayer'),
(2093, 61, '_extra_menu_structure_-_description_menu_6', 'Spenatpiroger. (veg)'),
(2094, 61, '_extra_menu_structure_-_img_menu_6', '122'),
(2095, 61, '_extra_menu_structure_-_title_menu_7', 'Tabbouli'),
(2096, 61, '_extra_menu_structure_-_description_menu_7', 'Finhackad bladpersilja, tomat, lök, citron och bulgur. (veg)'),
(2097, 61, '_extra_menu_structure_-_img_menu_7', '144'),
(2098, 61, '_yoast_wpseo_content_score', '30'),
(2099, 308, '_wp_attached_file', '2018/02/export-public-20171228-f963157102a9ef38bad3492269b4ed4baeda6021.csv');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_posts`
--

CREATE TABLE `wd_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_posts`
--

INSERT INTO `wd_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-10-13 11:54:49', '2017-10-13 11:54:49', 'Vi serverar libanesisk lunch med salladsbuffé. Vardagar 11-14, Pris 95 kr (inkl måltidsdryck, bröd och kaffe)<!--more-->', 'Lunch med salladsbuffé', '', 'publish', 'open', 'open', '', 'lunch-med-salladsbuffe', '', '', '2017-11-29 08:52:25', '2017-11-29 08:52:25', '', 0, 'http://ns6.inleed.net/~beirutbist/?p=1', 0, 'post', '', 1),
(4, 1, '2017-10-13 12:25:36', '2017-10-13 12:25:36', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2017-10-13 12:25:36', '2017-10-13 12:25:36', '', 0, 'http://test.loc/wp-content/uploads/2017/10/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-10-13 12:25:36', '2017-10-13 12:25:36', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2017-10-13 12:25:36', '2017-10-13 12:25:36', '', 0, 'http://test.loc/wp-content/uploads/2017/10/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-10-13 12:25:36', '2017-10-13 12:25:36', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2017-10-13 12:25:36', '2017-10-13 12:25:36', '', 0, 'http://test.loc/wp-content/uploads/2017/10/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-10-13 12:25:36', '2017-10-13 12:25:36', '<a id=\"welcome\"></a>\n <h1 class=\'fw-special-title\'>Välkommen</h1> \n<p>Strax intill den vackra Hornsbergs strand i Stockholm ligger Beirut Bistro. En gemytlig kvarterskrog som bjuder på en vacker utsikt över Ulvsundasjön.</p><p>Menyn består av ungefär 30 traditionella libanesiska smårätter (meze) och ett antal varmrätter från grillen. Beirut Bistro erbjuder olika paketlösningar för stora sällskap och diverse drycker i den vackert utsmyckade baren.Bland Beirut Bistros meze-alternativ finns hommos, vindolmar, spenatpiroger, tzatziki och falafel. Utöver meze går det också att beställa rätter från den breda grillmenyn.</p><p>Beirut Bistro är inredd på ett modernt libanesiskt vis och trivselfaktorn är hög. Arkitekturen i lokalen är väl genomtänkt med två gäst toaletter varav en handikappanpassad på nedre våning och en vanlig gäst toalett på övre våning. Med 35 sittplatser på nedre våning och 55 sittplatser på övre våning kan Beirut Bistro erbjuda större sällskap ett mer avskiljt upplevelse.</p><p>Beirut Bistro på Hornsbergs strand 85 ligger på gångavstånd till både Kristinebergs och Stadshagens tunnelbana.</p>\n<h3>Avvikande öppettider</h3><p>2/1-5/1, Lunchstängt, Öppet fr 16</p><h3>ÖppettiderLunch</h3><p>Mån-fre 11-14</p><h3>Middag</h3><p>Mån, 16-21Tis-Tor, 16-22Fre-Lör, 16-23</p><h3>AW</h3><p>Mån-fre 14-17</p>\n <a id=\"dishes-menu\"></a>\n Menu / Take Away\n <a href=\"#5\" data-toggle=\"pill\">Avsmakningsmeny</a>\n <a href=\"#13\" data-toggle=\"pill\">Barnmeny</a>\n <a href=\"#12\" data-toggle=\"pill\">Från havet</a>\n <a href=\"#10\" data-toggle=\"pill\">Kött</a>\n <a href=\"#11\" data-toggle=\"pill\">Kyckling</a>\n <a href=\"#21\" data-toggle=\"pill\">Lunch</a>\n <a href=\"#8\" data-toggle=\"pill\">Meze - Från havet</a>\n <a href=\"#6\" data-toggle=\"pill\">Meze - Kalla</a>\n <a href=\"#7\" data-toggle=\"pill\">Meze - Varma</a>\n <a href=\"#9\" data-toggle=\"pill\">Sallad</a>\n <a href=\"#14\" data-toggle=\"pill\">Dessert</a>\n <a href=\"#18\" data-toggle=\"pill\">Champagne</a>\n <a href=\"#20\" data-toggle=\"pill\">Cider</a>\n <a href=\"#19\" data-toggle=\"pill\">Öl</a>\n <a href=\"#16\" data-toggle=\"pill\">Röda viner</a>\n <a href=\"#17\" data-toggle=\"pill\">Rose viner</a>\n <a href=\"#15\" data-toggle=\"pill\">Vita viner</a>\n<a id=\"book-table\"></a>\n Book a table\n <a target=\"_blank\" class=\"btn btn-green\" href=\"http://www.beirutbistro.se/mobile-book-a-table.html\">Boka bord</a>\n Omdömmen hos Thefork\n Omdöme i genomsnitt9.5/10MAT10Service8Miljö, atmosfär10Veronica S.Måltidens datum: 16 Dec 2017God mat och fint i restaurangen.Omdöme i genomsnitt10/10MAT10Service10Miljö, atmosfär10Magnus l.Måltidens datum: 15 Dec 2017God mat . Duktig personal som klarade av ett större sällskap alldeles utmärkt.Omdöme i genomsnitt10/10MAT10Service10Miljö, atmosfär10maria .Måltidens datum: 17 Nov 2017Toopenrestaurang med god matOmdöme i genomsnitt10/10MAT10Service10Miljö, atmosfär10Jerry R.Måltidens datum: 24 Nov 2017Grönsaksmixtallriken perfektOmdöme i genomsnitt8/10MAT8Service10Miljö, atmosfär6Mattias E.Måltidens datum: 09 Dec 2017Lite stökigt och hög volym. grym personal och service! God matOmdöme i genomsnitt10/10MAT10Service10Miljö, atmosfär10Gunilla L.Måltidens datum: 16 Dec 2017Härlig och serviceinriktad personal. Fantastiskt gott julbord❤️Omdöme i genomsnitt4.5/10MAT4Service4Miljö, atmosfär6Håkan G.Måltidens datum: 05 Dec 2017NjaOmdöme i genomsnitt10/10MAT10Service10Miljö, atmosfär10Sedat K.Måltidens datum: 05 Dec 2017Fantastiskt som vanligtOmdöme i genomsnitt10/10MAT10Service10Miljö, atmosfär10Fredrik N.Måltidens datum: 05 Dec 2017Oväntat gott och trevlig atmosfärOmdöme i genomsnitt9.5/10MAT10Service10Miljö, atmosfär8Ann H.Måltidens datum: 25 Nov 2017Snabb och bra service. Mycket god mat. \n Se fler omdömen hos the fork <a href=\"https://www.thefork.se/restaurang/beirut-bistro/76090#reviews\">beirut bistro</a>\n <a id=\"actions\"></a>\n Övrigt\n <img src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/10/wedding-205x136-184x123.jpg\" alt=\"Events - Konferens/Bröllop/Dop/Förlovning\">\n Events - Konferens/Bröllop/Dop/Förlovning\n Vi kan arrangera event för större sällskap. Vår salong rymmer uppemot 90 sittplatser.\n <img src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/10/christmas2-205x136-184x123.jpg\" alt=\"Libanesiskt julbord\">\n Libanesiskt julbord\n Trött på samma gamla vanliga julbord? Hos oss hittar du ett julbord som består av ljuvliga libanesiska rätter samt kaffe och dessert. Serveras från den 15 November.\n <img src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/10/lunchmini-205x136-184x123.jpg\" alt=\"Lunch med salladsbuffé\">\n Lunch med salladsbuffé\n Vi serverar libanesisk lunch med salladsbuffé. Vardagar 11-14, Pris 95 kr (inkl måltidsdryck, bröd och kaffe)\n <a id=\"gallery\"></a>\n Galleri\n Ta del av vår restaurang nedan och på twitter/instagram #beirutbistrose\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5702.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 1\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5702-241x180.jpg\" alt=\"beirut bistro 1\"/>\n </a>\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5691.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 2\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5691-241x180.jpg\" alt=\"beirut bistro 2\"/>\n </a>\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5652-1.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 3\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5652-1-241x180.jpg\" alt=\"beirut bistro 3\"/>\n </a>\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5593.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 4\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5593-241x180.jpg\" alt=\"beirut bistro 4\"/>\n </a>\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5481.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 5\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5481-241x180.jpg\" alt=\"beirut bistro 5\"/>\n </a>\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5433.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 8\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5433-241x180.jpg\" alt=\"beirut bistro 8\"/>\n </a>\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1761.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 6\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1761-241x180.jpg\" alt=\"beirut bistro 6\"/>\n </a>\n <a href=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1645.jpg\" data-fancybox=\"gallery\">\n <img title=\"beirut bistro 7\" src=\"http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1645-241x180.jpg\" alt=\"beirut bistro 7\"/>\n </a>\n<a id=\"gmap\" name=\"gmap\"></a>\n\n<!-- 21c3dd2ed05f6b1756551f300af650ba -->', 'Home', '', 'publish', 'closed', 'closed', '', 'libanesisk-restaurang-beirut-bistro', '', '', '2018-01-12 11:16:41', '2018-01-12 11:16:41', '', 0, 'http://test.loc/?page_id=7', 0, 'page', '', 0),
(9, 1, '2017-10-13 12:25:36', '2017-10-13 12:25:36', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-10-13 12:25:36', '2017-10-13 12:25:36', '', 0, 'http://test.loc/?page_id=9', 0, 'page', '', 0),
(23, 1, '2017-10-13 12:25:37', '2017-10-13 12:25:37', '', '<img src=\"/wp-content/themes/webdom/builder/build/assets/img/icon_facebook.png\" alt=\"Facebook\">', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-12-20 08:14:43', '2017-12-20 08:14:43', '', 0, 'http://test.loc/index.php/2017/10/13/facebook/', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-10-13 12:25:37', '2017-10-13 12:25:37', '', '<img src=\"/wp-content/themes/webdom/builder/build/assets/img/icon_twitter.png\" alt=\"Twitter\">', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-12-20 08:14:43', '2017-12-20 08:14:43', '', 0, 'http://test.loc/index.php/2017/10/13/twitter/', 2, 'nav_menu_item', '', 0),
(25, 1, '2017-10-13 12:25:37', '2017-10-13 12:25:37', '', '<img src=\"/wp-content/themes/webdom/builder/build/assets/img/icon_instagram.png\" alt=\"Instagram\">', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-12-20 08:14:43', '2017-12-20 08:14:43', '', 0, 'http://test.loc/index.php/2017/10/13/instagram/', 3, 'nav_menu_item', '', 0),
(33, 1, '2017-11-21 08:11:51', '2017-11-21 08:11:51', '', 'Om Beirut Bistro', '', 'publish', 'closed', 'closed', '', 'om-beirut-bistro-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-11-21 08:11:51', '2017-11-21 08:11:51', '', 'Menu / Take Away', '', 'publish', 'closed', 'closed', '', 'menu-take-away-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2017-11-21 08:11:51', '2017-11-21 08:11:51', '', 'Book a table', '', 'publish', 'closed', 'closed', '', 'book-a-table-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=35', 14, 'nav_menu_item', '', 0),
(36, 1, '2017-11-21 08:11:51', '2017-11-21 08:11:51', '', 'Övrigt', '', 'publish', 'closed', 'closed', '', 'ovrigt-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=36', 15, 'nav_menu_item', '', 0),
(37, 1, '2017-11-21 08:11:51', '2017-11-21 08:11:51', '', 'Galleri', '', 'publish', 'closed', 'closed', '', 'galleri-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=37', 16, 'nav_menu_item', '', 0),
(38, 1, '2017-11-21 08:11:51', '2017-11-21 08:11:51', '', 'Hitta oss', '', 'publish', 'closed', 'closed', '', 'hitta-oss-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=38', 17, 'nav_menu_item', '', 0),
(39, 1, '2017-11-21 08:27:24', '2017-11-21 08:27:24', '', '<img src=\"/wp-content/themes/webdom/builder/build/assets/img/icon_xxx.png\" alt=\"Tripadvisor\">', '', 'publish', 'closed', 'closed', '', '39', '', '', '2017-12-20 08:14:43', '2017-12-20 08:14:43', '', 0, 'http://test.loc/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2017-11-21 08:39:46', '2017-11-21 08:39:46', '', 'Om Beirut Bistro', '', 'publish', 'closed', 'closed', '', 'om-beirut-bistro', '', '', '2018-01-11 15:07:23', '2018-01-11 15:07:23', '', 0, 'http://test.loc/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2017-11-21 08:39:46', '2017-11-21 08:39:46', '', 'Meny', '', 'publish', 'closed', 'closed', '', 'meny', '', '', '2018-01-11 15:07:23', '2018-01-11 15:07:23', '', 0, 'http://test.loc/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2017-11-21 08:39:46', '2017-11-21 08:39:46', '', 'Book a table', '', 'publish', 'closed', 'closed', '', 'book-a-table', '', '', '2018-01-11 15:07:23', '2018-01-11 15:07:23', '', 0, 'http://test.loc/?p=42', 3, 'nav_menu_item', '', 0),
(43, 1, '2017-11-21 08:39:46', '2017-11-21 08:39:46', '', 'Övrigt', '', 'publish', 'closed', 'closed', '', 'ovrigt', '', '', '2018-01-11 15:07:23', '2018-01-11 15:07:23', '', 0, 'http://test.loc/?p=43', 4, 'nav_menu_item', '', 0),
(44, 1, '2017-11-21 08:39:46', '2017-11-21 08:39:46', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-01-11 15:07:23', '2018-01-11 15:07:23', '', 0, 'http://test.loc/?p=44', 5, 'nav_menu_item', '', 0),
(59, 1, '2017-11-21 13:31:03', '2017-11-21 13:31:03', '', 'placeholder-375x250', '', 'inherit', 'open', 'closed', '', 'placeholder-375x250', '', '', '2017-11-21 13:31:32', '2017-11-21 13:31:32', '', 0, 'http://test.loc/wp-content/uploads/2017/11/placeholder-375x250.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2017-11-21 14:47:18', '2017-11-21 14:47:18', '<p>Vegan meze mixtallrik, 8 meze kalla &amp; varma.</p>', 'Vegan meze mixtallrik', 'Vegan meze mixtallrik, 8 meze kalla & varma. ..', 'publish', 'closed', 'closed', '', 'vegan-meze-mixtallrik', '', '', '2018-02-09 07:27:20', '2018-02-09 07:27:20', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=61', 0, 'restaurant', '', 0),
(65, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=66', 9, 'nav_menu_item', '', 0),
(67, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=67', 14, 'nav_menu_item', '', 0),
(69, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=69', 10, 'nav_menu_item', '', 0),
(70, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=70', 8, 'nav_menu_item', '', 0),
(71, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=71', 6, 'nav_menu_item', '', 0),
(72, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=72', 7, 'nav_menu_item', '', 0),
(74, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=74', 4, 'nav_menu_item', '', 0),
(75, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2017-11-21 16:17:13', '2017-11-21 16:17:13', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=77', 15, 'nav_menu_item', '', 0),
(78, 1, '2017-11-21 16:17:14', '2017-11-21 16:17:14', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=78', 12, 'nav_menu_item', '', 0),
(79, 1, '2017-11-21 16:17:14', '2017-11-21 16:17:14', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=79', 13, 'nav_menu_item', '', 0),
(80, 1, '2017-11-21 16:17:14', '2017-11-21 16:17:14', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=80', 5, 'nav_menu_item', '', 0),
(81, 1, '2017-11-21 16:17:14', '2017-11-21 16:17:14', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2018-02-14 09:08:58', '2018-02-14 09:08:58', '', 0, 'http://test.loc/?p=81', 11, 'nav_menu_item', '', 0),
(83, 1, '2017-11-22 07:38:19', '2017-11-22 07:38:19', '<p>Vegetarisk meze mixtallrik, 10 meze kalla &amp; varma.</p>', 'Vegetarisk meze mixtallrik', 'Vegetarisk meze mixtallrik, 10 meze kalla & varma. ..', 'publish', 'closed', 'closed', '', 'vegetarisk-meze-mixtallrik', '', '', '2018-02-09 07:26:56', '2018-02-09 07:26:56', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=83', 0, 'restaurant', '', 0),
(84, 1, '2017-11-22 07:39:01', '2017-11-22 07:39:01', '<p>16 meze, kalla &amp; varma. Minimum 2 personer. Priset avser per person.</p>', 'Meny 2', '16 meze, kalla & varma. Minimum 2 personer. Priset avser per person...', 'publish', 'closed', 'closed', '', 'meny-2', '', '', '2018-02-09 07:26:31', '2018-02-09 07:26:31', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=84', 0, 'restaurant', '', 0),
(85, 1, '2017-11-22 07:39:49', '2017-11-22 07:39:49', '<p>15 meze kalla &amp; varma med grillmix. Minimum 2 personer. Priset avser per person.</p>', 'Meny 3', '15 meze kalla & varma med grillmix. Minimum 2 personer. Priset avser per person...', 'publish', 'closed', 'closed', '', 'meny-3', '', '', '2018-02-09 07:25:56', '2018-02-09 07:25:56', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=85', 0, 'restaurant', '', 0),
(86, 1, '2017-11-22 07:40:33', '2017-11-22 07:40:33', '<p>12 meze, kalla &amp; varma med grillmix. Minimum 2 personer. Priset avser per person.</p>', 'Meny 1', '12 meze, kalla & varma med grillmix. Minimum 2 personer. Priset avser per person...', 'publish', 'closed', 'closed', '', 'meny-1', '', '', '2018-02-09 07:25:08', '2018-02-09 07:25:08', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=86', 0, 'restaurant', '', 0),
(87, 1, '2017-11-22 07:41:37', '2017-11-22 07:41:37', 'Råbiff på oxrulle med burgul, rödlök, mynta och vitlökskräm...', 'Kebbe Naje', 'Råbiff på oxrulle med burgul, rödlök, mynta och vitlökskräm...', 'publish', 'closed', 'closed', '', 'kebbe-naje', '', '', '2017-11-22 07:41:37', '2017-11-22 07:41:37', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=87', 0, 'restaurant', '', 0),
(88, 1, '2017-11-22 07:43:33', '2017-11-22 07:43:33', 'Saltad och marinerad lufttorkad oxfilé...', 'Basterma', 'Saltad och marinerad lufttorkad oxfilé...', 'publish', 'closed', 'closed', '', 'basterma', '', '', '2017-11-22 07:43:33', '2017-11-22 07:43:33', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=88', 0, 'restaurant', '', 0),
(89, 1, '2017-11-22 07:43:13', '2017-11-22 07:43:13', '', '13.-Basterma-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '13-basterma-750x500-w-50-middle-375x250', '', '', '2017-11-22 07:43:13', '2017-11-22 07:43:13', '', 88, 'http://test.loc/wp-content/uploads/2017/11/13.-Basterma-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2017-11-22 07:44:39', '2017-11-22 07:44:39', 'Hemlagad kryddad ost med tomater, paprika, lök, oliver och olivolja. (veg)..', 'Shanklish', 'Hemlagad kryddad ost med tomater, paprika, lök, oliver och olivolja. (veg)..', 'publish', 'closed', 'closed', '', 'shanklish', '', '', '2017-11-22 07:44:39', '2017-11-22 07:44:39', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=90', 0, 'restaurant', '', 0),
(91, 1, '2017-11-22 07:46:12', '2017-11-22 07:46:12', 'Kronärtskocka med citron- vitlöksmarinad. (veg)..', 'Ardishoki', 'Kronärtskocka med citron- vitlöksmarinad. (veg)..', 'publish', 'closed', 'closed', '', 'ardishoki', '', '', '2017-11-22 07:46:12', '2017-11-22 07:46:12', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=91', 0, 'restaurant', '', 0),
(92, 1, '2017-11-22 07:46:05', '2017-11-22 07:46:05', '', '11.-Ardishoki-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '11-ardishoki-750x500-w-50-middle-375x250', '', '', '2017-11-22 07:46:05', '2017-11-22 07:46:05', '', 91, 'http://test.loc/wp-content/uploads/2017/11/11.-Ardishoki-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-11-22 07:47:53', '2017-11-22 07:47:53', 'Kycklingröra...', 'Tarator de jez', 'Kycklingröra...', 'publish', 'closed', 'closed', '', 'tarator-de-jez', '', '', '2017-11-22 07:47:53', '2017-11-22 07:47:53', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=93', 0, 'restaurant', '', 0),
(94, 1, '2017-11-22 07:47:26', '2017-11-22 07:47:26', '', '9.-Tarator-de-jez-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '9-tarator-de-jez-750x500-w-50-middle-375x250', '', '', '2017-11-22 07:47:26', '2017-11-22 07:47:26', '', 93, 'http://test.loc/wp-content/uploads/2017/11/9.-Tarator-de-jez-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-11-22 07:49:08', '2017-11-22 07:49:08', 'Finmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)..', 'Muhammara', 'Finmalen paprika och valnötter marinerade i olivolja, ströbröd och orientaliska kryddor. (veg)..', 'publish', 'closed', 'closed', '', 'muhammara', '', '', '2017-11-22 07:49:08', '2017-11-22 07:49:08', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=95', 0, 'restaurant', '', 0),
(96, 1, '2017-11-22 07:49:05', '2017-11-22 07:49:05', '', '7.-Mhammara-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '7-mhammara-750x500-w-50-middle-375x250', '', '', '2017-11-22 07:49:05', '2017-11-22 07:49:05', '', 95, 'http://test.loc/wp-content/uploads/2017/11/7.-Mhammara-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-11-22 08:14:45', '2017-11-22 08:14:45', 'Auberginröra. (veg)..', 'Baba Ganoush', 'Auberginröra. (veg)..', 'publish', 'closed', 'closed', '', 'baba-ganoush', '', '', '2017-11-22 08:14:45', '2017-11-22 08:14:45', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=97', 0, 'restaurant', '', 0),
(98, 1, '2017-11-22 08:14:39', '2017-11-22 08:14:39', '', '6.-Baba-Ganoushr-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '6-baba-ganoushr-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:14:39', '2017-11-22 08:14:39', '', 97, 'http://test.loc/wp-content/uploads/2017/11/6.-Baba-Ganoushr-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2017-11-22 08:16:25', '2017-11-22 08:16:25', 'Vegetariska vinbladsdolmar. (veg)..', 'Warak inab', 'Vegetariska vinbladsdolmar. (veg)..', 'publish', 'closed', 'closed', '', 'warak-inab', '', '', '2017-11-22 08:16:25', '2017-11-22 08:16:25', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=99', 0, 'restaurant', '', 0),
(100, 1, '2017-11-22 08:16:22', '2017-11-22 08:16:22', '', '4.-Warak-inab-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '4-warak-inab-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:16:22', '2017-11-22 08:16:22', '', 99, 'http://test.loc/wp-content/uploads/2017/11/4.-Warak-inab-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2017-11-22 08:17:56', '2017-11-22 08:17:56', 'Libanesisk kryddad yoghurt med oliver. (veg)..', 'Labneh', 'Libanesisk kryddad yoghurt med oliver. (veg)..', 'publish', 'closed', 'closed', '', 'labneh', '', '', '2017-11-22 08:17:56', '2017-11-22 08:17:56', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=101', 0, 'restaurant', '', 0),
(102, 1, '2017-11-22 08:17:20', '2017-11-22 08:17:20', '', '2. Labneh-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '2-labneh-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:17:20', '2017-11-22 08:17:20', '', 101, 'http://test.loc/wp-content/uploads/2017/11/2.-Labneh-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2017-11-22 08:19:37', '2017-11-22 08:19:37', 'Kikärtsröra. (veg)..', 'Hummus', 'Kikärtsröra. (veg)..', 'publish', 'closed', 'closed', '', 'hummus', '', '', '2017-11-22 08:19:37', '2017-11-22 08:19:37', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=103', 0, 'restaurant', '', 0),
(104, 1, '2017-11-22 08:19:11', '2017-11-22 08:19:11', '', '1.-Hoummos--750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '1-hoummos-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:19:11', '2017-11-22 08:19:11', '', 103, 'http://test.loc/wp-content/uploads/2017/11/1.-Hoummos-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2017-11-22 08:21:09', '2017-11-22 08:21:09', 'Tre stycken marinerade grillade lammracks...', 'Kastaletta Ghanam', 'Tre stycken marinerade grillade lammracks...', 'publish', 'closed', 'closed', '', 'kastaletta-ghanam', '', '', '2017-11-22 08:21:09', '2017-11-22 08:21:09', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=105', 0, 'restaurant', '', 0),
(106, 1, '2017-11-22 08:22:24', '2017-11-22 08:22:24', 'Friterad nötfärsfylld bulgur/Libanesiska köttbullar..', 'Kebbe trabolsie', 'Friterad nötfärsfylld bulgur/Libanesiska köttbullar..', 'publish', 'closed', 'closed', '', 'kebbe-trabolsie', '', '', '2017-11-22 08:22:24', '2017-11-22 08:22:24', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=106', 0, 'restaurant', '', 0),
(107, 1, '2017-11-22 08:22:22', '2017-11-22 08:22:22', '', '26.-Kebbe-trabolsie-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '26-kebbe-trabolsie-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:22:22', '2017-11-22 08:22:22', '', 106, 'http://test.loc/wp-content/uploads/2017/11/26.-Kebbe-trabolsie-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2017-11-22 08:24:15', '2017-11-22 08:24:15', 'Strimlad stekt oxfilé med kikärtsröra och pinjenötter...', 'Hoummos bel lahme', 'Strimlad stekt oxfilé med kikärtsröra och pinjenötter...', 'publish', 'closed', 'closed', '', 'hoummos-bel-lahme', '', '', '2017-11-22 08:24:15', '2017-11-22 08:24:15', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=108', 0, 'restaurant', '', 0),
(109, 1, '2017-11-22 08:23:13', '2017-11-22 08:23:13', '', '24.-Hoummos-bel-lahme-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '24-hoummos-bel-lahme-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:23:13', '2017-11-22 08:23:13', '', 108, 'http://test.loc/wp-content/uploads/2017/11/24.-Hoummos-bel-lahme-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2017-11-22 08:25:11', '2017-11-22 08:25:11', 'Libanesisk lammkorv med grönsaker...', 'Sojok', 'Libanesisk lammkorv med grönsaker...', 'publish', 'closed', 'closed', '', 'sojok', '', '', '2017-11-22 08:25:11', '2017-11-22 08:25:11', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=110', 0, 'restaurant', '', 0),
(111, 1, '2017-11-22 08:24:38', '2017-11-22 08:24:38', '', '23.-Sojok-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '23-sojok-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:24:38', '2017-11-22 08:24:38', '', 110, 'http://test.loc/wp-content/uploads/2017/11/23.-Sojok-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-11-22 08:26:34', '2017-11-22 08:26:34', 'Grillad ost. (veg)..', 'Halloumi', 'Grillad ost. (veg)..', 'publish', 'closed', 'closed', '', 'halloumi', '', '', '2017-11-22 08:26:34', '2017-11-22 08:26:34', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=112', 0, 'restaurant', '', 0),
(113, 1, '2017-11-22 08:26:09', '2017-11-22 08:26:09', '', '22.-Halloumi-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '22-halloumi-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:26:09', '2017-11-22 08:26:09', '', 112, 'http://test.loc/wp-content/uploads/2017/11/22.-Halloumi-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2017-11-22 08:27:59', '2017-11-22 08:27:59', 'Marinerade grillade kycklingvingar...', 'Jowaneh michvie', 'Marinerade grillade kycklingvingar...', 'publish', 'closed', 'closed', '', 'jowaneh-michvie', '', '', '2017-11-22 08:27:59', '2017-11-22 08:27:59', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=114', 0, 'restaurant', '', 0),
(115, 1, '2017-11-22 08:27:19', '2017-11-22 08:27:19', '', '21.-Jowaneh-michvie-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '21-jowaneh-michvie-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:27:19', '2017-11-22 08:27:19', '', 114, 'http://test.loc/wp-content/uploads/2017/11/21.-Jowaneh-michvie-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2017-11-22 08:29:03', '2017-11-22 08:29:03', 'Nötfärspiroger. ..', 'Sambosek', 'Nötfärspiroger. ..', 'publish', 'closed', 'closed', '', 'sambosek', '', '', '2017-11-22 08:29:03', '2017-11-22 08:29:03', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=116', 0, 'restaurant', '', 0),
(117, 1, '2017-11-22 08:28:36', '2017-11-22 08:28:36', '', '19.-Sambosek-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '19-sambosek-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:28:36', '2017-11-22 08:28:36', '', 116, 'http://test.loc/wp-content/uploads/2017/11/19.-Sambosek-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-11-22 08:29:39', '2017-11-22 08:29:39', 'Friterad ost. (veg)..', 'Halloumi Michvie', 'Friterad ost. (veg)..\r\n\r\n', 'publish', 'closed', 'closed', '', 'halloumi-michvie', '', '', '2017-11-22 08:29:39', '2017-11-22 08:29:39', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=118', 0, 'restaurant', '', 0),
(119, 1, '2017-11-22 08:31:50', '2017-11-22 08:31:50', 'Ostrullar. (veg)..', 'Rakakat', 'Ostrullar. (veg)..', 'publish', 'closed', 'closed', '', 'rakakat', '', '', '2017-11-22 08:31:50', '2017-11-22 08:31:50', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=119', 0, 'restaurant', '', 0),
(120, 1, '2017-11-22 08:31:03', '2017-11-22 08:31:03', '', '18.-Rakakat-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '18-rakakat-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:31:03', '2017-11-22 08:31:03', '', 119, 'http://test.loc/wp-content/uploads/2017/11/18.-Rakakat-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2017-11-22 08:33:08', '2017-11-22 08:33:08', 'Spenatpiroger. (veg)..', 'Fatayer', 'Spenatpiroger. (veg)..', 'publish', 'closed', 'closed', '', 'fatayer', '', '', '2017-11-22 08:33:08', '2017-11-22 08:33:08', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=121', 0, 'restaurant', '', 0),
(122, 1, '2017-11-22 08:32:35', '2017-11-22 08:32:35', '', '17.-Fatayer-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '17-fatayer-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:32:35', '2017-11-22 08:32:35', '', 121, 'http://test.loc/wp-content/uploads/2017/11/17.-Fatayer-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2017-11-22 08:34:18', '2017-11-22 08:34:18', 'Friterad kikärts- och bönröra med sesamsås. (veg)..', 'Falafel', 'Friterad kikärts- och bönröra med sesamsås. (veg)..', 'publish', 'closed', 'closed', '', 'falafel', '', '', '2017-11-22 08:34:18', '2017-11-22 08:34:18', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=123', 0, 'restaurant', '', 0),
(124, 1, '2017-11-22 08:33:53', '2017-11-22 08:33:53', '', '16.-Falafel-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '16-falafel-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:33:53', '2017-11-22 08:33:53', '', 123, 'http://test.loc/wp-content/uploads/2017/11/16.-Falafel-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2017-11-22 08:36:05', '2017-11-22 08:36:05', 'Friterad klyftpotatis kryddad med sambal och koriander. (veg)..', 'Batata Harra', 'Friterad klyftpotatis kryddad med sambal och koriander. (veg)..', 'publish', 'closed', 'closed', '', 'batata-harra', '', '', '2017-11-22 08:36:05', '2017-11-22 08:36:05', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=125', 0, 'restaurant', '', 0),
(126, 1, '2017-11-22 08:35:08', '2017-11-22 08:35:08', '', '15.-Batata-Harra-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '15-batata-harra-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:35:08', '2017-11-22 08:35:08', '', 125, 'http://test.loc/wp-content/uploads/2017/11/15.-Batata-Harra-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2017-11-22 08:37:06', '2017-11-22 08:37:06', 'Friterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)..', 'Batata Bel Kozbara', 'Friterad klyftpotatis med vitlök, olivolja, chili och färsk koriander. (veg)..', 'publish', 'closed', 'closed', '', 'batata-bel-kozbara', '', '', '2017-11-22 08:37:06', '2017-11-22 08:37:06', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=127', 0, 'restaurant', '', 0),
(128, 1, '2017-11-22 08:36:31', '2017-11-22 08:36:31', '', '14.-Batata-Bel-Kozbara-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '14-batata-bel-kozbara-750x500-w-50-middle-375x250', '', '', '2017-11-22 08:36:31', '2017-11-22 08:36:31', '', 127, 'http://test.loc/wp-content/uploads/2017/11/14.-Batata-Bel-Kozbara-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2017-11-22 08:37:45', '2017-11-22 08:37:45', 'Friterad klyftpotatis med salt. (veg)..', 'Batata Ma Milih', 'Friterad klyftpotatis med salt. (veg)..', 'publish', 'closed', 'closed', '', 'batata-ma-milih', '', '', '2017-11-22 08:37:45', '2017-11-22 08:37:45', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=129', 0, 'restaurant', '', 0),
(132, 1, '2017-11-22 13:48:49', '2017-11-22 13:48:49', 'Grillade vitlöksmarinerade tigerräkor...', 'Kraydes michvie', 'Grillade vitlöksmarinerade tigerräkor...', 'publish', 'closed', 'closed', '', 'kraydes-michvie', '', '', '2017-11-22 13:48:49', '2017-11-22 13:48:49', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=132', 0, 'restaurant', '', 0),
(133, 1, '2017-11-22 13:48:11', '2017-11-22 13:48:11', '', '28.-Kraydes-michvie-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '28-kraydes-michvie-750x500-w-50-middle-375x250', '', '', '2017-11-22 13:48:11', '2017-11-22 13:48:11', '', 132, 'http://test.loc/wp-content/uploads/2017/11/28.-Kraydes-michvie-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2017-11-22 13:50:22', '2017-11-22 13:50:22', 'Stekta tigerräkor med citron, vitlök och koriander...', 'Kraydes', 'Stekta tigerräkor med citron, vitlök och koriander...', 'publish', 'closed', 'closed', '', 'kraydes', '', '', '2017-11-22 13:50:22', '2017-11-22 13:50:22', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=134', 0, 'restaurant', '', 0),
(135, 1, '2017-11-22 13:49:49', '2017-11-22 13:49:49', '', '27.-Kraydes-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '27-kraydes-750x500-w-50-middle-375x250', '', '', '2017-11-22 13:49:49', '2017-11-22 13:49:49', '', 134, 'http://test.loc/wp-content/uploads/2017/11/27.-Kraydes-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2017-11-22 13:51:42', '2017-11-22 13:51:42', 'Smörstekta grönmusslor med citron, vitlök, rödvin och koriander...', 'Saffad', 'Smörstekta grönmusslor med citron, vitlök, rödvin och koriander...', 'publish', 'closed', 'closed', '', 'saffad', '', '', '2017-11-22 13:51:42', '2017-11-22 13:51:42', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=136', 0, 'restaurant', '', 0),
(137, 1, '2017-11-22 13:51:11', '2017-11-22 13:51:11', '', '25.-Saffad-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '25-saffad-750x500-w-50-middle-375x250', '', '', '2017-11-22 13:51:11', '2017-11-22 13:51:11', '', 136, 'http://test.loc/wp-content/uploads/2017/11/25.-Saffad-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2017-11-22 13:57:28', '2017-11-22 13:57:28', 'Tonfiskröra...', 'Ton motabal', 'Tonfiskröra...', 'publish', 'closed', 'closed', '', 'ton-motabal', '', '', '2017-11-22 13:57:28', '2017-11-22 13:57:28', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=138', 0, 'restaurant', '', 0),
(139, 1, '2017-11-22 13:57:18', '2017-11-22 13:57:18', '', '10.-Ton-motabal-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '10-ton-motabal-750x500-w-50-middle-375x250', '', '', '2017-11-22 13:57:18', '2017-11-22 13:57:18', '', 138, 'http://test.loc/wp-content/uploads/2017/11/10.-Ton-motabal-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2017-11-22 13:58:19', '2017-11-22 13:58:19', 'Friterade bläckfiskringar med vitlökskräm. (veg)..', 'Calamares', 'Friterade bläckfiskringar med vitlökskräm. (veg)..', 'publish', 'closed', 'closed', '', 'calamares', '', '', '2017-11-22 13:58:19', '2017-11-22 13:58:19', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=140', 0, 'restaurant', '', 0),
(141, 1, '2017-11-22 14:00:57', '2017-11-22 14:00:57', 'Libanesisk sallad med rostad bröd. (veg)..', 'Fatosh', 'Libanesisk sallad med rostad bröd. (veg)..', 'publish', 'closed', 'closed', '', 'fatosh', '', '', '2017-11-22 14:00:57', '2017-11-22 14:00:57', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=141', 0, 'restaurant', '', 0),
(142, 1, '2017-11-22 14:00:26', '2017-11-22 14:00:26', '', '30.-Fatosh-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '30-fatosh-750x500-w-50-middle-375x250', '', '', '2017-11-22 14:00:26', '2017-11-22 14:00:26', '', 141, 'http://test.loc/wp-content/uploads/2017/11/30.-Fatosh-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2017-11-22 14:02:35', '2017-11-22 14:02:35', 'Finhackad bladpersilja, tomat, lök, citron och bulgur. (veg)..', 'Tabbouli', 'Finhackad bladpersilja, tomat, lök, citron och bulgur. (veg)..', 'publish', 'closed', 'closed', '', 'tabbouli', '', '', '2017-11-22 14:02:35', '2017-11-22 14:02:35', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=143', 0, 'restaurant', '', 0),
(144, 1, '2017-11-22 14:02:04', '2017-11-22 14:02:04', '', '29.-Tabbouli-750x500-w-50-middle-375x250', '', 'inherit', 'open', 'closed', '', '29-tabbouli-750x500-w-50-middle-375x250', '', '', '2017-11-22 14:02:04', '2017-11-22 14:02:04', '', 143, 'http://test.loc/wp-content/uploads/2017/11/29.-Tabbouli-750x500-w-50-middle-375x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2017-11-22 14:04:25', '2017-11-22 14:04:25', 'Marinerad grillad fläskfilé med kikärtsröra, paprikaröra, yoghurt, grillade grönsaker, klyftpotatis ..', 'Lahme Khinzir', 'Marinerad grillad fläskfilé med kikärtsröra, paprikaröra, yoghurt, grillade grönsaker, klyftpotatis ..', 'publish', 'closed', 'closed', '', 'lahme-khinzir', '', '', '2017-11-22 14:04:25', '2017-11-22 14:04:25', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=145', 0, 'restaurant', '', 0),
(146, 1, '2017-11-22 14:05:08', '2017-11-22 14:05:08', 'Marinerad grillad oxfilé kikärtsröra, paprikaröra, yoghurt, aubergineröra, grillade grönsaker,..', 'Lahme michvie', 'Marinerad grillad oxfilé kikärtsröra, paprikaröra, yoghurt, aubergineröra, grillade grönsaker,..', 'publish', 'closed', 'closed', '', 'lahme-michvie', '', '', '2017-11-22 14:05:09', '2017-11-22 14:05:09', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=146', 0, 'restaurant', '', 0),
(147, 1, '2017-11-22 14:05:47', '2017-11-22 14:05:47', 'Marinerad helgrillad lammfilé med halloumi, yoghurt, paprika, aubergineröra, grillade grönsaker, ..', 'Fitile Ghanam', 'Marinerad helgrillad lammfilé med halloumi, yoghurt, paprika, aubergineröra, grillade grönsaker, ..', 'publish', 'closed', 'closed', '', 'fitile-ghanam', '', '', '2017-11-22 14:05:47', '2017-11-22 14:05:47', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=147', 0, 'restaurant', '', 0),
(148, 1, '2017-11-22 14:06:25', '2017-11-22 14:06:25', 'Marinerade grillade lammracks med paprikaröra, yoghurt, aubergineröra, grillade grönsaker och tab..', 'Kastaletta Ghanam', 'Marinerade grillade lammracks med paprikaröra, yoghurt, aubergineröra, grillade grönsaker och tab..', 'publish', 'closed', 'closed', '', 'kastaletta-ghanam-2', '', '', '2017-11-22 14:06:25', '2017-11-22 14:06:25', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=148', 0, 'restaurant', '', 0),
(149, 1, '2017-11-22 14:07:09', '2017-11-22 14:07:09', 'Marinerad grillade nötfärsspett med kikärtsröra, paprikaröra, yoghurt, aubergineröra, grillade..', 'Shish kafta', 'Marinerad grillade nötfärsspett med kikärtsröra, paprikaröra, yoghurt, aubergineröra, grillade..', 'publish', 'closed', 'closed', '', 'shish-kafta', '', '', '2017-11-22 14:07:09', '2017-11-22 14:07:09', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=149', 0, 'restaurant', '', 0),
(150, 1, '2017-11-22 14:08:41', '2017-11-22 14:08:41', 'Marinerad grillad kycklingfiléspett med kikärtsröra, paprikaröra, yoghurt, aubergineröra, grill..', 'Shish tauk', 'Marinerad grillad kycklingfiléspett med kikärtsröra, paprikaröra, yoghurt, aubergineröra, grill..', 'publish', 'closed', 'closed', '', 'shish-tauk', '', '', '2017-11-22 14:08:41', '2017-11-22 14:08:41', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=150', 0, 'restaurant', '', 0),
(151, 1, '2017-11-22 14:09:46', '2017-11-22 14:09:46', 'Grillade tigerräkor med ris, ruccolasallad, grillade grönsaker med yoghurt och vitlökskräm...', 'Sahen kraydes michvie', 'Grillade tigerräkor med ris, ruccolasallad, grillade grönsaker med yoghurt och vitlökskräm...', 'publish', 'closed', 'closed', '', 'sahen-kraydes-michvie', '', '', '2017-11-22 14:09:46', '2017-11-22 14:09:46', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=151', 0, 'restaurant', '', 0),
(152, 1, '2017-11-22 14:10:40', '2017-11-22 14:10:40', 'Grillad lax med koriander-chiliaioli sesam, kikärtsröra, paprikaröra, yoghurt, aubergineröra, gr..', 'Samake michvie', 'Grillad lax med koriander-chiliaioli sesam, kikärtsröra, paprikaröra, yoghurt, aubergineröra, gr..\r\n\r\n', 'publish', 'closed', 'closed', '', 'samake-michvie', '', '', '2017-11-22 14:10:40', '2017-11-22 14:10:40', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=152', 0, 'restaurant', '', 0),
(153, 1, '2017-11-22 14:11:37', '2017-11-22 14:11:37', 'Marinerad grillad kycklingvinge, ostrulle, nötfärspirog, klyftpotatis, sallad och vitlökskräm...', 'Meze barnmix', 'Marinerad grillad kycklingvinge, ostrulle, nötfärspirog, klyftpotatis, sallad och vitlökskräm...', 'publish', 'closed', 'closed', '', 'meze-barnmix', '', '', '2017-11-22 14:11:37', '2017-11-22 14:11:37', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=153', 0, 'restaurant', '', 0),
(154, 1, '2017-11-22 14:12:35', '2017-11-22 14:12:35', 'Bryléglass på Katalansk vis...', 'Creme Catalana', 'Bryléglass på Katalansk vis...', 'publish', 'closed', 'closed', '', 'creme-catalana', '', '', '2017-11-22 14:12:35', '2017-11-22 14:12:35', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=154', 0, 'restaurant', '', 0),
(155, 1, '2017-11-22 14:13:11', '2017-11-22 14:13:11', 'Baklava med vaniljglass...', 'Baklava o bouza', 'Baklava med vaniljglass...', 'publish', 'closed', 'closed', '', 'baklava-o-bouza', '', '', '2017-11-22 14:13:11', '2017-11-22 14:13:11', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=155', 0, 'restaurant', '', 0),
(156, 1, '2017-11-22 14:13:51', '2017-11-22 14:13:51', 'Vanilj, jordgubb eller choklad...', 'Husets glass', 'Vanilj, jordgubb eller choklad...', 'publish', 'closed', 'closed', '', 'husets-glass', '', '', '2017-11-22 14:13:51', '2017-11-22 14:13:51', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=156', 0, 'restaurant', '', 0),
(157, 1, '2017-11-22 14:14:47', '2017-11-22 14:14:47', 'Baklava...', 'Baklava (bit)', 'Baklava...', 'publish', 'closed', 'closed', '', 'baklava-bit', '', '', '2017-11-22 14:14:47', '2017-11-22 14:14:47', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=157', 0, 'restaurant', '', 0),
(158, 1, '2017-11-23 07:20:17', '2017-11-23 07:20:17', 'Sauvignon och chardonnay druvor, Torr, fruktig smak med inslag av fat, krusbär, bivax, örter och vanilj. Från Libanon.', 'Ksara Blanc de Blanc', 'Sauvignon och chardonnay druvor, Torr, fruktig smak med inslag av fat, krusbär, bivax, örter och va..', 'publish', 'closed', 'closed', '', 'ksara-blanc-de-blanc', '', '', '2018-01-12 10:03:02', '2018-01-12 10:03:02', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=158', 0, 'restaurant', '', 0),
(159, 1, '2017-11-23 07:21:07', '2017-11-23 07:21:07', 'Attraktiv doft med inslag av krusbär, svartvinbärsblad, citron & äpple. Frisk i bra balans med den uppiggande syrliga karaktären. Från Libanon, Bekaa.', 'Wardy Sauvignon Blanc', 'Attraktiv doft med inslag av krusbär, svartvinbärsblad, citron & äpple. Frisk i bra balans med ..', 'publish', 'closed', 'closed', '', 'wardy-sauvignon-blanc', '', '', '2018-01-12 10:02:33', '2018-01-12 10:02:33', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=159', 0, 'restaurant', '', 0),
(160, 1, '2017-11-23 07:21:52', '2017-11-23 07:21:52', 'Sauvignon, chardonnay och viognier druvor, En medelfyllig vin med en välbalanserad smak av olika bär. Från Libanon.', 'S:t Thomas Gourmet Blanc', 'Sauvignon, chardonnay och viognier druvor, En medelfyllig vin med en välbalanserad smak av olika bä..', 'publish', 'closed', 'closed', '', 'st-thomas-gourmet-blanc', '', '', '2018-01-12 10:01:50', '2018-01-12 10:01:50', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=160', 0, 'restaurant', '', 0),
(161, 1, '2017-11-23 07:22:37', '2017-11-23 07:22:37', 'Husets vin..', 'Husets vin', 'Husets vin..', 'publish', 'closed', 'closed', '', 'husets-vin', '', '', '2018-01-12 09:27:28', '2018-01-12 09:27:28', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=161', 0, 'restaurant', '', 0),
(162, 1, '2017-11-23 07:23:47', '2017-11-23 07:23:47', 'Merlot, Cabrent-Sauvignon & Syrah druvor. Gommen är lycklig att smaka harmonierna och generositeten av detta rika vin. Från Libanon.', 'Chateau St. Thomas (2002)', 'Merlot, Cabrent-Sauvignon & Syrah druvor. Gommen är lycklig att smaka harmonierna och generosit..', 'publish', 'closed', 'closed', '', 'chateau-st-thomas-2002', '', '', '2018-01-12 09:59:43', '2018-01-12 09:59:43', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=162', 0, 'restaurant', '', 0),
(163, 1, '2017-11-23 07:24:36', '2017-11-23 07:24:36', 'Vinet har en doft av mogna svarta och röda bär med ett inslag av kanel, nejlika, fikon och cederträ. Druvor som cinsault, carignan, cabernet sauvignon och grenache. Smaken är fruktig med mörka körsbär, mogna svarta vinbär, blåbär och plommon. Från Libanon, Bekaa.', 'Hochar chateau musar (2009)', 'Vinet har en doft av mogna svarta och röda bär med ett inslag av kanel, nejlika, fikon och cederträ..', 'publish', 'closed', 'closed', '', 'hochar-chateau-musar-2009', '', '', '2018-01-12 09:58:18', '2018-01-12 09:58:18', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=163', 0, 'restaurant', '', 0),
(164, 1, '2017-11-23 07:25:20', '2017-11-23 07:25:20', 'Cabernet sauvignon, syrah och grenache druvor som har en fyllig vin smak som har legat i 12 månader på ekfat. Noble vin, mycket väl strukturerad och balanserad med lång eftersmak, som passar perfekt till kötträtter. Från Libanon.', 'S:t Thomas Emirs', 'Cabernet sauvignon, syrah och grenache druvor som har en fyllig vin smak som har legat i 12 månader..', 'publish', 'closed', 'closed', '', 'st-thomas-emirs', '', '', '2018-01-12 09:57:44', '2018-01-12 09:57:44', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=164', 0, 'restaurant', '', 0),
(165, 1, '2017-11-23 07:26:26', '2017-11-23 07:26:26', 'Syrah franc och sauvignon druvor, medefyllig vin med inslag av olika bär. Passar bra till ostar och kötträtter. Från Libanon.', 'Ksara reserve couv (2011)&nbsp;&nbsp;', 'Syrah franc och sauvignon druvor, medefyllig vin med inslag av olika bär. Passar bra till ostar och..', 'publish', 'closed', 'closed', '', 'ksara-reserve-couv-2011', '', '', '2018-01-12 10:13:28', '2018-01-12 10:13:28', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=165', 0, 'restaurant', '', 0),
(166, 1, '2017-11-23 07:27:08', '2017-11-23 07:27:08', 'Cinsault, Grenache druvor. Medelfylligt vin med en fruktig smak och aningen bränd ton med inslag av körsbär och mandel. Passar utmärkt till lättare rätter. Från Libanon.', 'S:t Thomas Tradition', 'Cinsault, Grenache druvor. Medelfylligt vin med en fruktig smak och aningen bränd ton med inslag av..', 'publish', 'closed', 'closed', '', 'st-thomas-tradition', '', '', '2018-01-12 09:56:35', '2018-01-12 09:56:35', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=166', 0, 'restaurant', '', 0),
(167, 1, '2017-11-23 07:27:49', '2017-11-23 07:27:49', 'Husets vin..', 'Husets vin', 'Husets vin..', 'publish', 'closed', 'closed', '', 'husets-vin-2', '', '', '2018-01-12 09:28:30', '2018-01-12 09:28:30', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=167', 0, 'restaurant', '', 0);
INSERT INTO `wd_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(168, 1, '2017-11-23 07:28:41', '2017-11-23 07:28:41', 'Syrah, petit verdot och cinsault druvor. Lätt vin som passar utmärkt till sallader, kött och exotiska maträtter. Från Libanon.', 'St Thomas Gourmet Rose&nbsp;&nbsp;', 'Syrah, petit verdot och cinsault druvor. Lätt vin som passar utmärkt till sallader, kött och exotis..', 'publish', 'closed', 'closed', '', 'st-thomas-gourmet-rose', '', '', '2018-01-12 10:16:26', '2018-01-12 10:16:26', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=168', 0, 'restaurant', '', 0),
(169, 1, '2017-11-23 07:29:38', '2017-11-23 07:29:38', 'Torr, mycket frisk smak med mineralton och inslag av äpple och citrus. Från Frankike...', 'Jeanmaire Brut', 'Torr, mycket frisk smak med mineralton och inslag av äpple och citrus. Från Frankike...', 'publish', 'closed', 'closed', '', 'jeanmaire-brut', '', '', '2017-11-23 07:29:38', '2017-11-23 07:29:38', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=169', 0, 'restaurant', '', 0),
(170, 1, '2017-11-23 07:30:57', '2017-11-23 07:30:57', '<p>Torr, mycket frisk, ungdomlig smak med inslag av gröna äpplen, persika och citrusskal. Från Spanien..</p>', 'Campo Viejo Cava Brut Reserva', 'Torr, mycket frisk, ungdomlig smak med inslag av gröna äpplen, persika och citrusskal. Från Spanien..', 'publish', 'closed', 'closed', '', 'campo-viejo-cava-brut-reserva', '', '', '2018-01-12 09:02:33', '2018-01-12 09:02:33', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=170', 0, 'restaurant', '', 0),
(171, 1, '2017-11-23 07:31:36', '2017-11-23 07:31:36', 'Flaska, 50 cl..', 'Eriksberg 5,3%', 'Flaska, 50 cl..', 'publish', 'closed', 'closed', '', 'eriksberg-53', '', '', '2017-11-23 07:31:36', '2017-11-23 07:31:36', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=171', 0, 'restaurant', '', 0),
(172, 1, '2017-11-23 07:32:22', '2017-11-23 07:32:22', 'Flaska, 50 cl..', 'Staropramen 5,0%', 'Flaska, 50 cl..\r\n\r\n', 'publish', 'closed', 'closed', '', 'staropramen-50', '', '', '2017-11-23 07:32:22', '2017-11-23 07:32:22', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=172', 0, 'restaurant', '', 0),
(173, 1, '2017-11-23 07:32:58', '2017-11-23 07:32:58', 'Flaska, 35 cl..', 'Brooklyn IPA 6,9%', 'Flaska, 35 cl..', 'publish', 'closed', 'closed', '', 'brooklyn-ipa-69', '', '', '2017-11-23 07:32:58', '2017-11-23 07:32:58', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=173', 0, 'restaurant', '', 0),
(174, 1, '2017-11-23 07:33:35', '2017-11-23 07:33:35', 'Flaska, 50 cl..', 'Almaza 4,2%', 'Flaska, 50 cl..', 'publish', 'closed', 'closed', '', 'almaza-42', '', '', '2017-11-23 07:33:35', '2017-11-23 07:33:35', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=174', 0, 'restaurant', '', 0),
(175, 1, '2017-11-23 07:34:15', '2017-11-23 07:34:15', 'Flaska, 35 cl..', 'Brooklyn Lager 5,2%', 'Flaska, 35 cl..', 'publish', 'closed', 'closed', '', 'brooklyn-lager-52', '', '', '2017-11-23 07:34:15', '2017-11-23 07:34:15', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=175', 0, 'restaurant', '', 0),
(176, 1, '2017-11-23 07:34:50', '2017-11-23 07:34:50', 'Flaska, 35 cl..', 'Corona Extra 4,5%', 'Flaska, 35 cl..', 'publish', 'closed', 'closed', '', 'corona-extra-45', '', '', '2017-11-23 07:34:50', '2017-11-23 07:34:50', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=176', 0, 'restaurant', '', 0),
(177, 1, '2017-11-23 07:35:42', '2017-11-23 07:35:42', 'Fatöl, 40cl..', 'Falcon Export 5,2%', 'Fatöl, 40cl..', 'publish', 'closed', 'closed', '', 'falcon-export-52', '', '', '2017-11-23 07:35:42', '2017-11-23 07:35:42', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=177', 0, 'restaurant', '', 0),
(178, 1, '2017-11-23 07:36:18', '2017-11-23 07:36:18', 'Fatöl, 40cl..', 'Carlsberg HOF 4,2%', 'Fatöl, 40cl..', 'publish', 'closed', 'closed', '', 'carlsberg-hof-42', '', '', '2017-11-23 07:36:18', '2017-11-23 07:36:18', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=178', 0, 'restaurant', '', 0),
(179, 1, '2017-11-23 07:38:43', '2017-11-23 07:38:43', 'Flaska, 33 cl..', 'Somersby Päron 4,5%', 'Flaska, 33 cl..', 'publish', 'closed', 'closed', '', 'somersby-paron-45', '', '', '2017-11-23 07:38:43', '2017-11-23 07:38:43', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=179', 0, 'restaurant', '', 0),
(180, 1, '2017-11-23 07:40:05', '2017-11-23 07:40:05', 'välj mellan klyftpotatis/bulgur eller ris...', 'Grillad Lammstek', 'välj mellan klyftpotatis/bulgur eller ris...', 'publish', 'closed', 'closed', '', 'grillad-lammstek', '', '', '2017-11-23 07:40:05', '2017-11-23 07:40:05', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=180', 0, 'restaurant', '', 0),
(181, 1, '2017-11-23 07:40:48', '2017-11-23 07:40:48', 'Flaska (välj mellan Pepsi, Pepsi Max, Zingo, 7up, Ramlösa (olika sorter) och lättöl)..', 'Valfri läsk/lättöl', 'Flaska (välj mellan Pepsi, Pepsi Max, Zingo, 7up, Ramlösa (olika sorter) och lättöl)..', 'publish', 'closed', 'closed', '', 'valfri-lasklattol', '', '', '2017-11-23 07:40:48', '2017-11-23 07:40:48', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=181', 0, 'restaurant', '', 0),
(182, 1, '2017-11-23 07:41:38', '2017-11-23 07:41:38', 'välj mellan klyftpotatis/bulgur eller ris. ..', 'Grillad Fläskfilé', 'välj mellan klyftpotatis/bulgur eller ris. ..', 'publish', 'closed', 'closed', '', 'grillad-flaskfile', '', '', '2017-11-23 07:41:38', '2017-11-23 07:41:38', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=182', 0, 'restaurant', '', 0),
(183, 1, '2017-11-23 07:42:19', '2017-11-23 07:42:19', 'välj mellan klyftpotatis/bulgur eller ris...', 'Grillad Kycklingfilèspett', 'välj mellan klyftpotatis/bulgur eller ris...', 'publish', 'closed', 'closed', '', 'grillad-kycklingfilespett', '', '', '2017-11-23 07:42:19', '2017-11-23 07:42:19', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=183', 0, 'restaurant', '', 0),
(184, 1, '2017-11-23 07:43:43', '2017-11-23 07:43:43', 'välj mellan klyftpotatis/bulgur eller ris...', 'Grillad Laxfilè', 'välj mellan klyftpotatis/bulgur eller ris...', 'publish', 'closed', 'closed', '', 'grillad-laxfile', '', '', '2017-11-23 07:43:43', '2017-11-23 07:43:43', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=184', 0, 'restaurant', '', 0),
(185, 1, '2017-11-23 07:44:24', '2017-11-23 07:44:24', 'välj mellan klyftpotatis/bulgur eller ris...', 'Grillad Nötfärspett', 'välj mellan klyftpotatis/bulgur eller ris...', 'publish', 'closed', 'closed', '', 'grillad-notfarspett', '', '', '2017-11-23 07:44:24', '2017-11-23 07:44:24', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=185', 0, 'restaurant', '', 0),
(186, 1, '2017-11-23 07:45:03', '2017-11-23 07:45:03', 'välj mellan klyftpotatis/bulgur eller ris...', 'Grillad Oxfilé', 'välj mellan klyftpotatis/bulgur eller ris...', 'publish', 'closed', 'closed', '', 'grillad-oxfile', '', '', '2017-11-23 07:45:03', '2017-11-23 07:45:03', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=186', 0, 'restaurant', '', 0),
(187, 1, '2017-11-23 07:45:42', '2017-11-23 07:45:42', 'Ostrulle, Falafel, spenatpirog kronärtskocka, vindruvsdolmar, bondbönor och vitlökskräm...', 'Vegetarisk tallrik', 'Ostrulle, Falafel, spenatpirog kronärtskocka, vindruvsdolmar, bondbönor och vitlökskräm...', 'publish', 'closed', 'closed', '', 'vegetarisk-tallrik', '', '', '2017-11-23 07:45:42', '2017-11-23 07:45:42', '', 0, 'http://test.loc/?post_type=restaurant&#038;p=187', 0, 'restaurant', '', 0),
(190, 1, '2017-11-24 08:55:03', '2017-11-24 08:55:03', '', 'wedding-205x136', '', 'inherit', 'open', 'closed', '', 'wedding-205x136', '', '', '2017-11-24 08:55:03', '2017-11-24 08:55:03', '', 1, 'http://test.loc/wp-content/uploads/2017/10/wedding-205x136.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2017-11-24 08:55:03', '2017-11-24 08:55:03', '', 'lunchmini-205x136', '', 'inherit', 'open', 'closed', '', 'lunchmini-205x136', '', '', '2017-11-24 08:55:03', '2017-11-24 08:55:03', '', 1, 'http://test.loc/wp-content/uploads/2017/10/lunchmini-205x136.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2017-11-24 08:55:04', '2017-11-24 08:55:04', '', 'christmas2-205x136', '', 'inherit', 'open', 'closed', '', 'christmas2-205x136', '', '', '2017-11-24 08:55:04', '2017-11-24 08:55:04', '', 1, 'http://test.loc/wp-content/uploads/2017/10/christmas2-205x136.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2017-11-24 08:56:18', '2017-11-24 08:56:18', 'Trött på samma gamla vanliga julbord? Hos oss hittar du ett julbord som består av ljuvliga libanesiska rätter samt kaffe och dessert. Serveras från den 15 November.<!--more-->', 'Libanesiskt julbord', '', 'publish', 'open', 'open', '', 'libanesiskt-julbord', '', '', '2017-11-24 08:56:18', '2017-11-24 08:56:18', '', 0, 'http://test.loc/?p=194', 0, 'post', '', 0),
(196, 1, '2017-11-24 08:57:37', '2017-11-24 08:57:37', 'Vi kan arrangera event för större sällskap. Vår salong rymmer uppemot 90 sittplatser.<!--more-->', 'Events - Konferens/Bröllop/Dop/Förlovning', '', 'publish', 'open', 'open', '', 'events-konferensbrollopdopforlovning', '', '', '2017-11-24 08:57:37', '2017-11-24 08:57:37', '', 0, 'http://test.loc/?p=196', 0, 'post', '', 0),
(248, 1, '2017-12-01 10:42:34', '2017-12-01 10:42:34', '', 'Avsmakningsmeny', '', 'publish', 'closed', 'closed', '', 'avsmakningsmeny', '', '', '2017-12-01 10:42:34', '2017-12-01 10:42:34', '', 0, 'http://test.loc/?p=248', 1, 'nav_menu_item', '', 0),
(249, 1, '2017-12-01 10:42:34', '2017-12-01 10:42:34', '', 'Barnmeny', '', 'publish', 'closed', 'closed', '', 'barnmeny', '', '', '2017-12-01 10:42:34', '2017-12-01 10:42:34', '', 0, 'http://test.loc/?p=249', 2, 'nav_menu_item', '', 0),
(250, 1, '2017-12-01 10:42:34', '2017-12-01 10:42:34', '', 'Champagne', '', 'publish', 'closed', 'closed', '', 'champagne', '', '', '2017-12-01 10:42:34', '2017-12-01 10:42:34', '', 0, 'http://test.loc/?p=250', 3, 'nav_menu_item', '', 0),
(251, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Avsmakningsmeny', '', 'publish', 'closed', 'closed', '', 'avsmakningsmeny-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=251', 3, 'nav_menu_item', '', 0),
(252, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Barnmeny', '', 'publish', 'closed', 'closed', '', 'barnmeny-2', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=252', 8, 'nav_menu_item', '', 0),
(255, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Dessert', '', 'publish', 'closed', 'closed', '', 'dessert', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=255', 12, 'nav_menu_item', '', 0),
(256, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Från havet', '', 'publish', 'closed', 'closed', '', 'fran-havet', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=256', 11, 'nav_menu_item', '', 0),
(257, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Kött', '', 'publish', 'closed', 'closed', '', 'kott', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=257', 10, 'nav_menu_item', '', 0),
(258, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Kyckling', '', 'publish', 'closed', 'closed', '', 'kyckling', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=258', 9, 'nav_menu_item', '', 0),
(259, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Lunch', '', 'publish', 'closed', 'closed', '', 'lunch', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=259', 13, 'nav_menu_item', '', 0),
(260, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Meze - Från havet', '', 'publish', 'closed', 'closed', '', 'meze-fran-havet', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=260', 6, 'nav_menu_item', '', 0),
(261, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Meze - Kalla', '', 'publish', 'closed', 'closed', '', 'meze-kalla', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=261', 4, 'nav_menu_item', '', 0),
(262, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Meze - Varma', '', 'publish', 'closed', 'closed', '', 'meze-varma', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=262', 5, 'nav_menu_item', '', 0),
(266, 1, '2017-12-01 10:58:35', '2017-12-01 10:58:35', '', 'Sallad', '', 'publish', 'closed', 'closed', '', 'sallad', '', '', '2018-02-14 09:10:54', '2018-02-14 09:10:54', '', 0, 'http://test.loc/?p=266', 7, 'nav_menu_item', '', 0),
(273, 1, '2017-12-22 08:10:37', '2017-12-22 08:10:37', '', 'icon', '', 'inherit', 'open', 'closed', '', 'icon', '', '', '2017-12-22 08:10:37', '2017-12-22 08:10:37', '', 0, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/icon.png', 0, 'attachment', 'image/png', 0),
(275, 1, '2017-12-22 12:55:57', '2017-12-22 12:55:57', '', 'beirut bistro 1', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-1', '', '', '2018-01-03 15:42:44', '2018-01-03 15:42:44', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=275', 0, 'owl-carousel', '', 0),
(284, 1, '2017-12-22 12:56:26', '2017-12-22 12:56:26', '', 'beirut bistro 2', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-2', '', '', '2018-01-03 15:43:08', '2018-01-03 15:43:08', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=284', 0, 'owl-carousel', '', 0),
(285, 1, '2017-12-22 12:56:57', '2017-12-22 12:56:57', '', 'beirut bistro 3', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-3', '', '', '2018-01-03 15:44:00', '2018-01-03 15:44:00', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=285', 0, 'owl-carousel', '', 0),
(286, 1, '2017-12-22 12:57:43', '2017-12-22 12:57:43', '', 'beirut bistro 4', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-4', '', '', '2018-01-03 15:44:46', '2018-01-03 15:44:46', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=286', 0, 'owl-carousel', '', 0),
(287, 1, '2017-12-22 12:58:47', '2017-12-22 12:58:47', '', 'beirut bistro 5', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-5', '', '', '2018-01-03 15:45:32', '2018-01-03 15:45:32', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=287', 0, 'owl-carousel', '', 0),
(288, 1, '2017-12-22 12:59:20', '2017-12-22 12:59:20', '', 'beirut bistro 8', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-6', '', '', '2018-01-03 15:46:19', '2018-01-03 15:46:19', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=288', 0, 'owl-carousel', '', 0),
(289, 1, '2017-12-22 13:00:01', '2017-12-22 13:00:01', '', 'beirut bistro 6', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-6-2', '', '', '2018-01-03 15:47:26', '2018-01-03 15:47:26', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=289', 0, 'owl-carousel', '', 0),
(290, 1, '2017-12-22 13:00:56', '2017-12-22 13:00:56', '', 'beirut bistro 7', '', 'publish', 'closed', 'closed', '', 'beirut-bistro-7', '', '', '2018-01-03 15:54:02', '2018-01-03 15:54:02', '', 0, 'http://ns6.inleed.net/~beirutbist/?post_type=owl-carousel&#038;p=290', 0, 'owl-carousel', '', 0),
(293, 1, '2018-01-02 08:39:00', '2018-01-02 08:39:00', '', 'placeholder-750x500', '', 'inherit', 'open', 'closed', '', 'placeholder-750x500', '', '', '2018-01-02 08:39:00', '2018-01-02 08:39:00', '', 0, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2018/01/placeholder-750x500.png', 0, 'attachment', 'image/png', 0),
(294, 1, '2018-01-02 14:21:47', '2018-01-02 14:21:47', '', 'julbord', '', 'inherit', 'open', 'closed', '', 'julbord', '', '', '2018-01-02 14:21:47', '2018-01-02 14:21:47', '', 0, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2018/01/julbord.jpg', 0, 'attachment', 'image/jpeg', 0),
(295, 1, '2018-01-03 15:40:19', '2018-01-03 15:40:19', '', '_DSC5702', '', 'inherit', 'open', 'closed', '', '_dsc5702', '', '', '2018-01-03 15:40:19', '2018-01-03 15:40:19', '', 275, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5702.jpg', 0, 'attachment', 'image/jpeg', 0),
(296, 1, '2018-01-03 15:42:10', '2018-01-03 15:42:10', '', '_DSC5691', '', 'inherit', 'open', 'closed', '', '_dsc5691', '', '', '2018-01-03 15:42:10', '2018-01-03 15:42:10', '', 284, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5691.jpg', 0, 'attachment', 'image/jpeg', 0),
(297, 1, '2018-01-03 15:43:42', '2018-01-03 15:43:42', '', '_DSC5652 (1)', '', 'inherit', 'open', 'closed', '', '_dsc5652-1', '', '', '2018-01-03 15:43:42', '2018-01-03 15:43:42', '', 285, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5652-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(298, 1, '2018-01-03 15:44:38', '2018-01-03 15:44:38', '', '_DSC5593', '', 'inherit', 'open', 'closed', '', '_dsc5593', '', '', '2018-01-03 15:44:38', '2018-01-03 15:44:38', '', 286, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5593.jpg', 0, 'attachment', 'image/jpeg', 0),
(299, 1, '2018-01-03 15:45:23', '2018-01-03 15:45:23', '', '_DSC5481', '', 'inherit', 'open', 'closed', '', '_dsc5481', '', '', '2018-01-03 15:45:23', '2018-01-03 15:45:23', '', 287, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5481.jpg', 0, 'attachment', 'image/jpeg', 0),
(300, 1, '2018-01-03 15:46:10', '2018-01-03 15:46:10', '', '_DSC5433', '', 'inherit', 'open', 'closed', '', '_dsc5433', '', '', '2018-01-03 15:46:10', '2018-01-03 15:46:10', '', 288, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5433.jpg', 0, 'attachment', 'image/jpeg', 0),
(301, 1, '2018-01-03 15:47:19', '2018-01-03 15:47:19', '', '_DSC1761', '', 'inherit', 'open', 'closed', '', '_dsc1761', '', '', '2018-01-03 15:47:19', '2018-01-03 15:47:19', '', 289, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1761.jpg', 0, 'attachment', 'image/jpeg', 0),
(302, 1, '2018-01-03 15:48:20', '2018-01-03 15:48:20', '', '_DSC1645', '', 'inherit', 'open', 'closed', '', '_dsc1645', '', '', '2018-01-03 15:48:20', '2018-01-03 15:48:20', '', 290, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1645.jpg', 0, 'attachment', 'image/jpeg', 0),
(306, 1, '2018-01-12 09:02:35', '2018-01-12 09:02:35', '<p>Torr, mycket frisk, ungdomlig smak med inslag av gröna äpplen, persika och citrusskal. Från Spanien..</p>', 'Campo Viejo Cava Brut Reserva', 'Torr, mycket frisk, ungdomlig smak med inslag av gröna äpplen, persika och citrusskal. Från Spanien..', 'inherit', 'closed', 'closed', '', '170-autosave-v1', '', '', '2018-01-12 09:02:35', '2018-01-12 09:02:35', '', 170, 'http://ns6.inleed.net/~beirutbist/170-autosave-v1/', 0, 'revision', '', 0),
(308, 1, '2018-02-13 12:09:35', '2018-02-13 12:09:35', '', 'export-public-20171228-f963157102a9ef38bad3492269b4ed4baeda6021', '', 'inherit', 'closed', 'closed', '', 'export-public-20171228-f963157102a9ef38bad3492269b4ed4baeda6021', '', '', '2018-02-13 12:09:35', '2018-02-13 12:09:35', '', 0, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2018/02/export-public-20171228-f963157102a9ef38bad3492269b4ed4baeda6021.csv', 0, 'attachment', 'text/csv', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_termmeta`
--

CREATE TABLE `wd_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_termmeta`
--

INSERT INTO `wd_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 5, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(2, 6, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(3, 7, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(4, 8, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(5, 9, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(6, 10, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(7, 11, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(8, 12, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(9, 13, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(10, 14, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(11, 15, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(12, 16, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(13, 17, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(14, 18, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(15, 19, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(16, 20, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(17, 21, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(18, 23, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}'),
(19, 24, 'fw_options', 'a:2:{s:22:\"seo-titles-metas-title\";s:0:\"\";s:28:\"seo-titles-metas-description\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_terms`
--

CREATE TABLE `wd_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_terms`
--

INSERT INTO `wd_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(4, 'Top Footer Menu', 'top-footer-menu', 0),
(5, 'Avsmakningsmeny', 'avsmakningsmeny', 0),
(6, 'Meze - Kalla', 'meze-kalla', 0),
(7, 'Meze - Varma', 'meze-varma', 0),
(8, 'Meze - Från havet', 'meze-fran-havet', 0),
(9, 'Sallad', 'sallad', 0),
(10, 'Kött', 'kott', 0),
(11, 'Kyckling', 'kyckling', 0),
(12, 'Från havet', 'fran-havet', 0),
(13, 'Barnmeny', 'barnmeny', 0),
(14, 'Dessert', 'dessert', 0),
(15, 'Vita viner', 'vita-viner', 0),
(16, 'Röda viner', 'roda-viner', 0),
(17, 'Rose viner', 'rose-viner', 0),
(18, 'Champagne', 'champagne', 0),
(19, 'Öl', 'ol', 0),
(20, 'Cider', 'cider', 0),
(21, 'Lunch', 'lunch', 0),
(22, 'Restaurant menu', 'restaurant-menu', 0),
(23, 'Actions', 'actions', 0),
(24, 'carousel on home page', 'carousel-on-home-page', 0),
(25, 'Dishes Menu Links', 'dishes-menu-links', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_term_relationships`
--

CREATE TABLE `wd_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_term_relationships`
--

INSERT INTO `wd_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 23, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 3, 0),
(40, 4, 0),
(41, 4, 0),
(42, 4, 0),
(43, 4, 0),
(44, 4, 0),
(61, 5, 1),
(65, 22, 0),
(66, 22, 0),
(67, 22, 0),
(69, 22, 0),
(70, 22, 0),
(71, 22, 0),
(72, 22, 0),
(74, 22, 0),
(75, 22, 0),
(76, 22, 0),
(77, 22, 0),
(78, 22, 0),
(79, 22, 0),
(80, 22, 0),
(81, 22, 0),
(83, 5, 1),
(84, 5, 1),
(85, 5, 1),
(86, 5, 1),
(87, 6, 1),
(88, 6, 1),
(90, 6, 1),
(91, 6, 1),
(93, 6, 1),
(95, 6, 1),
(97, 6, 1),
(99, 6, 1),
(101, 6, 1),
(103, 6, 1),
(105, 7, 1),
(106, 7, 1),
(108, 7, 1),
(110, 7, 1),
(112, 7, 1),
(114, 7, 1),
(116, 7, 1),
(118, 7, 1),
(119, 7, 1),
(121, 7, 1),
(123, 7, 1),
(125, 7, 1),
(127, 7, 1),
(129, 7, 1),
(132, 8, 1),
(134, 8, 1),
(136, 8, 1),
(138, 8, 1),
(140, 8, 1),
(141, 9, 1),
(143, 9, 1),
(145, 10, 1),
(146, 10, 1),
(147, 10, 1),
(148, 10, 1),
(149, 10, 1),
(150, 11, 1),
(151, 12, 1),
(152, 12, 1),
(153, 13, 1),
(154, 14, 1),
(155, 14, 1),
(156, 14, 1),
(157, 14, 1),
(158, 15, 1),
(159, 15, 1),
(160, 15, 1),
(161, 15, 1),
(162, 16, 1),
(163, 16, 1),
(164, 16, 1),
(165, 16, 1),
(166, 16, 1),
(167, 16, 1),
(168, 17, 1),
(169, 18, 1),
(170, 18, 1),
(171, 19, 1),
(172, 19, 1),
(173, 19, 1),
(174, 19, 1),
(175, 19, 1),
(176, 19, 1),
(177, 19, 1),
(178, 19, 1),
(179, 20, 1),
(180, 21, 1),
(181, 21, 1),
(182, 21, 1),
(183, 21, 1),
(184, 21, 1),
(185, 21, 1),
(186, 21, 1),
(187, 21, 1),
(194, 23, 0),
(196, 23, 0),
(248, 25, 0),
(249, 25, 0),
(250, 25, 0),
(251, 2, 0),
(252, 2, 0),
(255, 2, 0),
(256, 2, 0),
(257, 2, 0),
(258, 2, 0),
(259, 2, 0),
(260, 2, 0),
(261, 2, 0),
(262, 2, 0),
(266, 2, 0),
(275, 24, 0),
(284, 24, 0),
(285, 24, 0),
(286, 24, 0),
(287, 24, 0),
(288, 24, 0),
(289, 24, 0),
(290, 24, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_term_taxonomy`
--

CREATE TABLE `wd_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_term_taxonomy`
--

INSERT INTO `wd_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 17),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'menu_category', '', 0, 5),
(6, 6, 'menu_category', '', 0, 10),
(7, 7, 'menu_category', '', 0, 14),
(8, 8, 'menu_category', '', 0, 5),
(9, 9, 'menu_category', '', 0, 2),
(10, 10, 'menu_category', '', 0, 5),
(11, 11, 'menu_category', '', 0, 1),
(12, 12, 'menu_category', '', 0, 2),
(13, 13, 'menu_category', '', 0, 1),
(14, 14, 'menu_category', '', 0, 4),
(15, 15, 'menu_category', '', 0, 4),
(16, 16, 'menu_category', '', 0, 6),
(17, 17, 'menu_category', '', 0, 1),
(18, 18, 'menu_category', '', 0, 2),
(19, 19, 'menu_category', '', 0, 8),
(20, 20, 'menu_category', '', 0, 1),
(21, 21, 'menu_category', '', 0, 8),
(22, 22, 'nav_menu', '', 0, 15),
(23, 23, 'category', '', 0, 3),
(24, 24, 'Carousel', '', 0, 8),
(25, 25, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_tripadvizer_reviews`
--

CREATE TABLE `wd_tripadvizer_reviews` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `guest` varchar(100) NOT NULL,
  `total_score` varchar(10) NOT NULL,
  `service` varchar(19) NOT NULL,
  `food_quality` varchar(10) NOT NULL,
  `envoirment` varchar(10) NOT NULL,
  `comment` text,
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wd_tripadvizer_reviews`
--

INSERT INTO `wd_tripadvizer_reviews` (`id`, `date`, `guest`, `total_score`, `service`, `food_quality`, `envoirment`, `comment`, `hidden`) VALUES
(833, '2017-12-16 19:00', '\"Gunilla Luxmoore\"', '10', '10', '10', '10', '\"Härlig och serviceinriktad personal. Fantastiskt gott julbord❤️\"', 0),
(834, '2017-12-16 18:30', '\"Veronica Snell\"', '9.5', '8', '10', '10', '\"God mat och fint i restaurangen.\"', 0),
(837, '2017-12-15 18:00', '\"Magnus lindholm\"', '10', '10', '10', '10', '\"God mat . Duktig personal som klarade av ett större sällskap alldeles utmärkt.\"', 0),
(839, '2017-12-09 20:00', '\"Mattias Eriksson\"', '8', '10', '8', '6', '\"Lite stökigt och hög volym. grym personal och service! God mat', 0),
(842, '2017-12-05 19:00', '\"Sedat Köyluoglu\"', '10', '10', '10', '10', '\"Fantastiskt som vanligt\"', 0),
(843, '2017-12-05 19:00', '\"Fredrik Nilsson\"', '10', '10', '10', '10', '\"Oväntat gott och trevlig atmosfär\"', 0),
(847, '2017-11-25 21:00', '\"Ann Hermansson Alm\"', '9.5', '10', '10', '8', '\"Snabb och bra service. Mycket god mat.\"', 0),
(848, '2017-11-24 21:00', '\"Jerry Ramén\"', '10', '10', '10', '10', '\"Grönsaksmixtallriken perfekt', 0),
(850, '2017-11-17 20:00', '\"maria  Brännberger Bryntse\"', '10', '10', '10', '10', '\"Toopenrestaurang med god mat', 0),
(853, '2017-11-11 16:00', '\"Eva Wuolikainen\"', '10', '10', '10', '10', '\"Bra service med trevlig personal. Mycket och god mat.\"', 0),
(854, '2017-11-08 16:00', '\"Jan Gissberg\"', '9.5', '10', '10', '8', '\"Mysigt och trevligt', 0),
(858, '2017-11-04 16:00', '\"Eva Buxbaum\"', '10', '10', '10', '10', '\"Supertrevligt bemötande och väldigt professionellt. God mat och stilren miljö. Går gärna dit igen!\"', 0),
(860, '2017-11-01 19:00', '\"Ingela Lindqvist\"', '9.5', '10', '10', '8', '\"Mycket god och vällagad mat', 0),
(865, '2017-10-23 18:00', '\"Moises Hasbum\"', '8', '10', '8', '6', '\"Tasty hummus!\"', 0),
(867, '2017-10-20 18:00', '\"Navid Soltani\"', '10', '10', '10', '10', '\"Idyllisk och underbar restaurang med extremt god service!\"', 0),
(870, '2017-10-16 19:30', '\"Sonya Ata\"', '10', '10', '10', '10', '\"Great food', 0),
(872, '2017-10-14 17:30', '\"Mona Lönnebo\"', '8.5', '10', '8', '8', '\"Trevligt. Rikligt och välsmakande.\"', 0),
(873, '2017-10-12 18:00', '\"Anders Fagerman\"', '9.5', '8', '10', '10', '\"Väl värt ett besök!\"', 0),
(875, '2017-10-10 18:30', '\"Margareta Backlund\"', '9.5', '10', '10', '8', '\"Mycket bra service', 0),
(886, '2017-09-16 19:00', '\"Micaela Gustafsson\"', '10', '10', '10', '10', '\"Trevlig atmosfär med riktigt god mat och bra service. Kommer garanterat att gå hit igen!\"', 0),
(887, '2017-09-07 18:30', '\"helena olsson\"', '10', '10', '10', '10', '\"En mysig och fräsch lokal med utmärkt service och trevlig personal\"', 0),
(888, '2017-09-02 18:30', '\"Katarina Gaast\"', '8', '8', '8', '8', '-', 0),
(889, '2017-09-01 12:30', '\"Birgitta Jegefalk\"', '9.5', '10', '10', '8', '\"Vi var ett stort sällskap som åt lunch tillsammans och fick mat snabbt och samtidigt. Inte så vanligt vid lunchtid. Mycket bra.\"', 0),
(892, '2017-08-25 21:00', '\"Adriano Mazziotta\"', '9', '8', '10', '8', '\"The restaurant was worth the money i paid. The menu was Amazing!\"', 0),
(893, '2017-08-22 18:30', '\"Camilla Lindh\"', '10', '10', '10', '10', '\"Riktigt gott', 0),
(895, '2017-08-11 19:00', '\"Robin Lapidus\"', '8', '8', '8', '8', '\"Fint i kvällssolen', 0),
(896, '2017-08-07 16:00', '\"MANSOOR ALBESHRI\"', '8', '8', '8', '8', 'nice', 0),
(897, '2017-08-05 19:00', '\"Parmis Emtiaz\"', '10', '10', '10', '10', '-', 0),
(898, '2017-08-05 19:00', '\"Mattias Duvaldt\"', '8.5', '10', '8', '8', '-', 0),
(899, '2017-08-04 18:30', '\"camilla stenius\"', '9', '10', '10', '6', '-', 0),
(900, '2017-08-02 19:00', '\"Subu Surendran  Rajasekaran\"', '9.5', '8', '10', '10', '-', 0),
(901, '2017-07-30 16:00', '\"Bertil Marcusson\"', '10', '10', '10', '10', '\"Jag tycker inte den här rutan bör vara tvingande\"', 0),
(902, '2017-07-26 17:00', '\"Ali Nad\"', '7', '8', '6', '8', '\"Bad om stek men frågades inte om hur jag vill ha den tillagad.', 0),
(904, '2017-07-21 18:00', '\"Mattias Blidborg\"', '10', '10', '10', '10', '\"Trevlig restaurang med god mat och god service.\"', 0),
(905, '2017-07-13 19:30', '\"Helen Täfvander\"', '8', '8', '8', '8', '-', 0),
(906, '2017-07-02 18:00', '\"Elin Lundgren\"', '7.5', '8', '8', '6', '-', 0),
(907, '2017-06-26 19:30', '\"Evangelia Stergiadou\"', '8', '8', '8', '8', '\"Väldigt god mat med mycket smak', 0),
(908, '2017-06-26 18:30', '\"Martin lindeberg\"', '8', '8', '8', '8', '-', 0),
(909, '2017-06-20 18:30', '\"Therese Berggren\"', '10', '10', '10', '10', '\"Så god mat', 0),
(910, '2017-06-19 17:30', '\"Mona Rudin\"', '9.5', '10', '10', '8', '-', 0),
(911, '2017-06-14 17:00', '\"Tomas Davidsson\"', '10', '10', '10', '10', '\"Som vanligt levererar maten och servicen. Grymt ställe!\"', 0),
(912, '2017-06-13 19:00', '\"Aline Garcia\"', '10', '10', '10', '10', '\"The food is really good and the staff is friendly and efficient! I definitely recommend it! :)\"', 0),
(913, '2017-06-12 18:00', '\"Sofia Sisay\"', '8', '10', '8', '6', '\"Underbar restaurang med toppenmat!\"', 0),
(914, '2017-06-08 17:00', '\"Mia Hansback\"', '9.5', '10', '10', '8', '\"Väldigt god mat! :)\"', 0),
(915, '2017-06-06 18:00', '\"Mona Rudin\"', '9.5', '10', '10', '8', '-', 0),
(916, '2017-06-01 18:00', '\"IngMarie Meyer\"', '9', '10', '10', '6', '\"Supertrevlig service!\"', 0),
(917, '2017-05-24 19:00', '\"M. N.\"', '8.5', '10', '8', '8', '-', 0),
(918, '2017-05-23 19:00', '\"Anne Forsslund\"', '9', '10', '8', '10', '\"Stockholms bästa uteservering? Kvällssolen lyser garanterat vackert över vattnet', 0),
(919, '2017-05-18 18:30', '\"M. N.\"', '8.5', '10', '8', '8', '-', 0),
(920, '2017-05-10 19:00', '\"Ali Givehchy\"', '4.5', '6', '4', '4', '-', 0),
(921, '2017-05-05 20:00', '\"Thomas Hansen\"', '7', '6', '8', '6', '-', 0),
(922, '2017-05-03 18:00', '\"Sofia Johansson Gunnarsson\"', '8', '6', '8', '10', '-', 0),
(923, '2017-05-02 14:00', '\"Liam ONeill\"', '10', '10', '10', '10', '-', 0),
(924, '2017-04-28 17:30', '\"Therese Berggren\"', '10', '10', '10', '10', '-', 0),
(925, '2017-04-25 18:30', '\"Peder Kargl\"', '9.5', '10', '10', '8', '-', 0),
(926, '2017-04-22 19:30', '\"Anne-Lie  Kjellander\"', '8.5', '10', '8', '8', '-', 0),
(927, '2017-04-19 18:30', '\"Alexandra Blomberg\"', '9', '10', '8', '10', '\"Good food', 0),
(928, '2017-04-15 19:30', '\"Jose Somolinos\"', '9.5', '10', '10', '8', '\"Delicious food', 0),
(929, '2017-04-08 19:30', '\"Ricky Alfaro\"', '10', '10', '10', '10', '-', 0),
(930, '2017-04-06 19:00', '\"Mahnaz Shidvash\"', '10', '10', '10', '10', '\"Maten var jättegod????\"', 0),
(931, '2017-04-04 18:00', '\"Klas Heggemann\"', '8', '8', '8', '8', '-', 0),
(932, '2017-04-03 18:30', '\"Jens Brimberg\"', '9', '8', '10', '8', '-', 0),
(933, '2017-04-03 18:30', '\"Eva Andblom Svenson\"', '8.5', '10', '8', '8', '\"Vacker utsikt', 0),
(934, '2017-04-03 18:00', '\"Erik Nordanstig\"', '9.5', '10', '10', '8', '-', 0),
(935, '2017-03-27 18:30', '\"Andam Bakr\"', '8', '8', '8', '8', '-', 0),
(936, '2017-03-24 21:00', '\"Sedat Köyluoglu\"', '9.5', '8', '10', '10', '\"Allt va super gott och skön stämmning och jätte trevlig personal\"', 0),
(937, '2017-03-22 20:00', '\"Jessica Lundkvist Vardaro\"', '10', '10', '10', '10', '\"Supergod mat och service! Vi var ett stort sällskap med många olika beställningar! Trots detta fick vi in maten snabbt. Mycket trevlig personal! Restaurangen ligger även precis vid vattnet vilket är ett plus!\"', 0),
(938, '2017-03-22 18:00', '\"Tara Wahab\"', '10', '10', '10', '10', '\"Super mysig ställe men ha kontanter ifall du brukar lämna dricks. De drar inte dricks från kortet.\"', 0),
(939, '2017-03-22 17:30', '\"Mikael Manko\"', '9.5', '10', '10', '8', '-', 0),
(940, '2017-03-21 19:00', '\"Björn Häll Kellerman\"', '7.5', '8', '8', '6', '-', 0),
(941, '2017-03-21 18:30', '\"Mona Rudin\"', '9.5', '8', '10', '10', '-', 0),
(942, '2017-03-21 17:30', '\"Adrian Kia\"', '10', '10', '10', '10', '-', 0),
(943, '2017-03-20 17:30', '\"tommy jaks\"', '10', '10', '10', '10', '\"Jättegod mat och trevlig personal!\"', 0),
(944, '2017-03-18 21:00', '\"Stefania De Angelis\"', '7', '10', '4', '10', '\"Atmosphere and place amazing', 0),
(945, '2017-03-18 20:30', '\"Eleonora Formisano\"', '10', '10', '10', '10', '\"Piccolino', 0),
(946, '2017-03-18 17:30', '\"Jenni Mäkelä\"', '10', '10', '10', '10', '\"God mat och bra service\"', 0),
(947, '2017-03-18 16:30', '\"Rakel Österberg\"', '10', '10', '10', '10', '-', 0),
(948, '2017-03-18 16:00', '\"Emelie Isacsson\"', '10', '10', '10', '10', '-', 0),
(949, '2017-03-17 19:00', '\"Sally Abdelmoaty\"', '9.5', '10', '10', '8', '\"A great experience', 0),
(950, '2017-03-17 18:00', '\"Johanna Nilsson\"', '10', '10', '10', '10', '\"God mat och mycket hjälpsam personal.\"', 0),
(951, '2017-03-17 18:00', '\"Mona Rudin\"', '10', '10', '10', '10', '-', 0),
(952, '2017-03-17 17:30', '\"Martin lindeberg\"', '8', '8', '8', '8', '-', 0),
(953, '2017-03-15 20:30', '\"Domenico Leo\"', '9', '10', '8', '10', '\"Un ottimo ristorante', 0),
(954, '2017-03-15 18:30', '\"Rosana  labandera\"', '10', '10', '10', '10', '\"Rekommenderar', 0),
(955, '2017-03-14 19:30', '\"Sofia Johansson Gunnarsson\"', '9', '8', '10', '8', '\"Fantastiskt god mat!\"', 0),
(956, '2017-03-13 18:30', '\"Fibi Tengelgren\"', '9', '10', '8', '10', '\"Bra service. Fin atmosfär med havsutsikt.  ', 0),
(957, 'Maten är stor portion och utsökt.\"', 'Publicerad', '', '', '', '', NULL, 0),
(958, '2017-03-11 21:00', '\"Tommy Johansson\"', '9.5', '10', '10', '8', '-', 0),
(959, '2017-03-11 17:00', '\"Susanne Edlund\"', '7', '8', '6', '8', '\"Helhetsintrycket drogs tyvärr ner av en misslyckad baklava. Seg hård och omöjlig att skära i. Vi borde inte betalat för den men ville inte klaga.\"', 0),
(960, '2017-03-11 16:30', '\"Mikael Borg\"', '10', '10', '10', '10', '\"God mat', 0),
(961, '2017-03-10 21:00', '\"Adrian Kia\"', '9', '10', '8', '10', '-', 0),
(962, '2017-03-10 20:30', '\"Rakel Österberg\"', '10', '10', '10', '10', '-', 0),
(963, '2017-03-10 19:30', '\"Caroline Forsman\"', '10', '10', '10', '10', '-', 0),
(964, '2017-03-08 18:00', '\"Gabriel Hirsch\"', '6.5', '8', '6', '6', '\"Vanlig libanesisk mat.\"', 0),
(965, '2017-03-08 17:30', '\"Mona Rudin\"', '10', '10', '10', '10', '-', 0),
(966, '2017-03-07 20:30', '\"Zakka Shilazi\"', '10', '10', '10', '10', '-', 0),
(967, '2017-03-06 19:00', '\"Hanna Malmeby\"', '9', '10', '10', '6', '\"Bra', 0),
(968, '2017-03-04 16:00', '\"Rosalinda Di Stefano\"', '7.5', '6', '8', '8', '\"Paprikaröran är att dö för!!! Namnam! Mycket bra å velga på både for köttätare och vegetarianer. ', 0),
(969, '2017-03-03 19:00', '\"Ananascas@gmail.com Ambrose\"', '10', '10', '10', '10', '\"En fin resturang upplevelse\"', 0),
(970, '2017-03-03 18:30', '\"Maria Pettersson\"', '9', '10', '8', '10', '\"Super service! Goda meze från havet- kanske lite mycket citron-smak - skulle föredra mer citron på sidan och mindre i själva rätterna\"', 0),
(971, '2017-03-03 17:30', '\"Annika Lagervall\"', '8.5', '10', '8', '8', '-', 0),
(972, '2017-03-02 19:30', '\"Anna Freiman\"', '9', '8', '10', '8', '\"Fantastisk god mat! Enkel atmosfär och bra service.\"', 0),
(973, '2017-03-02 19:30', '\"Åsa Haggren\"', '8', '8', '8', '8', '\"Trevligt', 0),
(974, '2017-02-28 18:30', '\"Lena Gahnström\"', '7.5', '10', '8', '4', '-', 0),
(975, '2017-02-25 19:00', '\"Johanna Tollstorp\"', '9', '8', '10', '8', '\"Trevlig restaurang! Stora portioner och serviceminded personal.\"', 0),
(976, '2017-02-14 18:30', '\"Thomas Ingemarsson\"', '9.5', '8', '10', '10', '\"Jättegott', 0),
(977, '2017-02-14 16:30', '\"Ricky Alfaro\"', '9.5', '8', '10', '10', '\"Det var verkligen över förväntan', 0),
(978, '2017-02-13 18:30', '\"jenny carlsson\"', '8', '10', '8', '6', '-', 0),
(979, '2017-02-10 20:00', '\"Matilda Uhrström\"', '7', '6', '8', '6', '\"Maten var mycket god', 0),
(980, '2017-02-08 20:00', '\"Maurice Hill\"', '10', '10', '10', '10', '-', 0),
(981, '2017-02-02 20:00', '\"Aida Bou Assaf\"', '10', '10', '10', '10', '\"Very gd lebanese food spec the chicken plate!\"', 0),
(982, '2017-01-31 18:30', '\"Alexander Mekonen\"', '10', '10', '10', '10', '\"Var här en tisdag kväll med familj. Väldigt lugng och mysigt. Måste säga att maten var utmärkt. Bästa Maten jag har ätit från ett libanesisk kök. Servicen var verkligen toppen. Reklomenderar valet där man får 8 varma och 8 kalla rätter som verkligen fyllda magen. 10/10 verkligen utmärkt!\"', 0),
(983, '2017-01-28 18:00', '\"Mona Rudin\"', '9', '8', '10', '8', '-', 0),
(984, '2017-01-28 18:00', '\"Andreas Mårtensson\"', '9', '10', '8', '10', '-', 0),
(985, '2017-01-27 20:00', '\"Karin Marklund\"', '9.5', '10', '10', '8', '\"Jättegott! Trevlig personal! Värt ett besök.\"', 0),
(986, '2017-01-21 20:00', '\"Fabian Rosenberg\"', '7.5', '8', '8', '6', '\"Gullig personal', 0),
(987, '2017-01-21 18:00', '\"Roland Scholten\"', '9.5', '8', '10', '10', '\"Jättegod mat och rejäla portioner!\"', 0),
(988, '2017-01-18 18:00', '\"Sami Korhonen\"', '9.5', '10', '10', '8', '\"Genuin libanesisk mat gjord på färska fina råvaror. Vinlistan består av libanesiska viner av bra kvalité. Med det sagt har krögaren skapat en bra helhet där mat och dryck baseras på det libanesiska arvet och inget annat. Servicen var personlig och bra innehållande god information och tips om kökets rekommendationer och lämpliga kompositioner för kvällens blandning av mezerätter.\"', 0),
(989, '2017-01-14 20:00', '\"Chiara Sorgentone\"', '7', '8', '6', '8', '-', 0),
(990, '2017-01-07 16:00', '\"Mustafa Özmen\"', '10', '10', '10', '10', '\"Super god mat\"', 0),
(991, '2017-01-03 16:00', '\"Simon Kasselia\"', '8.5', '8', '8', '10', 'Bra', 0),
(992, '2016-12-31 20:00', '\"Viktor Karlsson\"', '5.5', '8', '4', '6', '\"Dålig mat', 0),
(993, '2016-12-30 20:00', '\"Clément Ouaine\"', '4.5', '8', '2', '6', '-', 0),
(994, '2016-12-29 19:30', '\"Ziriane Sallahz\"', '10', '10', '10', '10', '-', 0),
(995, '2016-12-28 18:00', '\"Andris Zvejnieks\"', '9.5', '10', '10', '8', '-', 0),
(996, '2016-12-23 19:30', '\"Shahla Karlsson\"', '10', '10', '10', '10', '-', 0),
(997, '2016-12-23 16:00', '\"Usman Cheema\"', '10', '10', '10', '10', '\"Nice place', 0),
(998, '2016-12-20 18:00', '\"Jan Sundström\"', '9', '8', '10', '8', '\"OBS att The Fork-rabatten inte gäller på meze-erbjudandena. Vi betalade fullpris (295 kr för 8 kalla + 8 varma rätter)', 0),
(999, '', '', '', '', '', '', NULL, 0),
(1000, '2016-12-09 18:00', '\"Björn Lindén\"', '8.5', '10', '8', '8', '\"En mkt trevlig fredagskväll på en mkt trevlig restaurant', 0),
(1001, '2016-12-08 19:00', '\"Alex C\"', '9.5', '10', '10', '8', '-', 0),
(1002, '2016-11-26 20:00', '\"Nicola Detta\"', '6', '8', '6', '4', '-', 0),
(1003, '2016-11-26 17:00', '\"Sara Lindberg\"', '8.5', '6', '10', '8', '\"8 kalla 8 varma borde inte stå som en huvudrätt utan som avsmakningsmeny eller specialmeny.\"', 0),
(1004, '2016-11-26 16:30', '\"Shirley Magne\'\"', '10', '10', '10', '10', '\"Mycket tålmodig ( vi hade livliga småbarn med) personal', 0),
(1005, 'Hela sällskapet var mycket nöjda med maten.\"', 'Publicerad', '', '', '', '', NULL, 0),
(1006, '2016-11-19 17:00', '\"Thomas Andersson\"', '9.5', '10', '10', '8', '-', 0),
(1007, '2016-11-11 18:00', '\"Tobias Ohlsson\"', '8.5', '10', '8', '8', '-', 0),
(1008, '2016-10-22 20:00', '\"James Black\"', '8.5', '10', '8', '8', '\"For Stockholm a very reasonable priced restaurant . Welcoming staff ', 0),
(1009, '2016-10-21 20:00', '\"Jean-François Olivier\"', '6.5', '10', '6', '4', '\"Good service. Nice personnel.\"', 0),
(1010, '2016-10-08 20:00', '\"Eva Hollström\"', '9', '10', '10', '6', '\"Trevlig personal som gav god service!\"', 0),
(1011, '2016-10-04 20:00', '\"Berivan Mert\"', '9', '8', '10', '8', '\"Mycket och god mat.\"', 0),
(1012, '2016-09-19 20:00', '\"Alexandre LAMBERT\"', '6', '2', '8', '6', '\"Les avis Tripadvisor laissait présager un bon moment. Rien à dire sur la qualité des plats qui sont excelllents. En revanche', 0),
(1013, '2016-08-27 21:00', '\"emelie svensson\"', '10', '10', '10', '10', '\"Väldigt bra!\"', 0),
(1014, '2016-08-19 19:30', '\"Filippo Dionisi\"', '9', '10', '8', '10', '\"It has been a great pleasure to eat at this restaurant. The staff was since the start extremely nice and friendly. We took the vegetarian plates and got confused with the price', 0),
(1015, '2016-08-17 19:30', '\"Jarmo Kaukua\"', '10', '10', '10', '10', '-', 0),
(1016, '2016-08-12 18:00', '\"Cathleen Ozel\"', '10', '10', '10', '10', '-', 0),
(1017, '2016-08-01 16:30', '\"Inguna Pineda\"', '8', '8', '8', '8', '\"Bra mat', 0),
(1018, '2016-07-27 21:00', '\"Tuomo Seppänen\"', '10', '10', '10', '10', '-', 0),
(1019, '2016-07-22 18:30', '\"Leif Sabelström\"', '10', '10', '10', '10', '-', 0),
(1020, '2016-07-13 12:30', '\"Michael Andersson\"', '10', '10', '10', '10', '\"Ett mycket gott och trevligt ställe att vara och njuta på', 0),
(1021, '2016-07-10 20:00', '\"Belinda Rodriguez\"', '6.5', '2', '8', '8', '-', 0),
(1022, '2016-07-08 21:00', '\"Alexander Aghai\"', '8.5', '10', '8', '8', '-', 0),
(1023, '2016-06-29 18:30', '\"Christine Bylund\"', '10', '10', '10', '10', '\"Supertrevligt', 0),
(1024, '2016-06-20 18:30', '\"Nasima Ali Khodabandeh\"', '10', '10', '10', '10', '-', 0),
(1025, '2016-06-17 20:00', '\"Iggy Gullstrand\"', '7.5', '8', '8', '6', '-', 0),
(1026, '2016-04-21 18:30', '\"Mikaela Åstrand\"', '9.5', '10', '10', '8', '\"Fantastisk service och jättegod mat. Hit går vi igen!\"', 0),
(1027, '2016-04-17 16:00', '\"G Lindberg\"', '10', '10', '10', '10', '-', 0),
(1028, '2016-04-16 17:30', '\"Petros Dagol\"', '9', '10', '8', '10', '\"Bra läge med bra utsikt. Fin resturang med god mat och trevlig personal. Rekommenderas! \"', 0),
(1029, '2016-04-15 19:30', '\"Sharat Gupta\"', '10', '10', '10', '10', '\"Bra service', 0),
(1030, '2016-03-26 19:00', '\"Peter Konrad\"', '9', '8', '10', '8', '-', 0),
(1031, '2016-03-24 20:30', '\"Zakka Shilazi\"', '10', '10', '10', '10', '\"Kanongod mat och bra service. Oxfilén var perfekt marinerad och portionen hade lagom storlek. En av Hornsbergs strands pärlor.\"', 0),
(1032, '2016-03-24 20:00', '\"Monika Reissmüller\"', '10', '10', '10', '10', '\"Mycket trevligt! Kanonservice! Mycket prisvärd!\"', 0),
(1033, '2016-03-24 20:00', '\"Djeakandane Govindane\"', '7', '10', '6', '6', '\"Ambience was excellent \"', 0),
(1034, '2016-03-24 19:00', '\"Klas Heggemann\"', '9.5', '10', '10', '8', '-', 0),
(1035, '2016-03-24 17:00', '\"Susann Rådström Drougge\"', '9.5', '10', '10', '8', '\"Vi var nöjda! Kommer tillbaks när vi kan sitta ute o titta ut över vattnet!\"', 0),
(1036, '2016-03-23 19:30', '\"Stefan Gustavsson\"', '10', '10', '10', '10', '-', 0),
(1037, '2016-03-23 19:00', '', '10', '10', '10', '10', '\"Genomgående goda smaker på allt.\"', 0),
(1038, '2016-03-23 18:00', '\"Ulrika Ehrensvärd\"', '8', '8', '8', '8', '\"Maten var god och riklig. Gott kött och härliga röror. Miljön var lugn och behaglig.\"', 0),
(1039, '2016-03-23 17:30', '\"Fanny Jonsson\"', '10', '10', '10', '10', '-', 0),
(1040, '2016-03-22 17:30', '\"Alexandra Havik\"', '7.5', '8', '8', '6', '-', 0),
(1041, '2016-03-18 20:30', '', '6', '6', '6', '6', '\"Mycket trevlig restaurang med god mat! Något ojämn servering men trevlig personal. Lugn behaglig atmosfär.\"', 0),
(1042, '2016-03-18 20:30', '\"Marja-Leena Pilvesmaa\"', '6', '6', '6', '6', '\"Hygglig', 0),
(1043, '2016-03-17 18:30', '\"Cristiana Brenna\"', '10', '10', '10', '10', '-', 0),
(1044, '2016-03-16 18:00', '\"Deirdre Olsson\"', '7.5', '8', '8', '6', '-', 0),
(1045, '2016-03-12 19:00', '\"Lisa gustafsson\"', '7', '6', '8', '6', '\"Trevlig restaurang mycket mat och väldigt gott kött\"', 0),
(1046, '2016-03-11 18:30', '\"Anders Månsson\"', '8', '10', '6', '10', '\"Trygg och rättfram libanesiska meze. Provade oxfilé och lax', 0),
(1047, '2016-03-10 19:30', '\"Carlos Sanchez\"', '10', '10', '10', '10', '-', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wd_usermeta`
--

CREATE TABLE `wd_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_usermeta`
--

INSERT INTO `wd_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'golova'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wd_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wd_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wd_dashboard_quick_press_last_post_id', '309'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"109.87.189.0\";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'closedpostboxes_restaurant', 'a:0:{}'),
(22, 1, 'metaboxhidden_restaurant', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(23, 1, 'wd_user-settings', 'libraryContent=browse&editor=html'),
(24, 1, 'wd_user-settings-time', '1515685825'),
(25, 1, 'meta-box-order_restaurant', 'a:3:{s:4:\"side\";s:39:\"submitdiv,menu_categorydiv,postimagediv\";s:6:\"normal\";s:63:\"postexcerpt,Menustructure,postcustom,slugdiv,fw-options-box-seo\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_restaurant', '2'),
(27, 1, 'closedpostboxes_page', 'a:1:{i:0;s:18:\"fw-options-box-seo\";}'),
(28, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(29, 1, 'wd_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:614:\"<p>The <em>Google XML Sitemaps</em> plugin might cause issues when used in conjunction with Yoast SEO.</p><p>Both Yoast SEO and Google XML Sitemaps can create XML sitemaps. Having two XML sitemaps is not beneficial for search engines, yet might slow down your site.<br/><br/><a class=\"button\" href=\"http://ns6.inleed.net/~beirutbist/wp-admin/admin.php?page=wpseo_xml\">Configure Yoast SEO\'s XML Sitemap settings</a></p><a class=\"button button-primary\" href=\"plugins.php?action=deactivate&amp;plugin=google-sitemap-generator%2Fsitemap.php&amp;plugin_status=all&amp;_wpnonce=6bd3b579d2\">Deactivate Google XML Sitemaps</a> \";s:7:\"options\";a:8:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:47:\"wpseo-conflict-d3e7311d20ccd459ef1ade2a522ccfe6\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";}}i:1;a:2:{s:7:\"message\";s:171:\"Don\'t miss your crawl errors: <a href=\"http://ns6.inleed.net/~beirutbist/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:2;a:2:{s:7:\"message\";s:783:\"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href=\"https://yoa.st/rate-yoast-seo?utm_content=6.3.1\">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href=\"https://yoa.st/bugreport?utm_content=6.3.1\">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?utm_content=6.3.1\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class=\"button\" href=\"http://ns6.inleed.net/~beirutbist/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8000000000000000444089209850062616169452667236328125;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}'),
(30, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:100:\"fw-options-box-page-builder-box,wpseo_meta,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'screen_layout_page', '2'),
(32, 1, 'abtf_show_offer', '0'),
(33, 1, 'session_tokens', 'a:1:{s:64:\"97d190a1912847b29957a677312d4a07f3a2fcac2b7c6389eafb87c1c94ca879\";a:4:{s:10:\"expiration\";i:1519902877;s:2:\"ip\";s:13:\"109.87.189.40\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1519730077;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_users`
--

CREATE TABLE `wd_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_users`
--

INSERT INTO `wd_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'golova', '$P$BgvIYBf7pJmOxidt4JKvTDd9AlCTPv1', 'golova', 'vasilenco75@gmail.com', '', '2017-10-13 11:54:49', '', 0, 'golova');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_yoast_seo_links`
--

CREATE TABLE `wd_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_yoast_seo_links`
--

INSERT INTO `wd_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(20, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1645.jpg', 7, 0, 'internal'),
(19, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC1761.jpg', 7, 0, 'internal'),
(18, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5433.jpg', 7, 0, 'internal'),
(17, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5481.jpg', 7, 0, 'internal'),
(16, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5593.jpg', 7, 0, 'internal'),
(15, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5652-1.jpg', 7, 0, 'internal'),
(14, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5691.jpg', 7, 0, 'internal'),
(13, 'http://ns6.inleed.net/~beirutbist/wp-content/uploads/2017/12/DSC5702.jpg', 7, 0, 'internal'),
(12, 'https://www.thefork.se/restaurang/beirut-bistro/76090#reviews', 7, 0, 'external'),
(11, 'http://www.beirutbistro.se/mobile-book-a-table.html', 7, 0, 'external');

-- --------------------------------------------------------

--
-- Структура таблицы `wd_yoast_seo_meta`
--

CREATE TABLE `wd_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wd_yoast_seo_meta`
--

INSERT INTO `wd_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(7, 8, 0),
(303, 0, 0),
(204, 0, 0),
(221, 0, 0),
(225, 0, 0),
(222, 0, 0),
(220, 0, 0),
(219, 0, 0),
(218, 0, 0),
(217, 0, 0),
(216, 0, 0),
(215, 0, 0),
(214, 0, 0),
(291, 0, 0),
(86, 0, 0),
(85, 0, 0),
(84, 0, 0),
(83, 0, 0),
(61, 0, 0),
(305, 0, 0),
(68, 0, 0),
(73, 0, 0),
(253, 0, 0),
(254, 0, 0),
(263, 0, 0),
(264, 0, 0),
(265, 0, 0),
(267, 0, 0),
(307, 0, 0),
(309, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wd_ariadminer_connections`
--
ALTER TABLE `wd_ariadminer_connections`
  ADD PRIMARY KEY (`connection_id`);

--
-- Индексы таблицы `wd_commentmeta`
--
ALTER TABLE `wd_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wd_comments`
--
ALTER TABLE `wd_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wd_create_map`
--
ALTER TABLE `wd_create_map`
  ADD PRIMARY KEY (`map_id`);

--
-- Индексы таблицы `wd_gmwd_circles`
--
ALTER TABLE `wd_gmwd_circles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_maps`
--
ALTER TABLE `wd_gmwd_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_mapstyles`
--
ALTER TABLE `wd_gmwd_mapstyles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_markercategories`
--
ALTER TABLE `wd_gmwd_markercategories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_markers`
--
ALTER TABLE `wd_gmwd_markers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_options`
--
ALTER TABLE `wd_gmwd_options`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_polygons`
--
ALTER TABLE `wd_gmwd_polygons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_polylines`
--
ALTER TABLE `wd_gmwd_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_rectangles`
--
ALTER TABLE `wd_gmwd_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_shortcodes`
--
ALTER TABLE `wd_gmwd_shortcodes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_gmwd_themes`
--
ALTER TABLE `wd_gmwd_themes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_group_map`
--
ALTER TABLE `wd_group_map`
  ADD PRIMARY KEY (`group_map_id`);

--
-- Индексы таблицы `wd_links`
--
ALTER TABLE `wd_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wd_map_locations`
--
ALTER TABLE `wd_map_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Индексы таблицы `wd_options`
--
ALTER TABLE `wd_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wd_postmeta`
--
ALTER TABLE `wd_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wd_posts`
--
ALTER TABLE `wd_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wd_termmeta`
--
ALTER TABLE `wd_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wd_terms`
--
ALTER TABLE `wd_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wd_term_relationships`
--
ALTER TABLE `wd_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wd_term_taxonomy`
--
ALTER TABLE `wd_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wd_tripadvizer_reviews`
--
ALTER TABLE `wd_tripadvizer_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wd_usermeta`
--
ALTER TABLE `wd_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wd_users`
--
ALTER TABLE `wd_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wd_yoast_seo_links`
--
ALTER TABLE `wd_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Индексы таблицы `wd_yoast_seo_meta`
--
ALTER TABLE `wd_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wd_ariadminer_connections`
--
ALTER TABLE `wd_ariadminer_connections`
  MODIFY `connection_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_commentmeta`
--
ALTER TABLE `wd_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_comments`
--
ALTER TABLE `wd_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wd_create_map`
--
ALTER TABLE `wd_create_map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_circles`
--
ALTER TABLE `wd_gmwd_circles`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_maps`
--
ALTER TABLE `wd_gmwd_maps`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_mapstyles`
--
ALTER TABLE `wd_gmwd_mapstyles`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_markercategories`
--
ALTER TABLE `wd_gmwd_markercategories`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_markers`
--
ALTER TABLE `wd_gmwd_markers`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_options`
--
ALTER TABLE `wd_gmwd_options`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_polygons`
--
ALTER TABLE `wd_gmwd_polygons`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_polylines`
--
ALTER TABLE `wd_gmwd_polylines`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_rectangles`
--
ALTER TABLE `wd_gmwd_rectangles`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_shortcodes`
--
ALTER TABLE `wd_gmwd_shortcodes`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wd_gmwd_themes`
--
ALTER TABLE `wd_gmwd_themes`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wd_group_map`
--
ALTER TABLE `wd_group_map`
  MODIFY `group_map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_links`
--
ALTER TABLE `wd_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_map_locations`
--
ALTER TABLE `wd_map_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wd_options`
--
ALTER TABLE `wd_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2483;

--
-- AUTO_INCREMENT для таблицы `wd_postmeta`
--
ALTER TABLE `wd_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2100;

--
-- AUTO_INCREMENT для таблицы `wd_posts`
--
ALTER TABLE `wd_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT для таблицы `wd_termmeta`
--
ALTER TABLE `wd_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `wd_terms`
--
ALTER TABLE `wd_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wd_term_taxonomy`
--
ALTER TABLE `wd_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wd_tripadvizer_reviews`
--
ALTER TABLE `wd_tripadvizer_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049;

--
-- AUTO_INCREMENT для таблицы `wd_usermeta`
--
ALTER TABLE `wd_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `wd_users`
--
ALTER TABLE `wd_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wd_yoast_seo_links`
--
ALTER TABLE `wd_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
