<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
    <?php
        include 'connect.php';
        define('UPLPATH', 'images/');
    ?>
        <section class="clanak">
        <?php
            $id = $_GET['id'];
            $query = "SELECT * FROM baza WHERE id = '$id'";
            $result = mysqli_query($dbc, $query);
            $i=0;
            while($row = mysqli_fetch_array($result)) {
            echo "<div class='naslov'>";
            echo"    <h2>";
            echo $row['kategorija'];
            echo    "</h2>";
            echo "</div>";
            echo "<div class='naslovClanak'>";
            echo "<h1>";
            echo $row['naslov'];
            echo"  </h1>";
            echo"</div>";
            echo"<div class='datum'>";
            echo"    <p>OBJAVLJENO:";
            echo $row['datum'];
            echo"    </p>";
            echo"</div>";
            echo"<div class='clanakSlika'>";
            echo '<img src="' . UPLPATH . $row['slika'] . '">';
            echo"</div>";
            echo"<div class='sazetak'>";
            echo"   <p>";
            echo "<i>".$row['sazetak']."</i>";
            echo"    </p>";
            echo"</div>";
            echo"<div class='tekst'>";
            echo"    <p>";
            echo $row['tekst'];
            echo"</p>";
            echo"</div>";
            }
            ?>
        </section>
        

    <footer>
        <p>© RP Digital GmbH | Alle Rechte vorbehalten
            Content Management by InterRed</p>
    </footer>
    
</body>
</html>
