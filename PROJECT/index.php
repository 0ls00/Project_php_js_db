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
            <li><a class="active" href="index.php" >HOME</a></li>
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
    <section>
        <?php 
        $arhiva1 = 0;
        $kategorija1 = "sport";
        $query = "SELECT * FROM baza WHERE arhiva = ? AND kategorija = ? LIMIT 4";
        $stmt = mysqli_stmt_init($dbc);
        if (!mysqli_stmt_prepare($stmt, $query)) {
        echo "failed";
        } else {
        mysqli_stmt_bind_param($stmt, "is",  $arhiva1, $kategorija1);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        echo"<div class='naslov'>";
                echo"<p>Sport</p>";
                echo"</div>";
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<article>';
                echo "<div class='slika1'>";
                echo '<img src="' . UPLPATH . $row['slika'] . '"';
                echo "</div>";
                echo '<div class="text1">';
                echo '<h4>';
                echo '<a href="clanak.php?id='.$row['id'].'">';
                echo $row['naslov'];
                echo '</a></h4>';
                    echo "<p>";
                        echo $row['sazetak'];
                    echo "</p>";
                echo '</div>';
                echo '</article>';
            }
        }
            ?>
    </section>
    <section>
        <?php 
        $arhiva2 = 0;
        $kategorija2 = "politik";
        $query = "SELECT * FROM baza WHERE arhiva = ? AND kategorija = ? LIMIT 4";
        $stmt = mysqli_stmt_init($dbc);
        if (!mysqli_stmt_prepare($stmt, $query)) {
        echo "failed";
        } else {
        mysqli_stmt_bind_param($stmt, "is", $arhiva2, $kategorija2);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        echo"<div class='naslov'>";
            echo"<p>Politik</p>";
            echo"</div>";
        while ($row = mysqli_fetch_assoc($result)) {
            
            
                
                echo '<article>';
                echo "<div class='slika1'>";
                echo '<img src="' . UPLPATH . $row['slika'] . '"';
                echo "</div>";
                    echo '<div class="text1">';
                    echo '<h4>';
                    echo '<a href="clanak.php?id='.$row['id'].'">';
                    echo $row['naslov'];
                    echo '</a></h4>';
                        echo "<p>";
                            echo $row['sazetak'];
                        echo "</p>";
                    echo '</div>';
                echo '</article>';
            }
        }?>
    </section>

    <footer>
        <p>© RP Digital GmbH | Alle Rechte vorbehalten
            Content Management by InterRed</p>
    </footer>
    
</body>
</html>
