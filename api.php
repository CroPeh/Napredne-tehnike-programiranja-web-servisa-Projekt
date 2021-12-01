<?php
echo '<form method="post" action="" id="form1">
<input type="text" name="searchValue" placeholder="Search Steam titles" style="width: 20em;">
<button type="submit" name="submit">Search</button>
</form>';
if(isset($_POST['submit'])) {
error_reporting(0);
$curl = curl_init();
$query=str_replace(' ', '%20', $_POST['searchValue']);
curl_setopt_array($curl, [
	CURLOPT_URL => "https://steam2.p.rapidapi.com/search/".$query."/page/1",
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_ENCODING => "",
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 30,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => "GET",
	CURLOPT_HTTPHEADER => [
		"x-rapidapi-host: steam2.p.rapidapi.com",
		"x-rapidapi-key: e05ffea07fmshc79ca94768de339p16bdc5jsne146b4c22a7c"
	],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
	echo "cURL Error #:" . $err;
} else {
	$data = json_decode($response, true);
    error_reporting(0);
/*Fetching JSON file content using php file_get_contents method*/
 
/*Initializing temp variable to design table dynamically*/
$temp = "<table>";
 
/*Defining table Column headers depending upon JSON records*/
$temp .= "<tr><th>appId</th>";
$temp .= "<th>Title</th>";
$temp .= "<th>url</th>";
$temp .= "<th>imgUrl</th>";
$temp .= "<th>released</th>";
$temp .= "<th>reviewSummary</th></tr>";
 
/*Dynamically generating rows & columns*/
for($i = 0; $i < sizeof($data); $i++)
{
$temp .= "<tr>";
$temp .= "<td>" . $data[$i]["appId"] . "</td>";
$temp .= "<td>" . $data[$i]["title"] . "</td>";
$temp .= "<td><a href='" . $data[$i]["url"] . "'target='_blank'>" . $data[$i]["imgUrl"] . "</a></td>";
$temp .= "<td><a href='" . $data[$i]["imgUrl"] . "'target='_blank'>" . $data[$i]["imgUrl"] . "</a></td>";
$temp .= "<td>" . $data[$i]["released"] . "</td>";
$temp .= "<td>" . $data[$i]["reviewSummary"] . "</td>";
$temp .= "</tr>";
}
 
/*End tag of table*/
$temp .= "</table>";
 
/*Printing temp variable which holds table*/
echo $temp;
}
}