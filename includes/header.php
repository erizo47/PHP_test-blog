<?php
require 'config.php';
?>
<header id="header">
      <div class="header__top">
        <div class="container">
          <div class="header__top__logo">
            <a  href="/" style="text-decoration: none; color: black"><h1><?php echo $config['title']; ?></h1></a>
          </div>
          <nav class="header__top__menu">
            <ul>
              <li><a href="/">Main</a></li>
              <li><a href="/pages/about_me.php">About me</a></li>
              <li><a href="<?php echo $config['TG_URL']; ?>" target="_blank">Telegram</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <?php 
        $categories_q = mysqli_query($connection, "SELECT * FROM `articles_categories`");
        $categories = array();
        while( $el = mysqli_fetch_assoc($categories_q)) {
            $categories[] = $el;
        };
      ?>
      <div class="header__bottom">
        <div class="container">
          <nav>
            <ul>
              <?php 
                foreach ( $categories as $el ) {
                  ?>
                  <li><a href="/articles.php?categorie=<?php echo $el['id'] ?>"><?php echo $el['categorie_title'] ?></a></li>
                  <?php
                }
              ?>
              
            </ul>
          </nav>
        </div>
      </div>
    </header>