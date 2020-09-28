<?php 

        $DB_USER='root'; 
		$DB_PASS=''; 
		$DB_HOST='localhost';
		$DB_NAME='finalbasetraduction';
		$mysqli = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
		/* check connection */
		if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
		}		

        $resul["result"]=array();
		$mysqli->query("SET NAMES 'utf8'");
		$sql="SELECT libelle_lang FROM langue";
		$result=$mysqli->query($sql);
		while($e=mysqli_fetch_assoc($result)){
        array_push($resul["result"],$e["libelle_lang"]);
        }	
        //echo json_encode($output);
        echo json_encode($resul["result"]); 
		$mysqli->close();	

    
    /*
    ---------------------------------------------
    if ($connection) {
        $sql="SELECT libelle_lang FROM langue";
        $request= mysqli_query($sql);
        while ($e = mysqli_fetch_assoc($request)) {
            $sortie[]=$e;
            print(json_encode($sortie));
            $connection->close();
        }
     }else {
         printf("Problème de connection à la BDD");
         exit();
     }
     ---------------------------------------
    $langueOrigine = $_POST["langue1"];
    $MotOrigine = $_POST["MotOrigine"];
    $langueDestination = $_POST["langue2"];
    $query1 = "select * from '".$langueOrigine."'where mots like '".$MotOrigine."'  ";
    $request = mysqli_query($connection,$query1,$query2);
    if (mysqli_num_rows($request)>0) {
        $row = mysqli_fetch_row($request);
        $id_origine = $row["id_f"];
    
        $query2 = "select mots from '".$langueDestination."'where  '".$id_origine."' like '".."' "
    }*/


?>