<?php
require_once("twitteroauth/twitteroauth/twitteroauth.php"); //Path to twitteroauth library

$twitteruser = "antonradev";
$notweets = 8;
$consumerkey = "oDV01afvbJSKUY2FcG4DsLsuu";
$consumersecret = "TrDF3EW6NOAhk54kIf8zjQuJaIPzRghnVFr27fJFHEbsBELj56";
$accesstoken = "106502542-oyq0wzPPN2U5wvvEebXAFp6XQuGX4i6FpXwYb70v";
$accesstokensecret = "9uiPueLm5ixTkAfkqTBUhqAvPwvABQL4l0vLkuEZHC060";

function getConnectionWithAccessToken($cons_key, $cons_secret, $oauth_token, $oauth_token_secret) {
	$connection = new TwitterOAuth($cons_key, $cons_secret, $oauth_token, $oauth_token_secret);
	return $connection;
}

$connection = getConnectionWithAccessToken($consumerkey, $consumersecret, $accesstoken, $accesstokensecret);

$tweets = $connection->get("https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=" . $twitteruser . "&count=" . $notweets);


echo json_encode($tweets);
?>