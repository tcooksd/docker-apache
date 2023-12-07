<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Form</title>

    <!-- Link to external CSS file -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Get the submitted form data
        $firstName = $_POST["first_name"];
        $lastName = $_POST["last_name"];

        // Construct the welcome message
        $welcomeMessage = "Welcome $firstName $lastName";
        
        // Display the form and the welcome message in the horizontal frame
        echo '
        <div class="top-frame">
            <form action="" method="post">
                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" required value="' . htmlspecialchars($firstName) . '">

                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" required value="' . htmlspecialchars($lastName) . '">

                <input type="submit" value="Submit">
            </form>
        </div>
        <div class="horizontal-frame">' . $welcomeMessage . '</div>';
    } else {
        // Display the form
        echo '
        <div class="top-frame">
            <form action="" method="post">
                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" required>

                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" required>

                <input type="submit" value="Submit">
            </form>
        </div>';
    }
    ?>
</body>
</html>



