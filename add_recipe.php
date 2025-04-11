<?php include('includes/db.php'); ?>
<?php include('includes/header.php'); ?>

<body class="recipe-body">
<div class="container animate-fade-in">
    <h2 class="section-heading">➕ Add a New Recipe</h2>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $title = mysqli_real_escape_string($conn, $_POST['title']);
        $category = mysqli_real_escape_string($conn, $_POST['category']);
        $ingredients = mysqli_real_escape_string($conn, $_POST['ingredients']);
        $instructions = mysqli_real_escape_string($conn, $_POST['instructions']);
        $video_url = mysqli_real_escape_string($conn, $_POST['video_url']);

        $sql = "INSERT INTO recipes (title, category, ingredients, instructions, video_url)
                VALUES ('$title', '$category', '$ingredients', '$instructions', '$video_url')";

        if (mysqli_query($conn, $sql)) {
            echo "<p class='success-text'>🎉 Recipe added successfully!</p>";
        } else {
            echo "<p class='error-text'>❌ Error: " . mysqli_error($conn) . "</p>";
        }
    }
    ?>
<form class="recipe-form" method="POST" action="" onsubmit="return validateForm()">
    <label for="title">Recipe Title:</label>
    <input type="text" name="title" id="title" required>

    <label for="category">Category:</label>
    <select name="category" id="category" required>
        <option value="">-- Select Category --</option>
        <option value="South Indian">South Indian</option>
        <option value="North Indian">North Indian</option>
        <option value="Gym Enthusiast">Gym Enthusiast</option>
        <option value="Maharashtrian">Maharashtrian</option>
    </select>

    <label for="ingredients">Ingredients:</label>
    <textarea name="ingredients" id="ingredients" required></textarea>

    <label for="instructions">Instructions:</label>
    <textarea name="instructions" id="instructions" required></textarea>

    <label for="video_url">YouTube Video URL (optional):</label>
    <input type="url" name="video_url" id="video_url" placeholder="https://www.youtube.com/watch?v=...">

    <button type="submit" class="add-btn">Submit Recipe</button>
</form>

    <a href="index.php" class="back-link">← Back to Home</a>
</div>
</body>

<?php include('includes/footer.php'); ?>
