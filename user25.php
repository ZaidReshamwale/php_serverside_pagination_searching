<?php 
session_start();

?>
<!DOCTYPE html>
<html>

<head>
    <title>Task</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
        integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/placeholder-loading/dist/css/placeholder-loading.min.css">
    <link rel="stylesheet" href="index.css">
</head>

<body>
    <br />
    <!-- Beginning -->
    <div class="container">
        <h1 align="center" class="head">Employee Data</h1>
        <br/>
        <!-- layout -->
        <div class="card">
            <div class="card-header"> </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h3>Employee Details (25)</h3>
                    </div>
                    <!-- searching design -->
                    <div class="col">
                        <input type="text" name="search_box" id="search_box" class="form-control" placeholder="Search here .." />
                    </div>
                </div>
                <!-- table -->
                <div class="table-responsive table-hover" id="dynamic_content">
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<script>
$(document).ready(function() {
    load_data(1);

    // reading the data (response)
    function load_data(page, query = '') {
        $.ajax({
            url: "users25.php",
            method: "POST",
            data: {
                page: page,
                query: query
            },
            success: function(data) {
                $('#dynamic_content').html(data);
            }
        });
    }

    // pagination 
    $(document).on('click', '.page-link', function() {
        var page = $(this).data('page_number');
        var query = $('#search_box').val();
        load_data(page, query);
    });

    // searching 
    $('#search_box').keyup(function() {
        var query = $('#search_box').val();
        load_data(1, query);
    });

});
</script>