<?php include('includes/db.php'); ?>
<?php include('includes/header.php'); ?>
<body class="recipe-body">
    
<div class="container animate-fade-in">

<?php
// For single recipe view
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];
    $sql ="SELECT id, title, ingredients, instructions, video_url FROM recipes WHERE id = $id";

    $result = mysqli_query($conn, $sql);

    if ($result && mysqli_num_rows($result) > 0) {
        $recipe = mysqli_fetch_assoc($result);
        ?>
        <h1 class="recipe-title"><?= htmlspecialchars($recipe['title']) ?></h1>


        <?php
        // Function to convert YouTube URL to embed URL
function convertToEmbedUrl($url) {
    if (strpos($url, 'watch?v=') !== false) {
        return preg_replace("/watch\?v=([a-zA-Z0-9_-]+)/", "embed/$1", $url);
    }
    return $url;
}
$videoEmbedUrl = convertToEmbedUrl($recipe['video_url']);
?>

        <?php if (!empty($recipe['video_url'])): ?>
    <div class="section">
        <h2 class="section-heading">🎥 Video Tutorial</h2>
        <div class="video-container">
        <iframe width="100%" height="315" src="<?= htmlspecialchars($videoEmbedUrl) ?>"
        frameborder="0" allowfullscreen></iframe>

        </div>
    </div>
<?php endif; ?>


        <div class="section">
            <h2 class="section-heading">📝 Ingredients</h2>
            <p class="recipe-text"><?= nl2br(htmlspecialchars($recipe['ingredients'])) ?></p>
        </div>

        <div class="section">
            <h2 class="section-heading">👨‍🍳 Instructions</h2>
            <p class="recipe-text"><?= nl2br(htmlspecialchars($recipe['instructions'])) ?></p>
        </div>

        <a href="index.php" class="back-link">← Back to Home</a>

        <?php
    } else {
        echo "<p class='error-text'>Recipe not found.</p>";
    }

// For category-based list
} elseif (isset($_GET['category'])) {
    $category = mysqli_real_escape_string($conn, $_GET['category']);
    $sql = "SELECT * FROM recipes WHERE category = '$category'";
    $result = mysqli_query($conn, $sql);

    echo "<h2 class='section-heading'>🍽️ Recipes in " . htmlspecialchars($category) . "</h2>";

    if ($result && mysqli_num_rows($result) > 0) {
        $shownRecipes = [];
        while ($recipe = mysqli_fetch_assoc($result)) {
            if (in_array($recipe['title'], $shownRecipes)) continue;
            $shownRecipes[] = $recipe['title'];
            ?>
            <div class="recipe-listing animate-slide-in">
                <h3><a href="recipe.php?id=<?= $recipe['id'] ?>"><?= htmlspecialchars($recipe['title']) ?></a></h3>
                <p class="recipe-snippet"><?= substr(htmlspecialchars($recipe['ingredients']), 0, 80) ?>...</p>
            </div>
            <?php
        }
    } else {
        echo "<p class='error-text'>No recipes found in this category.</p>";
    }

    echo "<a href='index.php' class='back-link'>← Back to Home</a>";

} else {
    echo "<p class='error-text'>Invalid request. Please select a recipe or category.</p>";
}
?>
</div>

</body>
<?php include('includes/footer.php'); ?>
