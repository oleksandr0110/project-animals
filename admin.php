<?php
require_once('template/header_admin.php');
// $data = select($conn);
$data = selectMainAdmin($conn);
$countPage = paginationCountAdmin($conn);
close($conn);
?>
<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body> -->
<script src="js/script.js"></script>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
        <?php
            echo   $flash;
            echo '<h2>Admin-panel</h2>';
            echo '<div class="mt-2 mb-2 text-right">';
            echo '<a href="/admin-create"><button class="btn btn-secondary">Add new</button></a></div>';
            $out = '<table  class="table table-striped">';
            $out .='<tr><th>ID</th><th>Title</th><th>Description min</th><th>Image</th><th>Update</th><th>Action</th></tr>';
            for ($i=0; $i < count($data); $i++){
            $out .="<tr><td>{$data[$i]['id']}</td><td>{$data[$i]['title']}</td><td>{$data[$i]['descr_min']}</td><td><img src='/images/{$data[$i]['image']}' width='40'></td>";
            $out .="<td><a href='/admin-update/{$data[$i]['id']}'><input class='btn btn-primary' type='submit' value='update'></td>";
            $out .="<td><input class='check-delete btn btn-danger' data='{$data[$i]['id']}' type='submit' value='delete'></td></tr>";
            }
            $out .='</table>';
            echo $out;
            ?>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <nav class="mt-4">
                <ul class="pagination">
                    <?php
                    for ($i=0; $i < $countPage; $i++){
                        $j = $i+1;
                        echo "<li class='page-item'><a href='/admin/{$i}' style='padding: 5px;' class='page-link'>{$j}</a></li>";
                    }
                    ?>
                </ul>
            </nav>
        </div>
    </div>
</div>

<script>
    window.onload= function(){
        let checkDelete = document.querySelectorAll('.check-delete');
        checkDelete.forEach(function(element){
            element.onclick = checkDeleteFunction;
        })
        function checkDeleteFunction(event){
            event.preventDefault();
            let a = confirm('Do you want to delete?');
            if (a == true) {
                location.href = '/admin-delete/'+this.getAttribute('data');
            }
            return false;
        }
    }
</script>
<?php
    require_once('template/footer.php');
?>
