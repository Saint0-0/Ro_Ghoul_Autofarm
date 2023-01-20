# Exulus
## Ro Ghoul Autofarm

<p align="center">
  <img src="https://cdn.discordapp.com/attachments/1051808795355005029/1062049790961131530/image.png">
</p>

<html>
  <head>
  </head>
  <body>
    <div class="box" align>
      <span></span>
      <div class="content">
        <h2>Hover me!</h2>
      </div>
    </div>
  </body>
  <style>
    .box {
    position: relative;
    width: 220px;
    height: 300px;
    display: flex;
    justify-content: center;
    align-items: center;
    transition: 0.5s;
    z-index: 1;
    margin: auto;
   }
   
   .box::before {
    content: ' ';
    position: absolute;
    top: 0;
    left: 50px;
    width: 50%;
    height: 100%;
    text-decoration: none;
    background: #fff;
    border-radius: 8px;
    transform: skewX(15deg);
    transition: 0.5s;
   }
   
   .box::after {
    content: '';
    position: absolute;
    top: 0;
    left: 50;
    width: 50%;
    height: 100%;
    background: #fff;
    border-radius: 8px;
    transform: skewX(15deg);
    transition: 0.5s;
    filter: blur(30px);
   }
   
   .box:hover:before,
   .box:hover:after {
    transform: skewX(0deg) scaleX(1.3);
   }
   
   .box:before,
   .box:after {
    background: linear-gradient(315deg, #ffbc00, #ff0058)
   }
   
   .box span {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 5;
    pointer-events: none;
   }
   
   .box span::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 0;
    border-radius: 8px;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    opacity: 0;
    transition: 0.1s;
    animation: animate 2s ease-in-out infinite;
    box-shadow: 0 5px 15px rgba(0,0,0,0.08)
   }
   
   .box span::before {
    top: -40px;
    left: 40px;
    width: 50px;
    height: 50px;
    opacity: 1;
   }
   
   .box span::after {
    content: '';
    position: absolute;
    bottom: 0;
    right: 0;
    width: 100%;
    height: 100%;
    border-radius: 8px;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    opacity: 0;
    transition: 0.5s;
    box-shadow: 0 5px 15px rgba(0,0,0,0.08);
    animation-delay: -1s;
   }
   
   .box span:after {
    bottom: -40px;
    right: 40px;
    width: 50px;
    height: 50px;
    opacity: 1;
   }
   
   .box .content {
    position: relative;
    width: 190px;
    height: 254px;
    padding: 20px 40px;
    background: rgba(255, 255, 255, 0.05);
    backdrop-filter: blur(10px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    z-index: 1;
    transform: 0.5s;
    color: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
   }
   
   .box .content h2 {
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    font-size: 20px;
    color: #fff;
    margin-bottom: 10px;
   }
  </style>
</html>
