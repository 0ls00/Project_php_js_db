<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <nav>
        <img src="images/RPLogo.jpg" alt="">
            <ul>
            <li><a href="index.php" >HOME</a></li>
            <li><a href="kategorija.php?kategorija=sport " class="">SPORT</a></li>
            <li><a href="kategorija.php?kategorija=politik " class="">POLITIK</a></li>
            <li><a href="administracija.php" >ADMINISTRACIJA</a></li>
            <li><a href="unos.html" >UNOS</a></li>
        </ul>
        </nav>
    </header>

    <section class="clanak">
        <?php
        header('Content-Type: text/html; charset=UTF-8');
        include 'connect.php';


        if (isset($_POST['naslov']) && isset($_POST['sazetak']) && isset($_POST['tekst']) && isset($_POST['kategorija'])) {
            $naslov = $_POST['naslov'];
            $sazetak = $_POST['sazetak'];
            $tekst = $_POST['tekst'];
            $kategorija = $_POST['kategorija'];
            $slika = $_FILES['slika']['name'];
            $datum = date('d.m.Y');
            if(isset($_POST['arhiva'])){
                $arhiva = 1;
               }else{
                $arhiva = 0;
               }

            $query = "INSERT INTO baza (datum, naslov, sazetak, tekst, slika, kategorija, arhiva) VALUES (?, ?, ?, ?, ?, ?, ?);";
            $stmt = mysqli_stmt_init($dbc);
            if (mysqli_stmt_prepare($stmt, $query)) {
                   mysqli_stmt_bind_param($stmt, 'ssssssi', $datum, $naslov, $sazetak, $tekst, $slika, $kategorija, $arhiva);
                   mysqli_stmt_execute($stmt);
            }

            $target_dir = 'images/'.$slika;
            move_uploaded_file($_FILES["slika"]["tmp_name"], $target_dir);

            mysqli_close($dbc);
            
            echo "<div class='naslov'>";
                echo "<p>" . $kategorija . "</p>";
            echo "</div>";
            echo "<div class='naslovClanak'>";
                echo "<h1>" . $naslov . "</h1>";
            echo "</div>";
            
            echo "<div class='datum'>";
                echo "Objavljeno: ".$datum;
            echo "</div>";
            
            if (!empty($slika)) {
                echo "<div class='clanakSlika'>";
                    echo "<img src='images/" . $slika . "'>";
                echo "</div>";
            }
            
            echo "<div class='sazetak'>";
                echo "<p>" . $sazetak . "</p>";
            echo "</div>";
            
            
            echo "<div class='tekst'>";
                echo "<p>" . $tekst . "</p>";
            echo "</div>";
     


        } else {
            echo "Form data is missing.";
        }
        ?>
    </section>

    <footer>
        <p>© RP Digital GmbH | Alle Rechte vorbehalten Content Management by InterRed</p>
    </footer>
</body>
</html>