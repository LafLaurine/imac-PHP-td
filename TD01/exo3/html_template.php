
<?php  
function generate_html_page ($title, $text) {
  $html = <<<HTML
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>$title</title>
  </head>
  <body>
    <h1>$text</h1>
  </body>
</html>
HTML;
  echo $html;
}
?>