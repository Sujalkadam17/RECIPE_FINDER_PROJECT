<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recipe Finder</title>
    <link rel="stylesheet" href="assets/css/style-updated.css">
</head>
<body>
<div id="loader" class="loader-overlay">
  <div class="spinner"></div>
</div>

<header>
        <nav>
            <div class="logo">Recipe Finder</div>
            <ul>
                <li><a href="index.php">Home 🏠</a></li>
                <li><a href="search.php">Search 🔎</a></li>
                <li><a href="#add-recipe">Add Recipe ➕</a></li>
                <li><button class="dark-toggle" onclick="toggleDarkMode()">🌙</button></li>
            </ul>
        </nav>
    </header>


    <section class="hero">
        <h1 class="animated-title">Welcome to Recipe Finder 🍽️</h1>
        <p>Choose your favorite category to explore recipes!</p>
    </section>

    <section class="categories">
        <?php
        $categories = ["South Indian", "North Indian", "Gym Enthusiast", "Maharashtrian"];

        $categoryImages = [
            "South Indian" => "assets/images/south-indian.png",
            "North Indian" => "assets/images/north-indian.png",
            "Gym Enthusiast" => "assets/images/gym.png",
            "Maharashtrian" => "assets/images/maharashtrian.png"
        ];

        foreach ($categories as $category) {
            $imagePath = isset($categoryImages[$category]) ? $categoryImages[$category] : "assets/images/default.png";
            echo "<div class='card animate-fade-in'>";
            echo "<img src='$imagePath' alt='Category Icon'>";
            echo "<h3><a href='recipe.php?category=" . urlencode($category) . "'>$category</a></h3>";
            echo "</div>";
        }
        ?>
    </section>


    <section class="custom-add" id="add-recipe">
        <h2>Want to share your own recipe?</h2>
        <a class="add-btn" href="add_recipe.php">Add Your Recipe</a>
    </section>

    <?php include('includes/footer.php'); ?>
    
    <script>

    window.addEventListener("load", () => {
        const loader = document.getElementById("page-loader");
        loader.style.display = "none";
    });

        function toggleDarkMode() {
            document.body.classList.toggle('dark-mode');
        }

window.addEventListener('load', function () {
    document.getElementById('loader').style.display = 'none';
});

    </script>
</body>
</html>
