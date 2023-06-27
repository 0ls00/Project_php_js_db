<?php
        session_start();
        include 'connect.php';
?>
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
            <li><a class="active" href="administracija.php" >ADMINISTRACIJA</a></li>
            <li><a href="unos.html" >UNOS</a></li>
        </ul>
        </nav>
    </header>
    <form action="" method="POST">
        <label for="username">Username:</label><br>
        <input type="text" name="username" id="username"><br>

        <label for="lozinka">Password:</label><br>
        <input type="password" name="lozinka" id="lozinka"><br><br>

        <button type="submit" name="prijava">Prijava</button>
    </form>
    <?php

        define('UPLPATH', 'img/');
        $uspjesnaPrijava = '';
        $admin = '';
        $imeKorisnika = '';

        if (isset($_POST['prijava']) && isset($_POST['username']) && isset($_POST['lozinka'])) {
            
            $prijavaImeKorisnika = $_POST['username'];
            $prijavaLozinkaKorisnika = $_POST['lozinka'];
            $sql = "SELECT korisnicko_ime, lozinka, razina FROM korisnik
            WHERE korisnicko_ime = ?";
            $stmt = mysqli_stmt_init($dbc);
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, 's', $prijavaImeKorisnika);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);
            }
            mysqli_stmt_bind_result($stmt, $imeKorisnika, $lozinkaKorisnika, $levelKorisnika);
            mysqli_stmt_fetch($stmt);

            if (password_verify($_POST['lozinka'], $lozinkaKorisnika) && mysqli_stmt_num_rows($stmt) > 0) {
                $uspjesnaPrijava = true;
                  
                if($levelKorisnika == 1) {
                    $admin = true;
                    echo"<form><a href='Odjava.php'>Odjava</a></form>";
                    echo "
                        <form><p>Prijavljeni ste kao administrator ${_SESSION['username']} i imate pravo pristupa admistracijskoj stranici.</p></form>";
                    echo "
                        <form method='post'>
                            Unesite id od članka koji želite izbrisati
                            <br><input type='number' name='id' id='id' required>
                            <button type='submit' value='Brisanje' name='gumb'>Brisanje</button><br><br><hr>
                        </form>
                        <form enctype='multipart/form-data' method='post'>
                            Unesite id od članka koji želite izmjeniti
                            <br><input type='number' name='id' id='id' required><br>


                                <label>Naslov vijesti</label><br>
                                <input type='text' name='title' class='form-field-textual' required><br>
                                
                
                                <label>Datum objave</label><br>
                                <input type='date' name='date' id='date' required><br>
                               
                                <label>Kratki sadržaj vijesti (do 50 znakova)</label><br>
                                <textarea name='about' cols='30' rows='8' required></textarea><br>
                    
         
                                <label>Sadržaj vijesti</label><br>
                                <textarea name='content' cols='30' rows='8' class='form-field-textual' required></textarea><br>
            
          
                                <label>Slika:</label><br>
                                <input type='file' name='slika' required><br>
                          
                
                
                                <label>Kategorija vijesti</label>
                     
                                    <select name='category' class='form-field-textual' required>
                                        <option value=''>Odabir kategorije</option>
                                        <option value='sport'>Sport</option>
                                        <option value='politik'>Politik</option>
                                    </select><br>
               
                                <label>Spremiti u arhivu:</label><br>
                                <input type='checkbox' name='archive'><br>
                             
                                <button type='reset' value='Poništi' name='gumb' class='bg-white'>Brisanje</button><br>
                                <button type='submit' value='Izmjena' name='gumb' class='bg-white'>Izmjena</button><br>
                      
                        </form>";
                }
                else {
                    $admin = false;
                    echo '<form><p>Bok ' . $imeKorisnika . '! Uspješno ste prijavljeni, ali niste administrator.</p></form>';
                    echo "<form><a href='Odjava.php'>Odjava</a></form>";
                }

            $_SESSION['username'] = $imeKorisnika;
            $_SESSION['level'] = $levelKorisnika;
        } else {
            $uspjesnaPrijava = false;
            echo "Neuspješna prijava";
            echo "<button type='submit'><a href='./registracija.php'>Registrirajte se</a></button>";
        }
    
    }

    $slikaUp ='';
    include 'connect.php';
    if (isset($_POST['gumb'])) {
        if (strcmp($_POST['gumb'], 'Brisanje') === 0) {
            $id = $_POST['id'];
            $query = 'DELETE FROM baza WHERE id = ?;';
            $stmt = mysqli_stmt_init($dbc);
            if (!mysqli_stmt_prepare($stmt, $query)) {
                echo "failed";
            } else {
                mysqli_stmt_bind_param($stmt, "i", $id);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
            }
            } elseif (strcmp($_POST['gumb'], 'Izmjena') === 0) {
                if (!empty($_FILES["slika"]["name"])) {
                    $target_file = "images/" . basename($_FILES["slika"]["name"]);
                    $slikaUp = 1;
                    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
                    if (isset($_POST["gumb"])) {
                        $check = getimagesize($_FILES["slika"]["tmp_name"]);
                        if ($check !== false) {
                            $slikaUp = 1;
                        } else {
                            echo "<form>File is not an image.</form><br>";
                            $slikaUp = 0;
                    }
                    }
                    if (file_exists($target_file)) {
                        echo "<form>Sorry, file already exists.</form><br>";
                        $slikaUp = 0;
                    }
                    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
                        echo "<form>Sorry, only JPG, JPEG, PNG & GIF files are allowed.</form><br>";
                        $slikaUp = 0;
                    }
                    if ($slikaUp = 0) {
                        echo "<form>Sorry, your file was not uploaded.</form><br>";
                    } else {
                        if (move_uploaded_file($_FILES["slika"]["tmp_name"], $target_file)) {
                        } else {
                        }
                    }
                }
                $id = $_POST['id'];
                $datum = $_POST['date'];
                $naslov = $_POST['title'];
                $sazetak = $_POST['about'];
                $tekst = $_POST['content'];
                $slika = $_FILES["slika"]["name"];
                $kategorija = $_POST['category'];
                if (isset($_POST['archive'])) $arhiva = 1;
                else $arhiva = 0;
                $query = 'UPDATE baza SET datum = ?, naslov = ?, sazetak = ?, tekst = ?, slika = ?, kategorija = ?, arhiva = ? WHERE id = ?';
                $stmt = mysqli_stmt_init($dbc);
                if (mysqli_stmt_prepare($stmt, $query)) {
                    mysqli_stmt_bind_param($stmt, 'ssssssii', $datum, $naslov, $sazetak, $tekst, $slika, $kategorija, $arhiva, $id);
                    mysqli_stmt_execute($stmt);
                }
            }
        }
        mysqli_close($dbc);
    ?>



