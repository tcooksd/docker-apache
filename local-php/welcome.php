<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
</head>
<body>
    <?php
    // Check if the form is submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Retrieve values from the form
        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];

        // Display a welcome message
        echo "<h1>Welcome, $first_name $last_name!</h1>";
    } else {
        // Redirect back to the form if accessed directly
        header("Location: index.html");
        exit();
    }
    ?>
</body>
</html>
