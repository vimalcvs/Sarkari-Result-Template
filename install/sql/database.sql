DROP TABLE IF EXISTS `ads`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `comments`;
DROP TABLE IF EXISTS `files`;
DROP TABLE IF EXISTS `gallery`;
DROP TABLE IF EXISTS `menu`;
DROP TABLE IF EXISTS `messages`;
DROP TABLE IF EXISTS `newsletter`;
DROP TABLE IF EXISTS `pages`;
DROP TABLE IF EXISTS `posts`;
DROP TABLE IF EXISTS `settings`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `widgets`;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ads` (`id`, `type`, `code`, `active`) VALUES
(1, 'Header', '<a href=\"https://codecanyon.net/item/phpblog-powerful-blog-cms/5979801?ref=Antonov_WEB\" target=\"_blank\" style=\"float: right;\"><img src=\"uploads/codecanyon-banner.gif\" width=\"100%\"></a>', 'Yes');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Site News'),
(2, 'About Me'),
(3, 'Reviews'),
(4, 'Music'),
(5, 'IT News'),
(6, 'Gaming'),
(7, 'Movies'),
(8, 'Sport'),
(9, 'Other'),
(10, 'Tutorials');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `post_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'assets/img/avatar.png',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `approved` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `menu` (`id`, `page`, `path`, `fa_icon`) VALUES
(1, 'Home', 'index.php', 'fa-home'),
(2, 'About', 'page.php?id=1', 'fa-info-circle'),
(3, 'Gallery', 'gallery.php', 'fa-picture-o'),
(4, 'Blog', 'blog.php', 'fa-file-text-o'),
(5, 'Contact', 'contact.php', 'fa-phone'),
(6, 'Custom Page', 'page.php?id=2', 'fa-pencil');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `viewed` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `pages` (`id`, `title`, `content`) VALUES
(1, 'About', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus faucibus auctor nisl vitae fermentum. Vivamus diam risus, hendrerit id lobortis sed, commodo ut tellus. Nulla ultricies magna a libero auctor, id tincidunt elit vulputate. Nullam ut dictum tellus. In ut consequat velit. Vivamus lorem dui, cursus in turpis eget, congue adipiscing risus. Nullam sit amet lorem sed nisl scelerisque facilisis vel vel tellus. Curabitur euismod justo nec sapien viverra, id consectetur justo tincidunt.&lt;br /&gt;\r\n&lt;br /&gt;\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ultrices ornare enim sed mollis. Sed porttitor nulla ac purus hendrerit ultrices. Nullam sed diam quis turpis varius suscipit ut vel massa. Nulla nisi arcu, viverra ac nisl at, vulputate ornare lectus. Pellentesque eget velit dui. Maecenas mollis congue sem, nec fringilla ligula cursus quis. Phasellus euismod elementum rutrum. Morbi elementum mi in arcu dapibus sagittis. Aliquam fringilla neque sed dui lacinia interdum. Duis a odio dui. Proin rutrum nulla nulla, sed aliquam neque commodo sed. Proin diam urna, volutpat vel felis et, volutpat iaculis nisl.&lt;br /&gt;\r\n&lt;br /&gt;\r\nAenean sagittis egestas volutpat. Sed facilisis sagittis tempus. Donec ante magna, faucibus eu urna eu, suscipit porttitor justo. Vivamus dictum justo vel lectus pretium, sit amet tempor dui tempus. Aliquam et risus quam. Vivamus mattis elit sit amet sem condimentum dignissim. Nullam purus ipsum, vehicula non fringilla et, faucibus varius nisl. Fusce nec rhoncus felis, id interdum risus. Vestibulum vitae dignissim diam. Donec bibendum enim lacus, et placerat urna lobortis non. Phasellus adipiscing molestie lectus, at mattis metus malesuada sit amet. Maecenas in est pretium, tincidunt nisl cursus, accumsan mi. Sed elementum, diam et suscipit adipiscing, quam odio tempor nisl, nec suscipit orci lectus id arcu. Suspendisse potenti. Phasellus id euismod erat. Nulla ligula justo, pharetra a bibendum non, sodales et ipsum.&lt;/p&gt;\r\n'),
(2, 'Custom Page', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus faucibus auctor nisl vitae fermentum. Vivamus diam risus, hendrerit id lobortis sed, commodo ut tellus. Nulla ultricies magna a libero auctor, id tincidunt elit vulputate. Nullam ut dictum tellus. In ut consequat velit. Vivamus lorem dui, cursus in turpis eget, congue adipiscing risus. Nullam sit amet lorem sed nisl scelerisque facilisis vel vel tellus. Curabitur euismod justo nec sapien viverra, id consectetur justo tincidunt.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ultrices ornare enim sed mollis. Sed porttitor nulla ac purus hendrerit ultrices. Nullam sed diam quis turpis varius suscipit ut vel massa. Nulla nisi arcu, viverra ac nisl at, vulputate ornare lectus. Pellentesque eget velit dui. Maecenas mollis congue sem, nec fringilla ligula cursus quis. Phasellus euismod elementum rutrum. Morbi elementum mi in arcu dapibus sagittis. Aliquam fringilla neque sed dui lacinia interdum. Duis a odio dui. Proin rutrum nulla nulla, sed aliquam neque commodo sed. Proin diam urna, volutpat vel felis et, volutpat iaculis nisl.\r\n\r\nAenean sagittis egestas volutpat. Sed facilisis sagittis tempus. Donec ante magna, faucibus eu urna eu, suscipit porttitor justo. Vivamus dictum justo vel lectus pretium, sit amet tempor dui tempus. Aliquam et risus quam. Vivamus mattis elit sit amet sem condimentum dignissim. Nullam purus ipsum, vehicula non fringilla et, faucibus varius nisl. Fusce nec rhoncus felis, id interdum risus. Vestibulum vitae dignissim diam. Donec bibendum enim lacus, et placerat urna lobortis non. Phasellus adipiscing molestie lectus, at mattis metus malesuada sit amet. Maecenas in est pretium, tincidunt nisl cursus, accumsan mi. Sed elementum, diam et suscipit adipiscing, quam odio tempor nisl, nec suscipit orci lectus id arcu. Suspendisse potenti. Phasellus id euismod erat. Nulla ligula justo, pharetra a bibendum non, sodales et ipsum.');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `sitename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `settings` (`id`, `sitename`, `description`, `keywords`, `email`, `facebook`, `twitter`, `youtube`) VALUES
(1, 'phpBlog', 'Content Management System', 'cms,content management system, content, management, system, blog, blogging, article, post, gallery, news, newspaper, magazine, media, portal, create, build,', 'admin@mail.com', 'https://www.facebook.com', 'https://twitter.com', 'https://www.youtube.com');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `widgets` (`id`, `title`, `content`) VALUES
(1, 'Text Widget', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ornare sem tempor massa volutpat, quis varius urna placerat. Aliquam erat volutpat. Suspendisse lorem odio, imperdiet ut elit vitae, dignissim pretium odio. Pellentesque ac rutrum lacus. Proin nec nunc quis enim suscipit scelerisque ut eu velit. Sed eu lobortis lorem. Quisque ac dolor mattis, malesuada metus id, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.&lt;/p&gt;\r\n');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;