<?php

function connect(){
    $conn = mysqli_connect(SERVERNAME, USERNAME, PASSWORD, DBNAME);
    mysqli_set_charset($conn, "utf8");
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    return $conn;
}

function select($conn){
    $sql = "SELECT * FROM info";
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

function selectMain($conn){
    $offset = 0;
    if (isset($_GET['page']) AND trim($_GET['page'])!=''){
        $offset = trim($_GET['page']);
    }
    $sql = "SELECT * FROM info ORDER BY id DESC LIMIT 3 OFFSET ".$offset*3;
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

// пагинация категория
function selectMainCategory($conn){
    $offset = 0;
    if (isset($_GET['page']) AND trim($_GET['page'])!=''){
        $offset = trim($_GET['page']);
    }
    $sql = "SELECT * FROM info WHERE category=".$_GET['id']." ORDER BY id DESC LIMIT 3 OFFSET ".$offset*3;
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

// пагинация tag
function selectMainTag($conn){
    $offset = 0;
    if (isset($_GET['page']) AND trim($_GET['page'])!=''){
        $offset = trim($_GET['page']);
    }
    $sql = "SELECT post FROM tag WHERE tag='".$_GET['tag']."' ORDER BY id DESC LIMIT 3 OFFSET ".$offset*3;
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row['post'];
        }
    }
    $sql = "SELECT * FROM info WHERE id in (".join(",", $a).") ORDER BY id DESC";
        $result = mysqli_query($conn, $sql);

        $a = array();
        if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)) {
                $a[] = $row;
            }
        }
    return $a;
}

// пагинация на админ панеле
function selectMainAdmin($conn){
    $offset = 0;
    if (isset($_GET['page']) AND trim($_GET['page'])!=''){
        $offset = trim($_GET['page']);
    }
    $sql = "SELECT * FROM info ORDER BY id DESC LIMIT 5 OFFSET ".$offset*5;
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

function selectArticle($conn){
    $sql = "SELECT * FROM info WHERE id=".$_GET['id'];
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        return $row;
    }
    return false;
}

// пагинация main.php
function paginationCount($conn){
    $sql = "SELECT * FROM info";
    $result = mysqli_query($conn, $sql);
    $result = mysqli_num_rows($result);
    return ceil($result/3);
}

// пагинация админ панели
function paginationCountAdmin($conn){
    $sql = "SELECT * FROM info";
    $result = mysqli_query($conn, $sql);
    $result = mysqli_num_rows($result);
    return ceil($result/5);
}

// пагинация категории
function paginationCountCategory($conn){
    $sql = "SELECT * FROM info WHERE category=".$_GET['id'];
    $result = mysqli_query($conn, $sql);
    $result = mysqli_num_rows($result);
    return ceil($result/3);
}

// пагинация tag
function paginationCountTag($conn){
    $sql = "SELECT post FROM tag WHERE tag='".$_GET['tag']."'";
    $result = mysqli_query($conn, $sql);
    $result = mysqli_num_rows($result);
    return ceil($result/3);
}

function getAllTags($conn){
    $sql = "SELECT DISTINCT(tag) FROM tag";
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row['tag'];
        }
    }
    return $a;
}

function getArticleTags($conn){
    $sql = "SELECT * FROM tag WHERE post=".$_GET['id'];
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

function getPostFromTag($conn){
    $sql = "SELECT post FROM tag WHERE tag='".$_GET['tag']."'";
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row['post'];
        }
    }

    $sql = "SELECT * FROM info WHERE id in (".join(",", $a).")";
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

function getPostFromCategory($conn){
    $sql = "SELECT * FROM info WHERE category=".$_GET['id'];
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

function getCatInfo($conn){
    $sql = "SELECT * FROM category WHERE id=".$_GET['id'];
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
    }
    return $row;
}

function getAllCatInfo($conn){
    $sql = "SELECT * FROM category";
    $result = mysqli_query($conn, $sql);

    $a = array();
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $a[] = $row;
        }
    }
    return $a;
}

function deleteArticle($conn,$id){
  $sql = "DELETE FROM info WHERE id=".$id;
  if (mysqli_query($conn, $sql)) {
    $sql = "DELETE FROM tag WHERE post=".$_GET['id'];
    mysqli_query($conn, $sql);
    return true;
  } else {
    return "Error deleting record: " . mysqli_error($conn);
  }
}

function close($conn){
    mysqli_close($conn);
}
