<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Asynchronous Admin Score</title>
    <link href="../static/css/mw.css" rel="stylesheet" />
    <link href="../static/css/aadminscore.css" rel="stylesheet" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
    <script src="../static/js/aadminscore.js"></script>
    % if defined("user"):
    <script>
      $(document).ready(function(){$("#submit").trigger("click")});
    </script>
    % end
  </head>
  <body>
    <h1>Asynchronous Admin Score</h1>
    <label for="username">Username:</label>
    <input type="text" id="username" class="mw-ui-input mw-ui-input-inline"
           % if defined("user"):
           value="{{ user }}"
           % end
           />
    <button id="submit" class="mw-ui-button mw-ui-constructive">
      Submit
    </button>
    <br />
    <output id="error" stype="display: none;"></output>
    <output id="result" style="display:none;">
      <div id="score_wrapper"></div>
      <br style="clear: both" />
      <h2>Score graph</h2>
      <svg></svg>
      <h2>Score components</h2>
      <ul id="components"></ul>
    </output>
    <br />
    <footer>
      <a href="https://en.wikipedia.org/wiki/User:APerson" title="APerson's user page on the English Wikipedia">APerson</a> (<a href="https://en.wikipedia.org/wiki/User_talk:APerson" title="APerson's talk page on the English Wikipedia">talk!</a>) • <a href="https://github.com/APerson241/AAdminScore" title="Source code on GitHub">Source code</a> • <a href="https://github.com/APerson241/AAdminScore/issues" title="Issues on GitHub">Issues</a>
    </footer>
  </body>
</html>