<?php
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
    $nama = trim($_POST['nama']);
    $gender = trim($_POST['gender']);
    $nim = trim($_POST['nim']);
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);
    
    // Validate form inputs
    if (empty($nama) || empty($gender) || empty($nim) || empty($email) || empty($password)) {
        $alert_message = "<div class='alert alert-danger'>All fields are required.</div>";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $alert_message = "<div class='alert alert-danger'>Invalid email format.</div>";
    } else {
        // Check if email already exists
        $sql = "SELECT id FROM users WHERE email = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();
        
        if ($stmt->num_rows > 0) {
            $alert_message = "<div class='alert alert-danger'>Email already exists.</div>";
        } else {
            // Hash the password
            $hashed_password = password_hash($password, PASSWORD_BCRYPT);

            // Insert user into the database
            $sql = "INSERT INTO users (nama, gender, nim, email, password) VALUES (?, ?, ?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssss", $nama, $gender, $nim, $email, $hashed_password);
            
            if ($stmt->execute()) {
                $alert_message = "<div class='alert alert-success'>Registration successful.</div>";
            } else {
                $alert_message = "<div class='alert alert-danger'>Error: " . $conn->error . "</div>";
            }
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
    <title>User Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style2.css">
</head>

<body>

    <div class="container">
        <div class="row align-items-center justify-content-center vh-100">
            <div class="box2">
                <div class="p-5 py-5 text-dark">
                    <h3 class="mb-1 fw-bold text-center">Selamat Datang!</h3>
                    <p class="mb-4 text-muted text-center">Silahkan Daftar</p>

                    <?php echo $alert_message; ?>

                    <form class="needs-validation" method="POST" action="" validate>
                        <div class="mb-3">
                            <label for="id" class="form-label fw-bold">NAMA</label>
                            <input type="text" class="form-control" name="nama" id="id" placeholder="Nama" autocomplete="off" required>
                        </div>
                        <div class="mb-3">
                            <label for="gender" class="form-label fw-bold">Gender</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gender" value="Male" id="genderMale">
                                <label class="form-check-label" for="genderMale">Pria</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gender" value="Female" id="genderFemale">
                                <label class="form-check-label" for="genderFemale">Wanita</label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="id" class="form-label fw-bold">NIM</label>
                            <input type="text" class="form-control" name="nim" id="id" placeholder="NIM" autocomplete="off" required>
                        </div>
                        <div class="mb-3">
                            <label for="id" class="form-label fw-bold">EMAIL</label>
                            <input type="email" class="form-control" name="email" id="id" placeholder="Email" autocomplete="off" required>
                        </div>
                        <div class="mb-3">
                            <label for="id" class="form-label fw-bold">PASSWORD</label>
                            <input type="password" class="form-control" name="password" id="id" placeholder="Password" autocomplete="off" required>
                        </div>
                        <div class="d-grid mb-3">
                            <button type="submit" class="btn btn-primary mb-3 py-2">Daftar</button>
                        </div>
                    </form>

                    <p class="text-muted fz-13 text-center">Sudah Punya Akun? <a href="login.php">Login</a></p>
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
