<?php
require('header.php');

// Initialize session
session_start();

// Set API endpoint and search term
$api_url = 'https://api.tvmaze.com/search/shows?q=';
$search_term = isset($_GET['q']) ? $_GET['q'] : '';

// Check if form has been submitted
if (isset($_POST['like'])) {
    // Get liked show ID and rating from form
    $liked_show_id = $_POST['liked_show_id'];
    $liked_show_rating = $_POST['liked_show_rating'];

    // Add liked show and rating to user's profile
    $_SESSION['liked_shows'][$liked_show_id] = $liked_show_rating;
}

// Fetch search results from API
if (!empty($search_term)) {
    $search_url = $api_url . urlencode($search_term);
    $search_results = json_decode(file_get_contents($search_url), true);
}

?>

<html>
<title>Search</title>
<h1>Search</h1>
<p style="text-align:center">This will be the page placeholder for searching up TV shows until this feature is implemented as a function.<br><br><i>Well....I think.......</i></p>

<style>
	.input-group {
		position: relative;
		padding-left: 200px;
		padding-right: 200px;
	}
</style>

<script>
	function HandleSearchResponse(response) {
		try {
			var result = JSON.parse(response);
			result.forEach(smth);
			function smth(show) {
				if (typeof(showList) == "undefined") {
					showList = "";
				}
				showList += ("<a class='post' href='newpage.php?name="+ show[2] +
				"&id="+show[0]+"'>"+show[2]+"</a><br>");
			}
			document.getElementById("searchResponse").innerHTML = showList;
			showList = "";
		} catch(error) {
			document.getElementById("searchResponse").innerHTML = error;
		}
	}

	function showSearch(formSname) {
		var request = new XMLHttpRequest();
		request.open("POST","search.php",true);
		request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		request.send("type=search&sval="+formSname);
		request.onreadystatechange = function() {
			if ((this.readyState == 4)&&(this.status == 200)) {
				HandleSearchResponse(this.responseText);
			}
		}
	}
</script>
<body>
	<form id ='search'>

		<!-- Search Bar and button -->

		<div class="input-group">
			<input type="text" name="q" id="showTS" class="form-control rounded" value="<?= $search_term ?>" placeholder="Search.." aria-label="Search" aria-describedby="search-addon" />
			<button type="submit" class="btn btn-outline-primary">Search</button>
		</div>

		<div style="text-align:center" id ="searchResponse" class="wait">
			waiting
		</div>

		<?php if (!empty($search_results)): ?>
        <h2>Search Results</h2>
        <ul>
            <?php foreach ($search_results as $result): ?>
                <?php $show = $result['show']; ?>
                <li>
                    <h3><?= $show['name'] ?></h3>
                    <?php if (!empty($show['image']['medium'])): ?>
                        <img src="<?= $show['image']['medium'] ?>">
                    <?php endif; ?>
                    <p><?= $show['summary'] ?></p>
                    <form action="" method="post">
                        <input type="hidden" name="liked_show_id" value="<?= $show['id'] ?>">
                        <label for="rating">Rating:</label>
                        <select name="liked_show_rating" id="rating">
                            <option value="1">1 star</option>
                            <option value="2">2 stars</option>
                            <option value="3">3 stars</option>
                            <option value="4">4 stars</option>
                            <option value="5">5 stars</option>
                        </select>
                        <button type="submit" name="like">Like</button>
						<button type="submit" name="dislike">Dislike</button>
                    </form>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>

    <?php if (!empty($_SESSION['liked_shows'])): ?>
        <h2>Liked Shows</h2>
        <ul>
            <?php foreach ($_SESSION['liked_shows'] as $liked_show_id => $liked_show_rating): ?>
                <li><?= $liked_show_id ?> (<?= $liked_show_rating ?> stars)</li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>

	</form>
</body>
</html>
