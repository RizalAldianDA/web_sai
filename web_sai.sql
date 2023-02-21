-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2021 at 03:53 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_sai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'fisherman', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `berandas`
--

CREATE TABLE `berandas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` date NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berandas`
--

INSERT INTO `berandas` (`id`, `judul_info`, `publisher`, `keterangan`, `day`, `jenis`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing. A3', 'Fisherman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Artikel', 'assets/images\\user-1630162117.jpg', '2021-08-28 07:48:37', '2021-08-28 07:48:37'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing. B1', 'Fisherman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Berita', 'assets/images\\user-1630162158.jpg', '2021-08-28 07:49:18', '2021-08-28 07:49:18'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing. B2', 'Fisherman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Berita', 'assets/images\\user-1630162186.jpg', '2021-08-28 07:49:46', '2021-08-28 07:49:46'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing. B3', 'Fisherman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Berita', 'assets/images\\user-1630162212.jpg', '2021-08-28 07:50:12', '2021-08-28 07:50:12'),
(7, 'Lorem ipsum dolor sit amet, consectetur adipiscing. R1', 'Fisherman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Recruitment', 'assets/images\\user-1630162248.jpg', '2021-08-28 07:50:48', '2021-08-28 07:50:48'),
(8, 'Lorem ipsum dolor sit amet, consectetur adipiscing. R2', 'Fisherman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Recruitment', 'assets/images\\user-1630162280.jpg', '2021-08-28 07:51:20', '2021-08-28 07:51:20'),
(9, 'Lorem ipsum dolor sit amet, consectetur adipiscing. A4', 'Fisherman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, books ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Artikel', 'assets/images\\user-1630164390.jpg', '2021-08-28 08:26:30', '2021-08-28 08:26:30'),
(10, 'Lorem ipsum dolor sit amet, consectetur adipiscing. R3', 'Fisherman', 'Lorem Fisherman ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend erat et mauris lobortis, sit amet gravida massa hendrerit. In lobortis interdum consectetur. Praesent luctus consequat enim, ut vulputate nunc sollicitudin a. Quisque ullamcorper ut velit id convallis. Curabitur in nulla ut risus consequat consectetur vitae sit amet dolor. Integer odio erat, malesuada sit amet cursus eget, molestie ultricies ex. Vestibulum iaculis orci ac lacus porta, et tincidunt arcu semper. Praesent nunc arcu, dapibus at luctus cursus, volutpat id leo. Suspendisse nec velit vitae dolor elementum congue. Vivamus sed leo enim. Donec interdum purus id molestie tincidunt. Praesent volutpat nibh vitae pharetra venenatis. In sed nulla imperdiet, fringilla velit quis, feugiat leo. Mauris egestas lacus massa, id sagittis est lacinia pharetra.\r\n\r\nProin fermentum consequat ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales venenatis metus tempus blandit. In vel eros semper, efficitur leo eget, sagittis sapien. Maecenas varius diam sed sodales maximus. Fusce at ornare elit. Aliquam mattis diam urna, eu dignissim tortor viverra in. Nulla aliquam urna et dolor efficitur, eu ultricies eros molestie. Maecenas ultrices ullamcorper tortor, eu laoreet risus luctus vel. Donec nulla nulla, posuere eget felis vel, convallis varius diam. Maecenas ligula augue, dictum in blandit quis, ultrices in diam.\r\n\r\nIn volutpat auctor pulvinar. Phasellus eu nisi ac ligula ornare rhoncus. Phasellus convallis, nulla vestibulum pulvinar eleifend, nibh urna dictum felis, ac varius sapien eros vitae ante. Cras nec porttitor tortor. Aliquam iaculis aliquam lorem, quis viverra tellus semper ornare. Aenean mollis, magna a convallis congue, quam nisi vulputate enim, a hendrerit mi arcu vitae diam. Pellentesque nisi nibh, convallis ut faucibus quis, euismod vel sapien. Morbi egestas orci ut mauris maximus suscipit. Nunc vestibulum ipsum eu est porttitor, ut luctus leo laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sed nulla quis nibh egestas luctus at id felis. Nullam sagittis bibendum sapien id tempor. Nulla sed odio quis metus malesuada varius. Curabitur gravida lorem non justo tristique, a luctus elit bibendum. Nullam justo nibh, scelerisque et neque quis, posuere efficitur sapien.\r\n\r\nDonec in sagittis velit. Sed cursus elit sit amet eros porta volutpat. Pellentesque a accumsan turpis, nec laoreet est. Nam auctor, purus eget iaculis euismod, mauris odio mollis ex, ut varius ante justo vestibulum dui. Ut non purus in nibh suscipit gravida. Vivamus tempor, est pellentesque blandit congue, arcu ligula gravida metus, in cursus nibh lacus id nunc. Donec a elit a odio pretium pulvinar in et purus. Praesent sed ullamcorper ex, sodales tincidunt ipsum. Aliquam ornare est quis eleifend feugiat. Duis gravida elit in elit rhoncus, nec luctus metus rutrum. Aenean viverra fermentum turpis, sed congue neque lacinia at. Morbi ipsum purus, fermentum a est in, sollicitudin venenatis nulla. Nullam mattis arcu tincidunt ex pulvinar, eget volutpat dui sagittis. Integer eu massa eu arcu scelerisque hendrerit et vel arcu. Aenean ipsum mauris, scelerisque sit amet fermentum malesuada, condimentum a nisi.\r\n\r\nDonec quis ornare enim. Curabitur aliquet sollicitudin urna quis semper. Sed nec mauris et nulla malesuada ultricies. Donec porta neque eu malesuada ultrices. Morbi eget eros eget turpis vulputate finibus non eu orci. Etiam dapibus lacus leo, eget lacinia justo suscipit dapibus. Phasellus vitae mattis urna, in finibus quam. Etiam blandit congue ante, auctor malesuada est egestas vitae. Mauris faucibus viverra lacus, eleifend posuere magna ultrices vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed turpis non arcu vestibulum facilisis. Nulla posuere consectetur dolor, ullamcorper vestibulum sapien dapibus non. Mauris posuere risus id quam pretium mollis.', '2021-09-11', 'Recruitment', 'assets/images\\user-1630164450.jpg', '2021-08-28 08:27:30', '2021-08-28 08:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checks`
--

