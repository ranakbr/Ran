<?php
// Start the session
session_start();

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ppksmald_statprob";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize alert message
$alert_message = "";

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);
    
    // Validate form inputs
    if (empty($email) || empty($password)) {
        $alert_message = "<div class='alert alert-danger'>Both email and password are required.</div>";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $alert_message = "<div class='alert alert-danger'>Invalid email format.</div>";
    } else {
        // Check if the email exists
        $sql = "SELECT id, nama, password FROM users WHERE email = ?";
        $stmt = $conn->prepare($sql);
        if ($stmt === false) {
            die("Error preparing statement: " . $conn->error);
        }
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();
        
        if ($stmt->num_rows > 0) {
            $stmt->bind_result($id, $nama, $hashed_password);
            $stmt->fetch();
            if (password_verify($password, $hashed_password)) {
                // Password is correct, start a new session
                $_SESSION['user_id'] = $id;
                $_SESSION['user_name'] = $nama;
                header("Location: home.html");
                exit;
            } else {
                $alert_message = "<div class='alert alert-danger'>Incorrect password.</div>";
            }
        } else {
            $alert_message = "<div class='alert alert-danger'>No account found with that email.</div>";
        }
        
        $stmt->close();
    }
}

$conn->close();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style2.css">
</head>

<body>

    <div class="container">
        <div class="row align-items-center justify-content-center vh-100">
            <div class="col-lg-9">
            <div class="box">
                <div class="row">

                <div class="col-lg-6">
                    <div class="bg-login-user h-100"></div>
                </div>

                <div class="col-lg-6">
                <div class="p-5 py-5 text-dark">
                    <h3 class="mb-1 fw-bold text-center">Selamat Datang!</h3>
                    <p class="mb-4 text-muted text-center">Silahkan Login</p>

                    <?php echo $alert_message; ?>

                    <form class="needs-validation" method="POST" action="" validate>
                        <div class="mb-3">
                            <label for="email" class="form-label fw-bold">EMAIL</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Email" autocomplete="off" aria-describedby="emailHelp" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label fw-bold">PASSWORD</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" autocomplete="off" required>
                        </div>
                        <div class="d-grid mb-3">
                            <button type="submit" class="btn btn-primary mb-3 py-2">Login</button>
                        </div>
                    </form>

                    <p class="text-muted fz-13 text-center">Belum Punya Akun? <a href="register.php">Daftar</a></p>
                </div>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="script.js"></script>
</body>

</html>
