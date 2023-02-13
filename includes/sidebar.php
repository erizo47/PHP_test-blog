<?php
require 'config.php';
?>
<div class="block">
  <h3>Мы_знаем</h3>
  <div class="block__content">
    <script type="text/javascript" src="//ra.revolvermaps.com/0/0/6.js?i=02op3nb0crr&amp;m=7&amp;s=320&amp;c=e63100&amp;cr1=ffffff&amp;f=arial&amp;l=0&amp;bv=90&amp;lx=-420&amp;ly=420&amp;hi=20&amp;he=7&amp;hc=a8ddff&amp;rs=80" async="async"></script>
  </div>
</div>

<div class="block">
  <h3>Топ читаемых статей</h3>
  <div class="block__content">
    <div class="articles articles__vertical">

        <?php
        $articles = mysqli_query($connection, "SELECT * FROM `articles` ORDER  BY `views` DESC LIMIT 5");

        while( $article = mysqli_fetch_assoc($articles)) {
            ?>
            <article class="article">
                <a href="/article.php?id=<?php echo $article['id'] ?>" class="article__image" style="background-image: url(/static/images/<?php echo $article['image']; ?>);" ></a>
                <div class="article__info">
                    <a href="/article.php?id=<?php echo $article['id'] ?>" >
                        <?php echo $article['title']?>
                    </a>
                    <div class="article__info__meta">

                        <?php
                        $art_cat = false;
                        foreach ($categories as $cat) {
                            if ($cat['id'] == $article['categorie_id']) {
                                $art_cat = $cat;
                                break;
                            }
                        }?>
                        <small>Categorie: <a href="/articles.php?categorie=<?php echo $art_cat['id']; ?>"><?php echo $art_cat['categorie_title']; ?></a></small>
                    </div>
                    <div class="article__info__preview"><?php echo mb_substr(strip_tags($article['text']), 0, 20, 'utf8') . " ..."?></div>
                </div>
            </article>
            <?php
        }
        ?>
    </div>
  </div>
</div>

<div class="block">
  <h3>Комментарии</h3>
  <div class="block__content">
    <div class="articles articles__vertical">
        <?php
        $comments = mysqli_query($connection, "SELECT * FROM `comments` ORDER BY `id` DESC LIMIT 3");
        $articles_q = mysqli_query($connection, "SELECT * FROM `articles`");
        $articles = array();
        while ($article = mysqli_fetch_assoc($articles_q)) {
            $articles[] = $article;
        }
        while( $comment = mysqli_fetch_assoc($comments)) {
            ?>
      <article class="article">
        <div class="article__image" style="background-image: url(https://www.gravatar.com/avatar/<?php echo md5($comment['email']);?>?s=125);"></div>
        <div class="article__info">
          <p href=""><?php echo $comment['author'] . ' ' . $comment['nickname'] ?></p>
          <div class="article__info__meta">
            <small><a href="/article.php?id=<?php echo $comment['articlles_id']; ?>">
                    <?php
                    foreach ($articles as $art) {
                        if ($art['id'] == $comment['articlles_id']) {
                            echo mb_substr(strip_tags($art['title']), 0, 20, 'utf8') . " ...";
                            break;
                        }
                    }
                    ?>
            </a></small>
          </div>
          <div class="article__info__preview"><?php echo $comment['comment'] ?></div>
        </div>
      </article>
    <?php
        }?>
    </div>
  </div>
</div>