INSERT INTO `checks` (`id`, `name`, `document_page`, `download_page`, `created_at`, `updated_at`) VALUES
(1, 'Primary', 'Up', 'Up', '2021-08-27 02:40:02', '2021-09-04 04:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `nama_file`, `publisher_file`, `file`, `tipe_file`, `created_at`, `updated_at`) VALUES
(5, 'Lorem ipsum', 'Fisherman', 'assets/files\\file-1630859045.pdf', 'Document', '2021-09-05 09:20:44', '2021-09-05 09:24:05'),
(6, 'Lorem ipsum D', 'Fisherman', 'assets/files\\file-1630859092.docx', 'Download', '2021-09-05 09:24:52', '2021-09-05 09:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `info_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_pub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_ket` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `info_tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `info_title`, `info_pub`, `info_ket`, `date`, `info_tipe`, `created_at`, `updated_at`) VALUES
(1, 'Satuan Audit Internal', 'Fisherman', '1.Audit internal adalah kegiatan yang independen dan obyektif dalam bentuk pemberian keyakinan [assurance activities] dan konsultansi [consulting activities], yang dirancang untuk memberi nilai tambah dan meningkatkan operasional sebuah organisasi [auditee]. Kegiatan ini membantu organisasi [auditee] mencapai tujuannya dengan cara menggunakan pendekatan yang sistematis dan teratur untuk menilai dan meningkatkan efektivitas dari proses manajemen risiko, kontrol [pengendalian], dan tata kelola [sektor pendidikan]. Orientasi kegiatan Auditor internal lebih berorientasi ke arah masa depan, yaitu kejadian-kejadian yang diperkirakan akan terjadi, baik yang memiliki dampak positif (peluang) maupun dampak negatif (risiko), serta bagaimana organisasi bersiap terhadap segala kemungkinan pencapaian tujuannya\r\n\r\n2.Satuan Audit Internal adalah unit pengawasan Internal Institut Teknologi Telkom Purwokerto yang dibentuk dengan tugas melaksanakan audit internal di lingkungan Pendidikan Institut Teknologi Telkom Purwokerto dan merupakan penilai independen yang merupakan bagian dari struktur organisasasi internal institusi  yang berfungsi menguji dan mengevaluasi kehandalan dan kefektivitasan sistem pengendalian institusi secara keseluruhan.\r\n\r\n3.Satuan Audit Internal memiliki kewenangan untuk mengakses seluruh informasi, sistem informasi, catatan, dokumentasi, aset, dan personil pada unit kerja di lingkungan Institut Teknologi Telkom Purwokerto yang diperlukan sehubungan dengan pelaksanaan tugas pokok dan fungsi audit internal serta kewenangan lain sebagaimana tercantum dalam lampiran piagam ini;\r\n\r\n4.Satuan Audit Internal wajib menciptakan dan memelihara Lingkungan Pengendalian yang baik melalui:\r\n\r\na.Pendekatan yang Pre-emptif, Proaktif, Bukan Reaktif;\r\nb.Berupaya Melakukan Analisis Akar Permasalahan (Root Causes);\r\nc.Mendorong Perubahan dan Perbaikan yang continue di Unit Kerja yang diaudit;\r\nd.Mewujudkan peranan Satuan Audit Internal yang efektif;\r\ne.Hubungan kerja yang baik dengan seluruh unit kerja terkait.\r\n \r\nPiagam Audit Internal mulai berlaku sejak tanggal ditetapkan. Piagam Audit Internal ini dapat direview dan dimutakhirkan secara berkala untuk dilihat kesesuaiannya dan apabila diperlukan maka akan dilakukan perubahan dan/atau penyempurnaan guna menjamin keselarasan dengan praktik-praktik terbaik di bidang audit internal, perubahan lingkungan organisasi, dan perkembangan praktik-praktik penyelenggaraan tugas dan fungsi satuan audit internal. Piagam Audit Internal ini dapat dijadikan dasar bagi Pimpinan Institut Teknologi Telkom Purwokerto untuk mengevaluasi kegiatan Satuan Audit Internal Institut Teknologi Telkom Purwokerto\r\n', '2021-08-31', 'sai', NULL, NULL),
(2, 'Visi dan Misi Satuan Audit Internal Institut Teknologi Telkom Purwokerto', 'Fisherman', '1. Visi Satuan Audit Internal adalah\r\nmewujudkan fungsi audit internal yang independen, profesional, dan berintegritas dalam rangka mendukung pencapaian tujuan dan sasaran penyelenggaraan kerja Institut Teknologi Telkom Purwokerto\r\n\r\n2. Misi Satuan Audit Internal adalah:\r\na. Melaksanakan Audit Internal yang berbasis risiko (Risk Based Internal Audit).\r\nb. Meningkatkan kompetensi untuk menjadi auditor internal yang profesional, sehingga dapat memberikan nilai tambah bagi institusi baik secara kualitas maupun kuantitas.\r\nc. Membantu pelaksanaan kegiatan penilaian secara objektif dan independen serta melaporkan penilaian tersebut kepada lingkungan manajemen secara accurate, reliable, timely, consistent, dan useful.\r\nd. Menjalankan peran sebagai katalisator, konsultan dan fasilitator yang profesional.\r\n', '2021-08-31', 'vdm', NULL, NULL),
(3, 'Kedudukan dan Peran Satuan Audit Internal Institut Teknologi Telkom Purwokerto', 'Fisherman', '1. Satuan Audit Internal merupakan unit kerja yang dalam pelaksanaan tugas pokok dan fungsinya berada dan bertanggung jawab langsung kepada Kepala Bagian Sekretariat Pimpinan, Legal & Internal Audit dan Rektor Institut Teknologi Telkom Purwokerto.\r\n\r\n2. Struktur dan kedudukan Satuan Audit Internal Institut Teknologi Telkom Purwokerto adalah sebagai berikut:\r\na. Struktur organisasi Satuan Audit Internal Institut Teknologi Telkom Purwokerto dibentuk sesuai kebutuhan untuk melaksanakan beban kerja dalam pengendalian kinerja Institut Teknologi Telkom Purwokerto.\r\nb. Satuan Audit Internal Institut Teknologi Telkom Purwokerto  dipimpin oleh seorang Kepala Bagian Sekretariat Pimpinan, Legal & Intemal Audit.\r\nc. Kepala urusan satuan audit internal diangkat dan diberhentikan oleh pejabat Kepala Bagian Sekretariat Pimpinan, Legal & Internal Audit.\r\nd. Kepala urusan satuan audit internal  bertanggung jawab kepada Kepala Bagian Sekretariat Pimpinan, Legal & Intemal Audit dan rektor Institut Teknologi Telkom Purwokerto.\r\ne. Auditor yang duduk dalam satuan audit internal bertanggung jawab secara langsung kepada Kepala Bagian Sekretariat Pimpinan, Legal & Intemal Audit dan rektor Institut Teknologi Telkom Purwokerto.\r\n', '2021-08-31', 'kdt', NULL, NULL),
(4, 'Tugas Pokok dan Fungsi Satuan Audit Internal Institut Teknologi Telkom Purwokerto', 'Fisherman', 'Tugas pokok dan fungsi Satuan Audit Internal adalah berfungsi mengelola kegiatan rnonitoring Kontrak Manajemen dan audit mutu internal maupun eksternal institusi :\r\n1) Menyusun dan melaksanakan rencana audit internal bulanan, triwulan, dan tahunan, termasuk mengidentifikasi dan memutakhirkan data semua unit kerja yang dapat diawasi (audit universe) serta data/dokumen yang diperlukan;\r\n\r\n2) Melakukan audit ketaatan (compliance) untuk memastikan bahwa semua prosedur/area yang diaudit telah sesuai dengan peraturan, ketentuan, dan prosedur yang berlaku;\r\n\r\n3) Menguji dan mengevaluasi pelaksanaan pengendalian internal dan sistem manajemen risiko sesuai dengan kebijakan mutu Institut Teknologi Telkom Purwokerto;\r\n\r\n4) Melakukan audit mutu internal untuk memastikan efisiensi, efektivitas, ekonomis (kehematan) sistem perencanaan, pengendalian manajemen dan operasi dari seluruh aspek proses bisnis dan operasi untuk mewujudkan Good University Governance dan Good Corporate Governance di lingkungan Institut Teknologi Telkom Purwokerto;\r\n\r\n5) Melakukan audit atas ekonomis, efisiensi dan efektivitas (value for money audit), evaluasi program kerja, dan evaluasi terhadap resiko manajemen di setiap struktur organisasi dan tata kerja untuk mewujudkan Good University Governance dan Good Corporate Governance.\r\n\r\n6) Melakukan pemberian advice tanpa mengambil alih tanggung jawab manajemen mencakup antara lain pelatihan, review pengembangan sistem, penilaian mandiri atas pengendalian dan kinerja,\r\n\r\n7) Melakukan pemeriksaan terhadap penyimpangan, kecurangan, kelemahan pengendalian internal dari tiap-tiap unit kerja.\r\n\r\n8) Memberikan saran perbaikan dan informasi yang obyektif tentang kegiatan yang diperiksa pada semua tingkat  unit kerja;\r\n\r\n9) Membuat laporan hasil audit internal dan menyampaikan laporan tersebut kepada pimpinan manajemen dan unit kerja;\r\n\r\n10) Memantau, menganalisis dan melaporkan pelaksanaan tindak lanjut perbaikan yang telah disarankan;\r\n\r\n11) Menyusun program untuk mengevaluasi mutu kegiatan Audit internal yang dilakukan; \r\n\r\nSupaya Satuan Audit Internal melaksanakan tugas pokoknya dengan efektif, harus menjalankan fungsi:\r\n\r\n1) Memberikan keyakinan yang memadai atas ketaatan, kehematan, efisiensi, dan efektivitas pencapaian tujuan penyelenggaraan tugas dan fungsi institusi;\r\n\r\n2) Memberikan peringatan dini dan meningkatkan efektivitas manajemen risiko dalam penyelenggaraan tugas dan fungsi instansi; dan\r\n\r\n3) Memelihara dan meningkatkan kualitas Good University Governance dan Good Corporate Governance dalam  penyelenggaraan tugas dan fungsi Institusi.\r\n', '2021-08-31', 'kdt', NULL, NULL),
(5, 'Kewenangan Satuan Audit Internal', 'Fisherman', 'Untuk  dapat  memenuhi  tujuan  dan  lingkup  audit  internal  secara  memadai, Satuan Audit Internal  memiliki kewenangan untuk:\r\n\r\n1) Mengakses seluruh informasi, sistem informasi, catatan, dokumentasi, aset, dan personil yang diperlukan sehubungan dengan pelaksanaan fungsi audit internal;\r\n\r\n2) Melakukan komunikasi secara langsung dengan pejabat pada satuan unit kerja yang menjadi obyek audit internal dan pegawai lain yang diperlukan dalam rangka pelaksanaan audit internal;\r\n\r\n3) Melakukan pemeriksaan dan evaluasi terhadap kehandalan dan efektivitas sistem pengendalian internal institusi dan menjaga kualitas kinerja institusi termasuk pelaksanaan tugas khusus dari Rektor\r\n\r\n4) Memiliki wewenang untuk menyampaikan laporan dan melakukan konsultansi dengan Kepala Bagian Sekretariat Pimpinan, Legal & Intemal Audit dan rektorat, dan berkoordinasi dengan pimpinan lainnya;\r\n\r\n5) Melakukan koordinasi kegiatannya dengan kegiatan auditor eksternal;\r\n\r\n6) Mengalokasikan sumber daya satuan audit internal serta menetapkan frekuensi, objek, dan lingkup audit internal;\r\n\r\n7) Menerapkan teknik-teknik yang diperlukan untuk memenuhi tujuan audit internal;\r\n\r\n8) Meminta dan memperoleh dukungan dan/atau asistensi yang diperlukan, baik yang berasal dari internal maupun eksternal Institut Teknologi Telkom Purwokerto\r\n', '2021-08-31', 'kdtj', NULL, NULL),
(6, 'Tanggung Jawab Satuan Audit Internal', 'Fisherman', 'Dalam penyelenggaraan fungsi audit internal, satuan audit internal bertanggung jawab untuk:\r\n\r\n1) Secara terus menerus mengembangkan dan meningkatkan profesionalisme auditor, kualitas proses audit internal, dan kualitas hasil audit internal dengan mengacu kepada Standar Audit yang berlaku;\r\n\r\n2) Menyusun, mengembangkan, dan melaksanakan Program Kerja Audit Internal bulanan, Triwulanan dan Tahunan yang peduli risiko, khususnya dalam hal penentuan skala prioritas dan sasaran audit internal dengan mempertimbangkan ketersediaan sumber daya pengawasan, termasuk mengidentifikasi dan memutakhirkan data semua unit kerja yang dapat diawasi (audit universe) serta data/dokumen yang diperlukan;\r\n\r\n3) Satuan Audit Internal Institut Teknologi Telkom Purwokerto tidak memiliki wewenang atas pelaksanaan dan tanggung jawab terhadap aktivitas yang diriview, tetapi Satuan Audit Internal memberikan Analisa, penilaian, rekomendasi konsultasi dan informasi mengenai aktivitas yang direviewnya sesuai dengan Standar Audit dan perilaku professional yang di tuntut di dalam KODE ETIK. \r\n\r\n4) Menjamin kecukupan dan ketersediaan sumber daya sehingga dapat menyelenggarakan fungsi audit internal secara optimal;\r\n\r\n5) Melakukan pemantauan tindak lanjut hasil audit internal;\r\n\r\n6) Menyampaikan laporan hasil audit internal dan laporan berkala aktivitas pelaksanaan fungsi audit internal kepada Pimpinan manajemen dan unit kerja dan bertanggung jawab langsung kepada Rektor Institut Teknologi Telkom Purwokerto\r\n', '2021-08-31', 'kdtj', NULL, NULL),
(7, 'Tujuan, Sasaran, dan Lingkup Satuan Audit Internal', 'Fisherman', 'Tujuan penyelenggaraan audit internal oleh satuan audit internal adalah untuk memberikan nilai tambah bagi pencapaian tujuan dan sasaran, yaitu:\r\n\r\n1) Meningkatnya ketaatan, kehematan, efisiensi, dan efektivitas pencapaian tujuan dan sasaran penyelenggaraan tugas dan fungsi organisasi Institut Teknologi Telkom Purwokerto\r\n\r\n2) Membantu manajemen dan unit kerja dalam pencapaian pelaksanaan tugas dan kewajiban terkait tugas, kewajiban dan fungsi pokok kerja. \r\n\r\n3) Meningkatnya efektivitas manajemn risiko dan pengendalian dalam penyelenggaraan tugas dan fungsi organisasi Institut Teknologi Telkom Purwokerto.\r\n\r\n4) Meningkatnya  Good Corporate Governance dan  Good University Governance atas penyelenggaraan  tugas dan fungsi  organisasi Institut Teknologi Telkom Purwokerto.\r\n', '2021-08-31', 'tdf', NULL, NULL),
(8, 'Fungsi Satuan Audit Internal', 'Fisherman', 'Fungsi dari Satuan Audit Internal meliputi :\r\n1) Penyusunan rencana dan program kerja Satuan Audit Internal\r\n\r\n2) Menganalisa kebijakan arah strategi institusi dalam mencapai tujuannya di bidang pengendalian dan pengawasan internal \r\n\r\n3) Pengembangan standar pengendalian dan pengawasan internal\r\n\r\n4) Penjaminan akuntabilitas pengelolaan keuangan\r\n\r\n5) Perencanaan dan pelaksanaan audit internal \r\n\r\n6) Penjaminan efektivitas dan efisiensi kerja\r\n\r\n7) Penjaminan keakurasian data dan informasi \r\n\r\n8) Pelaksanaan pemantauan dan evaluasi pengendalian dan pengawasan internal\r\n\r\n9) Pelaporan kegiatan Satuan Audit Internal kepada Rektor dan manajemen secara berkala\r\n\r\nUntuk dapat mencapai tujuan dan fungsi audit internal tersebut di atas, maka lingkup audit internal meliputi:\r\n1) Audit dengan tujuan tertentu termasuk audit ketaatan untuk memastikan bahwa penyelenggaraan tugas dan fungsi institusi berjalan dengan baik sesuai dengan Kontrak Manajemen dan fungsi lain terkait dengan Good \r\nCorporate Governance dan Good University Governance;\r\n\r\n2)  Audit kinerja atas peyelenggaraan tugas dan fungsi Institusi, yang mencakup audit kinerja atas kontrak manajemen dan audit kinerja atas pelaksanaan tugas dan fungsi\r\nInstitusi dalam mewujudkan Good Corporate Governance dan  Good University Governance\r\n\r\n3)  Review atas penyelenggaraan tugas dan fungsi Institusi, seperti  review  atas laporan kinerja Institut Teknologi Telkom Purwokerto\r\n\r\n4)   Evaluasi atas penyelenggaraan tugas dan fungsi Institut Teknologi Telkom Purwokerto, seperti evaluasi atas Sistem Pengendalian Manajemen Strategis.\r\n\r\n5)  Pemantauan dan aktivitas audit internal lainnya yang berupa asistensi, sosialisasi, dan konsultasi terhadap penyelenggaraan tugas dan fungsi institusi\r\n', '2021-08-31', 'tdf', NULL, NULL),
(9, 'Kode Etik dan Standar Audit Internal', 'Fisherman', 'Piagam Audit Internal mensyaratkan bahwa auditor dalam melaksanakan  pekerjaannya harus senantiasa mengacu pada Standar Internasional Praktik Profesional Audit Internal dan Kode Etik yang dikeluarkan oleh The Institute of Internal Auditors (IIA).', '2021-08-31', 'kedh', NULL, NULL),
(10, 'Hubungan Kerja dan Koordinasi', 'Fisherman', 'Untuk mewujudkan efektivitas dan efisiensi pelaksanaan fungsi audit internal, Satuan Audit Internal perlu menjalin kerjasama dan koordinasi dengan unit terkait, yang berada di Institut Teknologi Telkom Purwokerto.', '2021-08-31', 'kedh', NULL, NULL),
(11, 'Satuan Audit Internal dengan Unit', 'Fisherman', '1) Dalam rangka pelaksanaan fungsi audit internal, maka hubungan antara satuan audit internal dengan unit (auditee) adalah hubungan kemitraan antara auditor dan auditee atau antara konsultan dengan penerima jasa.\r\n\r\n2) Dalam setiap penugasan (baik penugasan assurance maupun consulting), auditee harus memberikan dan menyajikan informasi yang relevan dengan ruang lingkup penugasan.\r\n\r\n3) Auditee harus menindaklanjuti setiap rekomendasi audit internal yang diberikan oleh satuan audit internal dan melaporkan tindak lanjut beserta status atas setiap rekomendasi audit internal kepada satuan audit internal sesuai dengan prosedur yang \r\n', '2021-08-31', 'kedh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_12_064623_create_berandas_table', 1),
(5, '2021_08_14_103539_create_admins_table', 1),
(6, '2021_08_23_092555_create_infos_table', 1),
(7, '2021_08_26_053925_create_documents_table', 1),
(8, '2021_08_27_091923_create_checks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berandas`
--
ALTER TABLE `berandas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berandas`
--
ALTER TABLE `berandas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `checks`
--
ALTER TABLE `checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
