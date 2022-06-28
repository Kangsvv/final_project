<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://rawgit.com/LeshikJanz/libraries/master/Bootstrap/baguetteBox.min.css">
  	
    <title>FeedMain</title>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>
    	body {
    		
		    background-color: black;
		    min-height: 100vh;
		    font: normal 16px sans-serif;
		    padding: 40px 0;
		}
		
		.container.gallery-container {
		    background-color: black;
		    color: white;
		    min-height: 100vh;
		    padding: 30px 50px;
		}
		
		.gallery-container h1 {
		    text-align: center;
		    margin-top: 50px;
		    font-family: 'Droid Sans', sans-serif;
		    font-weight: bold;
		}
		
		.gallery-container p.page-description {
		    text-align: center;
		    margin: 25px auto;
		    font-size: 18px;
		    color: #999;
		}
		
		.tz-gallery {
		    padding: 40px;
		}
		
		/* Override bootstrap column paddings */
		.tz-gallery .row > div {
		    padding: 2px;
		}
		
		.tz-gallery .lightbox img {
		    width: 100%;
		    border-radius: 0;
		    position: relative;
		}
		
		.tz-gallery .lightbox:before {
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    margin-top: -13px;
		    margin-left: -13px;
		    opacity: 0;
		    color: #fff;
		    font-size: 26px;
		    font-family: 'Glyphicons Halflings';
		    content: '\e003'; /* 돋보기 */
		    pointer-events: none;
		    z-index: 9000;
		    transition: 0.4s;
		}
		
		
		.tz-gallery .lightbox:after {
		    position: absolute;
		    top: 0;
		    left: 0;
		    width: 100%;
		    height: 100%;
		    opacity: 0;
		    background-color: rgba(0, 0, 0, 0.3);
		    content: '';
		    transition: 0.4s;
		}
		
		.tz-gallery .lightbox:hover:after,
		.tz-gallery .lightbox:hover:before {
		    opacity: 1;
		}
		
		.baguetteBox-button {
		    background-color: transparent !important;
		}
		
		@media(max-width: 768px) {
		    body {
		        padding: 0;
		    }
		}
    </style>
</head>
<body>

<div class="container gallery-container">

    <h1>Feed Main</h1>

    <p class="page-description text-center">다양한 카페를 만나보세요</p>
    
    <div class="tz-gallery">

        <div class="row">

            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/bridge.jpg">
                    <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/bridge.jpg" alt="Bridge">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/park.jpg">
                    <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/park.jpg" alt="Park">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/tunnel.jpg">
                    <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/tunnel.jpg" alt="Tunnel">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/traffic.jpg">
                    <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/traffic.jpg" alt="Traffic">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/rails.jpg">
                    <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/rails.jpg" alt="Coast">
                </a>
            </div> 
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/coast.jpg">
                    <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/coast.jpg" alt="Rails">
                </a>
            </div>

        </div>

    </div>
	
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>
</body>
</html>