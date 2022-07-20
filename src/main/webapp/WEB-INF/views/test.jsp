<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>CAFEIN</title>
    <!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


    <style>
    *{
    margin: 0;
    padding: 0;
    color: #f2f5f7;
    font-family: sans-serif;
    letter-spacing: 1px;
    font-weight: 300;
}
body{
    overflow-x: hidden;
    background-color: #222;
}
nav{
  
    width: 100%;
    background-color: #131418;
    box-shadow: 0 3px 20px rgba(0, 0, 0, 0.2);
    /* display: flex; */
    /* position: fixed; */
    z-index: 10;
}
#btn{
    background-color: #131418;
}
/*Styling logo*/
.logo {
    padding: 1vh 1vw;
    text-align: center;
    font-size: 40px;
    margin-bottom: 2%;
}
#logo img{
   height: 100px;
   width: 100px;
}
.logo img {
    height: 5rem;
    width: 5rem;
}

/*Styling Links*/
.nav-links{
    display: flex;
    list-style: none; 
    /* width: 88vw; */
    height: 80px;
    padding: 0 0.7vw;
    justify-content: space-evenly;
    align-items: center;
    text-transform: uppercase;
}
.nav-links li a{
    text-decoration: none;
    margin: 0 0.7vw;
    font-size: 20px;
    color: white;
}
.nav-links li a:hover {
    color: white;
}

.nav-links li {
    position: relative;
    color: white;
    opacity: 1;
}
.nav-links li a::before {
    content: "";
    display: block;
    height: 3px;
    width: 0%;
    background-color: #760c0c;
    position: absolute;
    transition: all ease-in-out 250ms;
    margin: 0 0 0 10%;
}
.nav-links li a:hover::before{
    width: 80%;
    opacity: 1;
}

/*Styling Buttons*/
#login{
    background-color: transparent;
    border: 1.5px solid #f2f5f7;
    border-radius: 2em;
    padding: 0.1rem 0.8rem;
   text-align: right;
    font-size: 15px;
    cursor: pointer;

}
#login:hover {
    color: #131418;
    background-color: #f2f5f7;
    border:1.5px solid #f2f5f7;
    transition: all ease-in-out 350ms;
}
#join{
    background-color: transparent;
    border: 1.5px solid #f2f5f7;
    border-radius: 2em;
    padding: 0.1rem 0.8rem;
    font-size: 1rem;
    cursor: pointer;
}
#join:hover {
     color: #131418;
    background-color: #f2f5f7;
    border:1.5px solid #f2f5f7;
    transition: all ease-in-out 350ms;
}
.fade:not(.show) {
    opacity: 1;
}
/*Styling Hamburger Icon*/
.hamburger div{
    width: 30px;
    height:3px;
    background: #f2f5f7;
    margin: 5px;
    transition: all 0.3s ease;
   
}
.hamburger{
 
    display: none;
}

/*Stying for small screens*/
@media screen and (max-width: 800px){
    nav{
        position: fixed;
        z-index: 3;
        opacity: 1;
        height: 70px;
    }
    .hamburger{
        display:block;
        position: absolute;
        cursor: pointer;
        right: 5%;
        top: 50%;
        transform: translate(-5%, -50%);
        z-index: 2;
        transition: all 0.7s ease;
        opacity: 1;
    }
    .nav-links{
        position: fixed;
        background: #131418;
        color: white;
        height: 100vh;
        width: 100%;
        flex-direction: column;
        clip-path: circle(50px at 90% -20%);
        -webkit-clip-path: circle(50px at 90% -10%);
        transition: all 1s ease-out;
        pointer-events: none;
        opacity: 1;
    }
    .nav-links.open{
        clip-path: circle(1000px at 90% -10%);
        -webkit-clip-path: circle(1000px at 90% -10%);
        pointer-events: all;
        color: white;
        opacity: 1;
    }
    .nav-links li{
        opacity: 1;
    }
    .nav-links li:nth-child(1){
        transition: all 0.5s ease 0.2s;
        opacity: 1;
    }
   .nav-links li:nth-child(2){
        transition: all 0.5s ease 0.4s;
        opacity: 1;
    }
    .nav-links li:nth-child(3){
        transition: all 0.5s ease 0.6s;
        opacity: 1;
    }
    .nav-links li:nth-child(4){
        transition: all 0.5s ease 0.7s;
        opacity: 1;
    }
    .nav-links li:nth-child(5){
        transition: all 0.5s ease 0.8s;
        opacity: 1;
    }
    .nav-links li:nth-child(6){
        transition: all 0.5s ease 0.9s;
        opacity: 1;
        margin: 0;
    }
    .nav-links li:nth-child(7){
        transition: all 0.5s ease 1s;
        opacity: 1;
        margin: 0;
    }
 
    li.fade{
        opacity: 1;
    }
 
}
/*Animating Hamburger Icon on Click*/
.toggle .line1{
    transform: rotate(-45deg) translate(-5px,6px);
}
.toggle .line2{
    transition: all 0.7s ease;
    width:0;
}
.toggle .line3{
    transform: rotate(45deg) translate(-5px,-6px);

}
    </style>
  </head>
  <body>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="nav.css"/>
        <title>Responsive Animated Navbar</title>
    </head>
    <body>
        <div id="btn" style="text-align: right;">
            <button class="button" id="login">Login</button>
                <button class="button" id="join">Join</button>
        </div>
        <nav>
          
            <div class="hamburger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </div>
            <ul class="nav-links" style="color: white;">
                <li id="logo"><img src="/img/logo3.png"></li>
                <li><a  href="#">Home</a></li>
                <li><a href="#">FEED</a></li>
                <li><a href="#">CAFE-IN</a></li>
                <li><a href="#">NOTICE</a></li>
            </ul>

            
        </nav>
        <script src="nav.js"></script>
    </body>
    </html>
    
<script>
  const hamburger = document.querySelector(".hamburger");
const navLinks = document.querySelector(".nav-links");
const links = document.querySelectorAll(".nav-links li");

hamburger.addEventListener('click', ()=>{
   //Animate Links
    navLinks.classList.toggle("open");

    links.forEach(link => {
        link.classList.toggle("fade");
    });
  
    //Hamburger Animation
    hamburger.classList.toggle("toggle");
});
</script>