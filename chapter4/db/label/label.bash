#!/bin/bash

datadir=/Users/ueda/GIT/SD_BOOK/DBSAMPLE/db/data2

cat << FIN > .html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>名刺</title>	
	<style>
		* {margin:0;padding:0}
		body {padding-top:10mm;padding-left:6mm;zoom:0.94}
		div.row {clear:both}
		div.label {width:91mm;height:55mm;border:1px solid black}
		p {font-size:14pt}
		p.zip {padding-bottom:2mm}
		p.name {font-size:16pt;padding-top:2mm;text-align:center}
	</style>
</head>
<body>
<!--2COLUMNDATA-->
	<div class="row">
		<div class="label" style="float:left">
			<p class="zip">〒%1-%2</p>
			<p>%3%4</p><p>%5</p><p>%6</p>
			<p class="name">%7 %8 様</p>
		</div>
		<div class="label" style="float:left">
			<p class="zip">〒%9-%10</p>
			<p>%11%12</p><p>%13</p><p>%14</p>
			<p class="name">%15 %16 様</p> 
		</div>
	</div>
<!--2COLUMNDATA-->
</body>
</html>
FIN

loopj num=1 $datadir/member.{zipcode,addr,fullname}	|
delf 1							|
xargs -n 16						|
mojihame -l2COLUMNDATA .html -

rm .html
