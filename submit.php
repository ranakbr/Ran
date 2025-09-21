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
    // Check if user is logged in
    if (!isset($_SESSION['user_id'])) {
        header("Location: login.html"); // Redirect if not logged in
        exit;
    }

    // Retrieve user ID and name from session
    $user_id = $_SESSION['user_id'];
    $user_name = $_SESSION['user_name'];

    // Assuming your form fields are named question1, question2, ..., question8
    $question1 = trim($_POST['question1']);
    $question2 = trim($_POST['question2']);
    $question3 = trim($_POST['question3']);
    $question4 = trim($_POST['question4']);
    $question5 = trim($_POST['question5']);
    $question6 = trim($_POST['question6']);
    $question7 = trim($_POST['question7']);
    $question8 = trim($_POST['question8']);

    // Initialize correct count
    $correct_count = 0;

    // Check answers for each question and add 10 points for each correct answer
    if ($question1 == "Semua jawaban di atas benar") {
        $correct_count += 10;
    }
    if ($question2 == "Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT") {
        $correct_count += 10;
    }
    if ($question3 == "UU Nomor 12 Tahun 2022") {
        $correct_count += 10;
    }
    if ($question4 == "Mengintrupsi") {
        $correct_count += 10;
    }
    if ($question5 == "Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan") {
        $correct_count += 10;
    }
    if ($question6 == "Semua jawaban benar") {
        $correct_count += 10;
    }
    if ($question7 == "Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya") {
        $correct_count += 10;
    }
    if ($question8 == "Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual") {
        $correct_count += 10;
    }

    // Prepare SQL statement to insert quiz responses
    $sql = "INSERT INTO quiz_responses (user_id, user_name, question1, question2, question3, question4, question5, question6, question7, question8) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    if ($stmt === false) {
        echo "Error preparing statement: " . $conn->error;
    }
    $stmt->bind_param("isssssssss", $user_id, $user_name, $question1, $question2, $question3, $question4, $question5, $question6, $question7, $question8);

    if ($stmt->execute()) {
        // Store correct count in session for use on result page
        $_SESSION['correct_count'] = $correct_count;

        // Redirect to result page on successful submission
        header("Location: result.php");
        exit;
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $stmt->close();
}

$conn->close();
?>
