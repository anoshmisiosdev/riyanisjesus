<!DOCTYPE html>
<head>
    <title>Varin Adusumalli</title>
    <link rel="stylesheet" type="text/css" href="About.css">
</head>
<body style="background-image: url(RiyanAboutMe.gif);">
    <header>
        
        <ul >
            <li><a href="index.html">Home</a></li>
            <li><a href="projects.html">Projects</a></li>
            <li><a href="#">Login/Sign In</a></li>
            <li><a href="Contact.html">Contacts</a></li>
            <li>
                <div class="dropdown">
                    <span>Other Members ▼</span>
                    <div class="dropdown-content">
                      <a href="aboutriyan.php">Riyan A.</a>
                      <a href="aboutrehan.php">Rehan M.</a>
                      <a href="aboutamaan.php">Amaan M.</a>
                      <a href="aboutjason.php">Jason L.</a>
                      <a href="aboutrishaan.php">Rishaan J.</a>
                    </div>
                  </div>
            </li>
        </ul>
    </header>   
    <p><br></br></p>

    <?php
            #Connection Values
            $servername = "localhost";
            $username = "root";
            $password = '123456';
            #$password = ""; # Mr Millard's password is an empty string.

            // Create connection to MySQL
            $conn = new mysqli($servername, $username, $password);

            // Test connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
            
            # Draw data from database using the query() method
            $conn->query("use teamtechsupport;"); #First select the active database
            
            $newquery = 'select mNAMES,mBIO from members where mID = 4';
            
            $newresult = $conn->query($newquery);
            if($newresult->num_rows>0){
                while($row = $newresult->fetch_assoc()){
                    echo '<h2 class ="aboutmeNAME">'.$row["mNAMES"].'</h2>';
                    echo '<div class="aboutmeIMAGE">
                            <img src="varin2.png"  height="400" class="aboutmeIMAGEIMAGE">
                        </div>';
                    echo '<p class ="aboutmeBIO">'.$row["mBIO"].'</p>';    
                }
            }
            
            
        
            $conn->close();
        ?>
        
        

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" contact="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us-CSP Website</title>

       </head>
    
</body>
</html>

    
    