<?php
require_once('template/header.php');
$data = selectMainCategory($conn);
$catList = getCatInfo($conn);
$countPage = paginationCountCategory($conn);
$tag = getAllTags($conn);
close($conn);
?>

<div class="container">
    <div class="row">
        <div class="col-lg-9">
            <div class="row">
                <div class="col-lg-12">
                <?php
                    echo "<h1>{$catList['category']}</h1>";
                ?>
                </div>
            </div>
            <div class="row">
            <?php
                $out = '';
                for ($i=0; $i < count($data); $i++){
                    $out .='<div class="col-lg-4 col-md-6">';
                    $out .='<div class="card">';
                    $out .="<img src='/images/{$data[$i]['image']}' class='card-img-top'>";
                    $out .='<div class="card-body">';
                    $out .="<h5 class='card-title'>{$data[$i]['title']}</h5>";
                    $out .="<p class='card-text'>{$data[$i]['descr_min']}</p>";
                    $out .='<p class="text-right"><a href="/arcticle/'.$data[$i]['id'].'" class="btn btn-primary">Read more...</a></p>';
                    $out .='</div>';
                    $out .='</div>';
                    $out .='</div>';
                }
                echo $out;
                ?>
            </div>
        </div>
        <div class="col-lg-3">
            <?php require_once('template/nav.php'); ?>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <nav class="mt-4">
                        <ul class="pagination">
                            <?php
                            for ($i=0; $i < $countPage; $i++){
                                $j = $i+1;
                                echo "<li class='page-item'><a href='/cat/{$catList['id']}?page={$i}' style='padding: 5px;' class='page-link'>{$j}</a></li>";
                            }
                            ?>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-12 text-center">
                    <?php
                    for ($i=0; $i < count($tag); $i++){
                        echo "<a href='/tag/{$tag[$i]}' style='padding: 5px;' class='badge badge-info p-2 m-1'>{$tag[$i]}</a>";
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
    require_once('template/footer.php');
?>
