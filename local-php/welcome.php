<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the submitted form data
    $firstName = $_POST["first_name"];
    $lastName = $_POST["last_name"];

    // Construct the welcome message
    $welcomeMessage = "Welcome $firstName $lastName";
    
    // Return the welcome message as JSON (or you can process and store the data as needed)
    echo json_encode(["message" => $welcomeMessage]);
} else {
    // Handle non-POST requests
    echo "Invalid request method";
}
?>

