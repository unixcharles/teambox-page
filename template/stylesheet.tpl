* {
  margin: 0;
  padding: 0; }

.clear {
  clear: both;
  height: 0; }

#warper:after {
  content: ".";
  display: block;
  height: 0;
  clear: both;
  visibility: hidden; }

#warper {
  display: inline-block; }

/* Hides from IE-mac \*/
* html #warper {
  height: 1%; }

#warper {
  display: block; }

/* End hide from IE-mac */
h1 {
  margin: 15px 0;
  font-size: 22px;
  font-weight: normal; }

h2 {
  font-size: 22px;
  margin: 15px 0;
  font-weight: normal; }

h3 {
  font-size: 18px;
  margin: 10px 0;
  font-weight: normal; }

h4 {
  font-size: 16px;
  margin: 10px 0;
  font-weight: normal; }

hr {
  height: 1px;
  border: 0; }

p {
  margin: 15px 0; }

a img {
  border: none; }

body {
  font-size: 12px;
  font-family: sans-serif; }

#container {
  min-width: 960px; }

#wrapper {
  padding: 0 20px; }

#main {
  width: 70%;
  float: left; }

#sidebar {
  width: 25%;
  float: right; }

#sidebar h3 {
  padding: 10px 15px;
  margin: 0;
  font-size: 13px; }

#sidebar .block {
  margin-bottom: 20px;
  padding-bottom: 10px; }

#sidebar .block .content {
  padding: 0 15px; }

#sidebar ul.navigation li a:link, #sidebar ul.navigation li a:visited {
  display: block;
  padding: 10px 15px; }

#sidebar .block .sidebar-block, #sidebar .notice {
  padding: 10px; }

#wrapper {
  padding-top: 20px; }

#main .block {
  margin-bottom: 20px;
  padding-top: 1px; }

#main .block .content .inner {
  padding: 0 15px 15px; }

#main .main p.first {
  margin-top: 0; }

#sidebar ul.navigation {
  margin: 0;
  padding: 0;
  list-style-type: none; }

/* box */
#box {
  width: 500px;
  margin: 50px auto; }

#box .block {
  margin-bottom: 20px; }

#box .block h2 {
  padding: 10px 15px;
  margin: 0; }

#box .block .content {
  padding: 10px 20px; }

.small {
  font-size: 11px;
  font-style: normal;
  font-weight: normal;
  text-transform: none;
  letter-spacing: normal;
  line-height: 1.4em; }

.gray {
  color: #999999;
  font-family: Georgia, serif;
  font-size: 13px;
  font-style: italic;
  font-weight: normal;
  text-transform: none;
  letter-spacing: normal;
  line-height: 1.6em; }

.hightlight {
  background-color: #ffff88;
  font-weight: bold;
  color: #36393d; }

a:link, a:visited, a:hover, a:active, h1, h2, h3 {
  color: #111; }

a {
  -moz-outline: none; }

body {
  color: #111;
  background: #E5E5E5;
  font-family: helvetica, arial, sans-serif; }

hr {
  background: #e2e2e2;
  color: #e2e2e2; }

#main {
  width: 71%; }

#main .block {
  padding-top: 0px;
  background: #fff;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4); }

#main .block .content {
  padding-top: 1px; }

#main .block .content h2 {
  margin-left: 15px;
  font-size: 22px;
  font-style: normal;
  font-weight: bold;
  text-transform: none;
  letter-spacing: -1px;
  line-height: 1.2em; }

#main .block .content p {
  font-size: 13px;
  font-style: normal;
  font-weight: normal;
  text-transform: none;
  letter-spacing: normal;
  line-height: 1.45em; }

#sidebar .block h4 {
  font-weight: bold; }

#sidebar .notice {
  background: #fff;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4); }

#sidebar h3 {
  color: #111;
  border-bottom: 1px solid #c0c0c0; }

#sidebar ul li {
  background-position: 15px 11px;
  background-repeat: no-repeat;
  background-image: url("/images/arrow.png");
  border-bottom: 1px solid #e2e2e2; }

#sidebar ul li a {
  text-decoration: none;
  margin-left: 20px; }

#sidebar ul li a:link, #sidebar ul li a:visited {
  text-decoration: none; }

/* box */
#box .block {
  background: #fff;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4); }

#box .block h2 {
  background: #002134;
  color: #fff; }

/* rounded borders */ 
#main .block, #sidebar .block, #sidebar h3, 
#box .block, #box .block h2 {
  -moz-border-radius-topleft: 9px;
  -webkit-border-top-left-radius: 9px;
  -moz-border-radius-topright: 9px;
  -webkit-border-top-right-radius: 9px; }

#sidebar, #sidebar .block, #main .block, 
#sidebar ul.navigation, #box .block {
  -moz-border-radius-bottomleft: 9px;
  -webkit-border-bottom-left-radius: 9px;
  -moz-border-radius-bottomright: 9px;
  -webkit-border-bottom-right-radius: 9px; }

#main .block {
  -moz-border-radius: 9px;
  -webkit-border-radius: 9px;
  border-radius: 9px; }