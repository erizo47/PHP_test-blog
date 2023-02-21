<?php
include 'includes/config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $config['title'] ?></title>

    <!-- Bootstrap Grid -->
    <link rel="stylesheet" type="text/css" href="/media/assets/bootstrap-grid-only/css/grid12.css">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">

    <!-- Custom -->
    <link rel="stylesheet" type="text/css" href="/media/css/style.css">
</head>
<body>

<div id="wrapper">

    <?php include 'includes/header.php' ?>
    <div id="content">
        <div class="container">
            <div class="row">
                <section class="content__left col-md-8">
                    <div class="block">
                        <a href="/articles.php">All posts</a>
                                <?php
                                $per_page = 4;
                                $page = 1;
                                if ( $page <= 1 || $page > $total_pages) {
                                    $page = 1;
                                }
                                if ( isset($_GET['page']) ) {
                                    $page = (int) $_GET['page'];
                                }
                                $offset = ($per_page * $page) - $per_page;

                                if (isset($_GET['categorie'])) {
                                    $categorie_id = (int) $_GET['categorie'];
                                    $total_count_cat = $mysqli->prepare("SELECT COUNT('id') AS `total_count` FROM `articles` WHERE categorie_id = ?");
                                    $total_count_cat->bind_param('i', $categorie_id);
                                    $total_count_cat->execute();
                                    $total_count = $total_count_cat->get_result();
                                    $total_count = $total_count->fetch_assoc();
                                    $total_count = $total_count['total_count'];

                                    $total_pages = ceil($total_count / $per_page);

                                    $articles_cat = $mysqli->prepare( "SELECT * FROM `articles` WHERE categorie_id = ? ORDER  BY 'id' DESC LIMIT ?,$per_page");
                                    $articles_cat->bind_param('ii', $categorie_id, $offset);
                                    $articles_cat->execute();
                                    $articles_cat = $articles_cat->get_result();

                                        if (mysqli_num_rows($articles_cat) < 1) {
                                        echo '<h3>Нет статей</h3>
                                              <div class="block__content">
                                              <div class="articles articles__horizontal">';
                                    } else {
                                        echo '<h3>' . 'Статьи про ' . $categories[$categorie_id - 1]['categorie_title'] .  ' [' . $total_count . ']' . '</h3>
                                              <div class="block__content">
                                              <div class="articles articles__horizontal">';
                                        while( $article = mysqli_fetch_assoc($articles_cat)) {
                                            ?>
                                            <article class="article">
                                                <div class="article__image" style="background-image: url(/static/images/<?php echo $article['image']; ?>);"></div>
                                                <div class="article__info">
                                                    <a href="/article.php?id=<?php echo $article['id'] ?>" >
                                                        <?php echo $article['title']?>
                                                    </a>
                                                    <div class="article__info__meta">
                                                        <small>Categorie: <a href="/articles.php?categorie=<?php echo $categorie_id; ?>"><?php echo $categories[$categorie_id - 1]['categorie_title']; ?></a></small>
                                                    </div>
                                                    <div class="article__info__preview"><?php echo mb_substr(strip_tags($article['text']), 0, 100, 'utf8') . " ..."?></div>
                                                </div>
                                            </article>
                                            <?php
                                        }
                                        echo "</div>";
                                        echo '<div class="paginator">';
                                        if ($page > 1) {
                                            echo '<a href="/articles.php?page='. ($page - 1) . '&categorie=' . $categorie_id . '">Previus page</a>';
                                        }
                                        if ($page < $total_pages) {
                                            echo '<a href="/articles.php?page='. ($page + 1) . '&categorie=' . $categorie_id . '">Next page</a>';
                                        }
                                        echo '</div>';
                                        ?>
                                    <?php  }
                                    } else {

                                        $total_count_q = $mysqli->query( "SELECT COUNT('id') AS `total_count` FROM `articles`");
                                        $articles = $mysqli->query( "SELECT * FROM `articles` ORDER BY 'id' DESC LIMIT $offset,$per_page");

                                        $total_count = mysqli_fetch_assoc($total_count_q);
                                        $total_count = $total_count['total_count'];
                                        $total_pages = ceil($total_count / $per_page);

                                    if (mysqli_num_rows($articles) < 1) {
                                            echo '<h3>Нет статей</h3>
                                              <div class="block__content">
                                              <div class="articles articles__horizontal">';
                                        } else {
                                            echo '<h3>Все статьи [' . $total_count . ']</h3>
                                              <div class="block__content">
                                              <div class="articles articles__horizontal">';
                                            while( $article = mysqli_fetch_assoc($articles)) {
                                            ?>
                                                <article class="article">
                                                    <div class="article__image" style="background-image: url(/static/images/<?php echo $article['image']; ?>);"></div>
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
                                                        <div class="article__info__preview"><?php echo mb_substr(strip_tags($article['text']), 0, 100, 'utf8') . " ..."?></div>
                                                    </div>
                                                </article>
                                                <?php
                                            }
                                                echo "</div>";
                                                echo '<div class="paginator">';
                                                if ($page > 1) {
                                                    echo '<a href="/articles.php?page='. ($page - 1) . '">Previus page</a>';
                                                }
                                                if ($page < $total_pages) {
                                                    echo '<a href="/articles.php?page='. ($page + 1) . '">Next page</a>';
                                                }
                                                echo '</div>';
                                                }}
                                                ?>
                        </div>
                    </div>
                </section>
                <section class="content__right col-md-4">
                    <?php
                    require 'includes/sidebar.php';
                    ?>
                </section>
            </div>
        </div>
    </div>
    <?php include 'includes/footer.php' ?>
</body>
</html>