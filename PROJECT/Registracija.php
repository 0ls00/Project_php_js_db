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
                <li><a class="active" href="index.php" >HOME</a></li>
                <li><a href="kategorija.php?kategorija=sport " class="">SPORT</a></li>
                <li><a href="kategorija.php?kategorija=politik " class="">POLITIK</a></li>
                <li><a href="administracija.php" >ADMINISTRACIJA</a></li>
                <li><a href="unos.html" >UNOS</a></li>
            </ul>
        </nav>
        
    </header>
    


    <form enctype="multipart/form-data" action="" method="POST">
 
        <span id="porukaIme" ></span>
        <label for="title">Ime: </label><br>
        <input type="text" name="ime" id="ime" ><br>
  
        <span id="porukaPrezime" ></span>
        <label for="about">Prezime: </label><br>
        <input type="text" name="prezime" id="prezime"><br>
    
        <span id="porukaUsername"></span>
        <label for="content">Korisničko ime:</label><br>
        <input type="text" name="username" id="username"><br>

        <span id="porukaPass" ></span>
        <label for="pphoto">Lozinka: </label><br>
        <input type="password" name="pass" id="pass"><br>
 
 
        <span id="porukaPassRep" ></span>
        <label for="pphoto">Ponovite lozinku: </label><br>
 
        <input type="password" name="passRep" id="passRep"><br><br>
        <button type="submit" value="Prijava" id="slanje">Prijava</button>
    
    </form>

    <?php
        if(isset($_POST['ime']) && isset($_POST['prezime'])&& isset($_POST['username'])&& isset($_POST['pass'])){
            $ime = $_POST['ime'];
            $prezime = $_POST['prezime'];
            $username = $_POST['username'];
            $lozinka = $_POST['pass'];
            $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
            $razina = 0;
            $registriranKorisnik = '';

            $sql = "SELECT korisnicko_ime FROM korisnik WHERE korisnicko_ime = ?";
            $stmt = mysqli_stmt_init($dbc);
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, 's', $username);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);
            }
            if(mysqli_stmt_num_rows($stmt) > 0){
                $msg='Korisničko ime već postoji!';
            }else{

                $sql = "INSERT INTO korisnik (ime, prezime,korisnicko_ime, lozinka, razina)VALUES (?, ?, ?, ?, ?)";
                $stmt = mysqli_stmt_init($dbc);
                if (mysqli_stmt_prepare($stmt, $sql)) {
                    mysqli_stmt_bind_param($stmt, 'ssssd', $ime, $prezime, $username, $hashed_password, $razina);
                    mysqli_stmt_execute($stmt);
                    $registriranKorisnik = true;
                }
            }
        mysqli_close($dbc);

         if($registriranKorisnik == true) {
            echo '<form><p>Korisnik je uspješno registriran!</p></form>';
        } else {
            echo"<form><p>Error<p></form>";
        }
    }
    ?>
 
    <script type="text/javascript">
        document.getElementById("slanje").onclick = function(event) {
        var slanjeForme = true;
        var poljeIme = document.getElementById("ime");
        var ime = document.getElementById("ime").value;
        if (ime.length == 0) {
            slanjeForme = false;
            poljeIme.style.border="1px dashed red";
            document.getElementById("porukaIme").innerHTML="<br>Unesite 
            ime!<br>";
        } else {
            poljeIme.style.border="1px solid green";
            document.getElementById("porukaIme").innerHTML="";
        }

        var poljePrezime = document.getElementById("prezime");
        var prezime = document.getElementById("prezime").value;
        if (prezime.length == 0) {
            slanjeForme = false
            poljePrezime.style.border="1px dashed red";
 
        document.getElementById("porukaPrezime").innerHTML="<br>Unesite Prezime!<br>";
        } else {
            poljePrezime.style.border="1px solid green";
            document.getElementById("porukaPrezime").innerHTML="";
        }
 

        var poljeUsername = document.getElementById("username");
        var username = document.getElementById("username").value;
        if (username.length == 0) {
            slanjeForme = false;
            poljeUsername.style.border="1px dashed red";
 
            document.getElementById("porukaUsername").innerHTML="<br>Unesite korisničko 
            ime!<br>";
        } else {
            poljeUsername.style.border="1px solid green";
            document.getElementById("porukaUsername").innerHTML="";
        }
 
 
        var poljePass = document.getElementById("pass");
        var pass = document.getElementById("pass").value;
        var poljePassRep = document.getElementById("passRep");
        var passRep = document.getElementById("passRep").value;
        if (pass.length == 0 || passRep.length == 0 || pass != passRep) {
            slanjeForme = false;
            poljePass.style.border="1px dashed red";
            poljePassRep.style.border="1px dashed red";
            document.getElementById("porukaPass").innerHTML="<br>Lozinke 
            nisu iste!<br>";
 
            document.getElementById("porukaPassRep").innerHTML="<br>Lozinke nisu iste!<br>";
        } else {
            poljePass.style.border="1px solid green";
            poljePassRep.style.border="1px solid green";
            document.getElementById("porukaPass").innerHTML="";
            document.getElementById("porukaPassRep").innerHTML="";
        }
 
        if (slanjeForme != true) {
            echo"Error";
            event.preventDefault();
        }
};
 </script>
    <footer>
        <p>© RP Digital GmbH | Alle Rechte vorbehalten
            Content Management by InterRed</p>
    </footer>

</body>
</html>
