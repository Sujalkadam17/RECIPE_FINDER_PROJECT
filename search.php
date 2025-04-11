<?php
include('includes/db.php');
include('includes/header.php');

$searchTerm = isset($_GET['search']) ? trim($_GET['search']) : '';
$recipes = [];

if ($searchTerm !== '') {
    $stmt = $conn->prepare("SELECT * FROM recipes WHERE title LIKE ? OR ingredients LIKE ? OR category LIKE ? ORDER BY id DESC");
    $searchLike = "%" . $searchTerm . "%";
    $stmt->bind_param("sss", $searchLike, $searchLike, $searchLike);
    $stmt->execute();
    $result = $stmt->get_result();
    $recipes = $result->fetch_all(MYSQLI_ASSOC);
} else {
    $result = $conn->query("SELECT * FROM recipes ORDER BY RAND() LIMIT 4");
    if ($result) {
        $recipes = $result->fetch_all(MYSQLI_ASSOC);
    }
}
?>

<section class="search-container">
    <form method="GET" action="search.php" class="search-form">
        <input type="text" name="search" placeholder="Search recipes..." 
               value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search']) : ''; ?>">
        <button type="submit">Search</button>
    </form>

    <section class="search-results">
        <?php if ($searchTerm !== ''): ?>
            <h2 class="section-heading">🔍 Search Results for "<?= htmlspecialchars($searchTerm) ?>"</h2>
        <?php else: ?>
            <h2 class="section-heading">✨ Recommended Recipes</h2>
        <?php endif; ?>

        <?php if (!empty($recipes)): ?>
            <div class="recipe-grid">
                <?php foreach ($recipes as $recipe): ?>
                    <div class="recipe-card">
                        <h3><a href="recipe.php?id=<?= $recipe['id'] ?>"><?= htmlspecialchars($recipe['title']) ?></a></h3>
                        <p class="recipe-snippet"><?= substr(htmlspecialchars($recipe['ingredients']), 0, 80) ?>...</p>
                        <p class="recipe-category"><strong>Category:</strong> <?= htmlspecialchars($recipe['category']) ?></p>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else: ?>
            <p class="error-text">No recipes found matching your search.</p>
        <?php endif; ?>
    </section>
</section>

<?php include('includes/footer.php'); ?>
