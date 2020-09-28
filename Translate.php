<?php
REQUIRE "ConectDB.php";
$MotOrigine = $_POST["MotOrigine"];
$langueOrigine = $_POST["LangueOrigine"];
$langueDestination = $_POST["LangueDestination"];
//$query="SELECT * FROM vocabulaire WHERE mot_voc='"+rech+"'";
//$mysqli->query("SET NAMES 'utf8'");
    
    $query1 = "SELECT * FROM vocabulaire WHERE mot_voc='".$MotOrigine."'";
    $request = mysqli_query($connection,$query1);
if (mysqli_num_rows($request)>0) {
    $query2 = "SELECT V.mot_voc as mot_voc1, P.mot_voc as mot_voc2, V.id_voc as Vocab, L.libelle_lang FROM `vocabulaire`V,`langue`L,`vocabulaire`P,`equivalence_vocabulaire`E WHERE(V.id_voc=E.id_voc1 and P.id_voc=E.id_voc2 and L.id_lang=P.id_lang and V.mot_voc='".$MotOrigine."' and L.libelle_lang='".$langueDestination."')";
    $request2 = mysqli_query($connection,$query2);
    if ($request2->num_rows>0){
        $row = $request2->fetch_assoc();
        if ($langueOrigine === $langueDestination) {
            echo $row["mot_voc1"];
        }else{
             echo $row["mot_voc2"];
        }
        $row2 = $row["Vocab"];
       //$query3 =  " SELECT S.id_syn as syn_S, V.id_voc as id_vob, D.defintion as def FROM synonyme S, vocabulaire V, dictionaire D, L.libelle_lang, langue L WHERE(V.id_voc=S.id_voc and S.id_syn=D.id_syn and S.id_voc=D_id_voc)";
       $query3 = "SELECT D.definition as def ,D.id_voc FROM dictionnaire D WHERE D.id_voc='".$row2."'";
       $request3 = mysqli_query($connection,$query3);
       if ($request3->num_rows>0) {
           $row2 = $request3->fetch_assoc();
           if ($langueOrigine === $langueDestination) {
            echo "\n\n\ndef : "."\n"."\n".$row2["def"];
        }else{
             echo "\n\n\ndef : "."\n"."\n".$row2["def"];
        }
       }
    }else{
        echo"Pas de correspondance";
    }
} else{
    echo"Ce mot n'existe pas dans la base de donnée";
}
 $connection->close();


 /*




REQUIRE "ConectDB.php";
$MotOrigine = $_POST["MotOrigine"];
$langueOrigine = $_POST["LangueOrigine"];
$langueDestination = $_POST["LangueDestination"];
//$query="SELECT * FROM vocabulaire WHERE mot_voc='"+rech+"'";
//$mysqli->query("SET NAMES 'utf8'");
    
    $query1 = "SELECT * FROM vocabulaire WHERE mot_voc='".$MotOrigine."'";
    $request = mysqli_query($connection,$query1);
if (mysqli_num_rows($request)>0) {
    $query2 = "SELECT V.mot_voc as mot_voc1, P.mot_voc as mot_voc2, L.libelle_lang FROM `vocabulaire`V,`langue`L,`vocabulaire`P,`equivalence_vocabulaire`E WHERE(V.id_voc=E.id_voc1 and P.id_voc=E.id_voc2 and L.id_lang=P.id_lang and V.mot_voc='".$MotOrigine."' and L.libelle_lang='".$langueDestination."')";
    $request2 = mysqli_query($connection,$query2);
    if ($request2->num_rows>0){
        $row = $request2->fetch_assoc();
        if ($langueOrigine === $langueDestination) {
            echo $row["mot_voc1"];
        }else{
             echo $row["mot_voc2"];
        }
       
    }else{
        echo"Pas de correspondance";
    }
} else{
    echo"Ce mot n'existe pas dans la base de donnée";
}
 $connection->close();











 
 <?php
REQUIRE "ConectDB.php";
$MotOrigine = $_POST["MotOrigine"];
$langueOrigine = $_POST["LangueOrigine"];
$langueDestination = $_POST["LangueDestination"];
try {
    $query1 = "SELECT * FROM vocabulaire WHERE mot_voc='".$MotOrigine."'";
    $request = mysqli_query($connection,$query1);
if (mysqli_num_rows($request)!=0) {
    $query2 = "SELECT V.mot_voc as mot_voc1, P.mot_voc as mot_voc2, L.libelle_lang FROM `vocabulaire`V,`langue`L,`vocabulaire`P,`equivalence_vocabulaire`E WHERE(V.id_voc=E.id_voc1 and P.id_voc=E.id_voc2 and L.id_lang=P.id_lang and V.mot_voc='".$MotOrigine."' and L.libelle_lang='".$langueDestination."')";
    $request2 = mysqli_query($connection,$query2);
    if ($request2->num_rows>0){
        $row = $request2->fetch_assoc();
        if ($langueOrigine === $langueDestination) {
            echo $row["mot_voc1"];
        }else{
             echo $row["mot_voc2"];
        }
       
    }
} else{
   try {
    $query1 = "SELECT * FROM vocabulaire WHERE mot_voc='".$MotOrigine."'";
    $request = mysqli_query($connection,$query1);
    if (mysqli_num_rows($request)!=0) {
        $query2 = "SELECT V.mot_voc as mot_voc1, P.mot_voc as mot_voc2, L.libelle_lang FROM `vocabulaire`V,`langue`L,`vocabulaire`P,`equivalence_vocabulaire`E WHERE(V.id_voc=E.id_voc1 and P.id_voc=E.id_voc2 and L.id_lang=P.id_lang and V.mot_voc='".$MotOrigine."' and L.libelle_lang='".$langueDestination."')";
        $request2 = mysqli_query($connection,$query2);
        if ($request2->num_rows>0){
            $row = $request2->fetch_assoc();
            if ($langueOrigine === $langueDestination) {
                echo $row["mot_voc1"];
            }else{
                 echo $row["mot_voc2"];
            }
           
        }
      
   } 
    }catch (Exception $e) {
    echo "pas de correspondances",$e->getMessage();
    }

    }
} catch (Exception $e) {
    echo "Erreur",$e->getMessage();
}
    
 $connection->close();
?>*/
?>