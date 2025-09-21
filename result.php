<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nilai Quiz</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

    <div class="wrapper">
        
        <div class="main">
            
            <div class="container-fluid">
                <nav class="navbar navbar-expand px-1">
                    <a class="navbar-brand px-3">
                        <img src="Maldives_blue.png" style="width: 110px;">
                    </a>
                    <div class="navbar-collapse navbar">
                        <ul class="navbar-nav"></ul>
                    </div>
                </nav>
            </div>

            <div class="container py-5 h-100 d-flex justify-content-center mb-3">

                <div class="card text-center" style="width: 50rem;">
                    <img src="result.png" style="width: 300px;" class="p-3 mx-auto my-3 d-block card-img-top">
                    <div class="card-body">
                        <h1 class="fw-bold mt-5">Quiz Result</h1>
                        <?php
                            // Start the session
                            session_start();

                            // Check if correct_count is set in session
                            if (isset($_SESSION['correct_count'])) {
                                $correct_count = $_SESSION['correct_count'];
                                echo "<h3>Nilai Kamu : $correct_count.</h3>";
                            } else {
                                echo "<h3>Kamu belum Ikut Quiz.</h3>";
                            }
                        ?>
                        <a href="home.html" class="btn btn-outline-primary mt-5"><i class="fas fa-home me-2"></i>Kembali ke Beranda</a>
                    </div>
                </div>

            </div>

        </div>

    </div>

</body>

</html>
