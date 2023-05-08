<?php
require_once('template/header.php');
$data = selectMainTag($conn);
$tag = getAllTags($conn);
$countPage = paginationCountTag($conn);
close($conn);
?>
<div class="container">
  <div class="row">
    <div class="col-lg-9">
        <div class="row">
            <?php
            $out = '';
            for ($i=0; $i < count($data); $i++){
                $out .='<div class="col-lg-4 col-md-6">';
                $out .='<div class="card shadow p-3 mb-5 bg-white rounded">';
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
    </div><!--col-lg-9-->
    <div class="col-lg-3">
        <?php require_once('template/nav.php'); ?>
    </div>

    </div><!--row-->
</div><!--container-->

<?php
    require_once('template/footer.php');
?>
