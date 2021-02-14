-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Maj 2019, 22:34
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `lab5`
--
CREATE DATABASE IF NOT EXISTS `lab5` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lab5`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `level`) VALUES
(1, 'Python', '<h5>Co to jest Python?</h5><p>Python to obiektowy język programistyczny, \r\nktóry wyróżnia się dynamiką, łatwością w nauce i wielością możliwości \r\nwykorzystania. Ideą przewodnią, która przyświecała jego twórcom, była \r\nchęć zapewnienia czytelności kodu źródłowego. Właśnie dlatego składnia \r\njęzyka programowania Python wyróżnia się klarownością i zwięzłością. \r\nJego interpretery są dostępne na wiele systemów operacyjnych. Python \r\nrozwijany jest na otwartej licencji przez Python Software Foundation, \r\nktóra jest organizacją non-profit.  Standardowa implementacja języka to \r\nCPython (napisany w języku programowania C). </p><h5>Kto korzysta z Pythona?</h5><p>Mimo\r\n obco brzmiącej nazwy, Python jest powszechnie wykorzystywany w \r\nserwisach, aplikacjach czy programach, z których korzystamy na co dzień.\r\n Dla przykładu popularny YouTube został w większości napisany w \r\nPythonie. Wybór języka został dokonany ze względu na potrzebę \r\nzapewnienia dużej wydajności, a także łatwej implementacji najnowszych \r\nfunkcjonalności. Z Pythona korzysta również w swoich aplikacjach Google.\r\n Mowa tu o takich aplikacjach jak chociażby Google App Engine czy Google\r\n Wave. Warto również wspomnieć o  wykorzystaniu Pythona przez NASA. \r\nAplikacje napisane w tym języku stosowane są chociażby do zarządzania \r\nkontrolą startową wahadłowców.  Python jest też wykorzystywany przez \r\nNokię, a także w połączeniu z innymi językami i technologiami. </p><br>', 3),
(2, 'PHP', '<h3><a href="https://rk.edu.pl/pl/co-jest-php/#1">Czym jest PHP?</a></h3>\r\n<p>PHP to skryptowy język programowania służący głównie do tworzenia \r\nstron internetowych. PHP jest rozprowadzany na otwartej licencji i każdy\r\n może pobrać za darmo jego kopię, zainstalować i używać bez żadnych \r\nograniczeń zarówno do celów prywatnych jak i komercyjnych. Język jest \r\nprosty w nauce i umożliwia tworzenie profesjonalnych dynamicznych stron \r\ninternetowych.\r\n\r\n<a name="2" title="Jak PHP współpracuje ze stroną WWW?"></a></p><h3><a href="https://rk.edu.pl/pl/co-jest-php/#2">Jak PHP współpracuje ze stroną WWW?</a></h3>\r\n<p>PHP jest językiem server-side, tj. pracuje po stronie serwera WWW. \r\nPrzeciwieństwem są języki client-side pracujące po stronie przeglądarki \r\nużytkownika (np. JavaScript). Aby wykorzystywać go na własnej stronie, \r\nmusisz upewnić się, że twój serwer obsługuje PHP. Zanim przejdziemy \r\ndalej, należy zrozumieć zasadę, na jakiej PHP generuje dynamiczne strony\r\n WWW.\r\n</p><p>Kiedy wpisujemy adres w przeglądarce internetowej, żądanie \r\nwyświetlenia strony kierowane jest do serwera HTTP zwanego także \r\nserwerem WWW. Jeśli stwierdzi na podstawie rozszerzenia pliku, że dany \r\ndokument zawiera kod PHP, serwer kieruje do jego interpretera żądanie \r\nprzetworzenia podanego pliku. Interpreter wyszukuje w jego treści tzw. \r\nwstawki PHP wplecione w statyczny kod HTML i zastępuje je wynikiem ich \r\nwykonywania. Utworzony kod HTML jest zwracany serwerowi, a ten wysyła go\r\n z powrotem do internauty. PHP używany jest do dynamicznego (zależnego \r\nod różnych warunków) generowania kodu HTML - zawartości strony. Do \r\nprzeglądarki dociera kod HTML a nie PHP.</p><br>', 3),
(3, 'HTML', '<div>\r\n<p>HTML (<strong>H</strong>yper<strong>t</strong>ext <strong>M</strong>arkup <strong>L</strong>anguage) jest to kod używany do tworzenia struktury strony i jej zawarto?ci. <span id="result_box" lang="pl">Na przyk?ad tre?? mo?e by? uporz?dkowana w obr?bie zestawu akapitÃ³w, listy punktowanych punktÃ³w lub tabel obrazÃ³w i danych. Jak sugeruje tytu?, ten artyku? daje podstawy do zrozumienia HTML i jego funkcji.</span></p>\r\n</div>\r\n\r\n<h2 id="Czym_w?a?ciwie_jest_HTML">Czym w?a?ciwie jest HTML?<a href="https://developer.mozilla.org/pl/docs/Learn/Getting_started_with_the_web/HTML_basics#Czym_w%C5%82a%C5%9Bciwie_jest_HTML" data-heading-id="Czym_w?a?ciwie_jest_HTML"><svg version="1.1" width="24" height="28" viewBox="0 0 512 512" aria-hidden="true" focusable="false"></svg></a></h2>\r\n\r\n<p>HTML nie jest językiem programowania; jest <em>językiem znacznikÃ³w</em> (ang. <em>markup language</em>). HTML sk?ada si? z serii znacznikÃ³w (tagÃ³w), ktÃ³rych u?ywa si? do zamkni?cia, <em>opakowania </em>rÃ³?nych\r\n cz??ci tre?ci, tak aby wygl?da?y i/lub dzia?a?y w okre?lony sposÃ³b. Z \r\npomoc? tagÃ³w mo?esz ze s?Ã³w czy obrazÃ³w zrobi? linki do innych stron, \r\nsprawi? by by?y napisane kursyw?, wi?ksz? czcionk?, wyt?u?ci? je itd.</p><p><br></p>', 1),
(4, 'AJAX', '<p>AJAX nie jest językiem programowania, \r\ntylko technologią, która wykorzystuje inne języki. Wykorzystuje się go \r\nwtedy, gdy nie chcemy odświeżać całej strony tylko jej część, czyli \r\nasynchronicznie z całą stroną. Oczywiście w takim przypadku dane \r\npobierane są z pliku txt lub XML umieszczonego na serwerze za pomocą \r\njakiś skryptów np. JavaScript. Takim to sposobem rozszyfrowaliśmy dziwną\r\n nazwę AJAX, czyli Asynchroniczny JavaScript i XML.</p>\r\n\r\n<p>Aby pobawić się w tej technologi należy \r\nzainstalować sobie jakiś serwer na swoim komputerze lub wykupić miejsce \r\nna zewnętrznym serwerze. Zanim pokażę kilka prostych przykładów w tej \r\ntechnologi opiszę kilka najczęściej używanych metod w JavaScript i \r\nprzedstawię kilka standardów obowiązujących podczas pisania skryptów. W \r\nten sposób kod będzie przejrzysty i będziemy mogli go łatwiej zrozumieć.</p>\r\n<p>1) Kod JavaScript zawsze umieszczamy na \r\npoczątku pliku HTML, najczęściej jest to w nagłówku head, oczywiście w \r\ninnym miejscu też będzie działał, ale tak będzie wszystko estetycznie.</p>\r\n<p>2) Oczywiście trzeba używać wcięć i komentarzy, ale tego nie muszę nikomu przypominać.</p>\r\n<p>4) Aby poprawić czytelność kodu, można stosować oddzielne pliki.js w których zapisujemy najczęściej używane funkcje.</p>\r\n<p>5) Aby odnieść się do jakiegoś elementu w pliku.html używamy metody getElementById("id_naszego_elementu").</p>\r\n<p>6) Do wstawiania tekstu w wybrane elementy służy metoda innerHTML.</p><br>', 2),
(5, 'Web 3.0', '<p>Czy zastanawialiście się, czym jest Web 3.0?</p>\r\n<p>Jeśli zdarzyło się wam ostatnio \r\nrozmawiać ze znajomymi z branży technologicznej, albo odwiedzić jakąś \r\nkonferencję, prawdopodobnie spotkaliście się z terminem “Web 3.0”. Jeśli\r\n zaś jeszcze się z nim nie zetknęliście prawdopodobnie wkrótce \r\nusłyszycie o Sieci Trzeciej Generacji. Jeśli jednak trochę wstydzicie \r\nsię zapytać – “o co właściwie chodzi?”, to nie musicie. W istocie mało \r\nkto wie, czym naprawdę będzie Web 3.0, nie ma więc powodu do wstydu.</p>\r\n<p>Dodatkowo, wciąż brak jest zwięzłego i\r\n precyzyjnego opisu tego, czym sieć w wersji 3.0 miałaby być, co \r\nsprawia, że wszelkie jej definicje są dość umowne. Eksperci wciąż \r\nspierają się o to, jakie właściwie rozwiązania będą składały się na Web \r\n3.0 i co może przynieść przyszłość.</p><br>', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `level` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `level`) VALUES
(3, 'user1', 'Użytkownik Początkujący', 1),
(4, 'user2', 'Użytkownik Zaawansowany', 2),
(5, 'user3', 'Admin', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
