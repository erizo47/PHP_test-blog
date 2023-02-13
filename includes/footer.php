<?php
require 'config.php';
?>
<footer id="footer">
      <div class="container">
        <div class="footer__logo">
          <h1><?php echo $config['title']; ?></h1>
        </div>
        <nav class="footer__menu">
          <ul>
            <li><a href="/">Main</a></li>
            <li><a href="/pages/about_me.php">About me</a></li>
            <li><a href="<?php echo $config['TG_URL']; ?>" target="_blank">Telegram</a></li>
            <li><a href="/pages/copyright.php">Copyright</a></li>
          </ul>
        </nav>
      </div>
    </footer>