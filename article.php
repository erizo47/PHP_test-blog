<?php
require 'includes/config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">                                                                                  
    <title><?php echo $config['title']; ?></title>

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
    <?php
        $get_id = stripcslashes($_GET['id']);
        $article = $mysqli->prepare("SELECT * FROM `articles` WHERE `id` = ?");
        $article->bind_param('i', $get_id);
        $article->execute();
        $result = $article->get_result();
        $art = $result->fetch_assoc();

        $mysqli->query("UPDATE `articles` SET `views` = `views` + 1 WHERE `id` =" . (int) $art['id']);

        if (isset($_POST['do_post'])) {

        $errors = array();
        if ($_POST['name'] == '') {
            $errors[] = 'Введите Имя';
        }
        if ($_POST['nickname'] == '') {
            $errors[] = 'Введите Никнейм';
        }
        if ($_POST['email'] == '') {
            $errors[] = 'Введите Email';
        }
        if ($_POST['text'] == '') {
            $errors[] = 'Введите текст комментария';
        }
        if (empty($errors)) {
            $post_comment = $mysqli->prepare("INSERT INTO `comments` (`author`, `nickname`, `email`, `comment`, `articlles_id`) VALUES (?, ?, ?, ?, " .$art['id']. ")");

            $comment_name = stripcslashes($_POST['name']);
            $comment_nickname = stripcslashes($_POST['nickname']);
            $comment_email = stripcslashes($_POST['email']);
            $comment_text = stripcslashes($_POST['text']);

            $post_comment->bind_param('ssss', $comment_name, $comment_nickname, $comment_email, $comment_text );
            $post_comment->execute();
            unset($_POST['name'], $_POST['nickname'], $_POST['email'], $_POST['text']);
        }
    }


        if (empty($art)) {
            ?>
            <div id="content">
                <div class="container">
                    <div class="row">
                        <section class="content__left col-md-8">
                            <div class="block">
                                <h3>Post doesn`t found</h3>
                                <div class="block__content">
                                    <img class="content__img" src="../static/images/hz.png" alt="Не удалось найти пост">
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
    <?php
    }   else {
        ?>
            <div id="content">
                <div class="container">
                    <div class="row">
                        <section class="content__left col-md-8">
                            <div class="block">
                                <h3><?php echo $art['title'] ?></h3>
                                <a><?php echo $art['views'] ?> views</a>
                                <div class="block__content">
                                    <img src="static/images/<?php echo $art['image'] ?>" alt="<?php echo $art['image'] ?>">

                                    <div class="full-text">
                                       <?php echo $art['text']?>
                                    </div>
                                </div>
                            </div>

                            <div class="block">
                                <a href="#comment-add-form">Добавить свой</a>
                                <h3>Комментарии к статье</h3>
                                <div class="block__content">
                                    <div class="articles articles__vertical">
                                        <?php
                                            $comments = $mysqli->query("SELECT * FROM `comments` WHERE `articlles_id` = " . (int) $art['id'] . " ORDER BY `id`");
                                            if (mysqli_num_rows($comments) <= 0) {
                                                echo "Никто ещё не добавил комментарий, станьте первым!";
                                            }
                                            while( $comment = mysqli_fetch_assoc($comments)) {
                                                    ?>
                                                    <article class="article">
                                                        <div class="article__image" style="background-image: url(https://www.gravatar.com/avatar/<?php echo md5($comment['email']);?>?s=125);"></div>
                                                        <div class="article__info">
                                                            <p><?php echo $comment['author'] . ' ' . $comment['nickname']; ?></p>
                                                            <div class="article__info__meta">
                                                                <small><?php echo $art['pubdate']?></small>
                                                            </div>
                                                            <div class="article__info__preview"><?php echo $comment['comment']; ?></div>
                                                        </div>
                                                    </article>
                                        <?php
                                            }?>
                                    </div>
                                </div>
                            </div>

                            <div class="block" id="comment-add-form">
                                <h3>Добавить комментарий</h3>
                                <div class="block__content">
                                    <form class="form" method="POST" action="/article.php?id=<?php echo $art['id']?>#comment-add-form">
                                        <div class="form__group" >
                                            <?php
                                            if (!empty($errors)) {
                                                        echo ('<span style="color: red; font-weight: bold; display: block; margin-bottom: 10px;">' . $errors[0] . '</span>') ;
                                                    }
                                            ?>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="text" class="form__control" name="name" placeholder="Имя" value="<?php echo $_POST['name'];?>">
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" class="form__control" name="nickname" placeholder="Никнейм" value="<?php echo $_POST['nickname'];?>">
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="email" class="form__control" name="email" placeholder="Email" value="<?php echo $_POST['email'];?>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form__group">
                                            <textarea name="text" class="form__control" placeholder="Текст комментария ..." ><?php echo $_POST['text'];?></textarea>
                                        </div>
                                        <div class="form__group">
                                            <input type="submit" class="form__control" name="do_post" value="Добавить комментарий">
                                        </div>
                                    </form>
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
    <?php
    }?>


    <?php include 'includes/footer.php' ?>

</div>

</body>
</html>