<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Animated Background Login Screen</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
  <style>
    body, html {
      height: 100%;
      background: black;
      position: relative;
      margin: 0;
      padding: 0;
    }

    #login-box {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      min-width: 350px;
      border: 1px solid black;
      background: rgba(48, 46, 45, 1);
      min-height: 250px;
      padding: 20px;
      z-index: 9999;
    }

    #login-box .logo .logo-caption {
      font-family: 'Poiret One', cursive;
      color: white;
      text-align: center;
      margin-bottom: 0px;
    }
#login-box .logo .tweak {
	color: #b1c900;
}
#login-box .controls {
	padding-top: 30px;
}
#login-box .controls input {
	border-radius: 0px;
	background: rgb(98, 96, 96);
	border: 0px;
	color: white;
}
#login-box .controls input:focus {
	box-shadow: none;
}
#login-box .controls input:first-child {
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
}
#login-box .controls input:last-child {
	border-bottom-left-radius: 2px;
	border-bottom-right-radius: 2px;
}
#login-box button.btn-custom {
	border-radius: 2px;
	margin-top: 8px;
	background:#b1c900;
	border-color: rgba(48, 46, 45, 1);
	color: white;
}
#login-box button.btn-custom:hover{
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
	background: rgba(48, 46, 45, 1);
	border-color: #b1c900;
}
#particles-js{
  	width: 100%;
  	height: 100%;
  	background-size: cover;
  	background-position: 50% 50%;
  	position: fixed;
  	top: 0px;
  	z-index:1;
}
.abc{
  padding-top: 50%;
}

.blink {
  animation: blink 1s steps(1, end) infinite;
  color: red;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}


  </style>

</head>
<body>



  <center>
  <form method="post" action="checkadminlogin" >
    <div class="abc">
      <div class="container">
        <div id="login-box">
          <div class="logo">
            <img src="images/icon/profile.png" />
            <h2 class="blink" >${message}</h2>
            <h1 class="logo-caption"><span class="tweak">Admin</span>Login</h1>
          </div><!-- /.logo -->
          <div class="controls">
            <input type="text" name="uname" placeholder="Username" class="form-control" required="required" />
            <input type="password" name="pwd" placeholder="Password" class="form-control" required="required" />
            <button type="submit" class="btn btn-default btn-block btn-custom">Login</button>
          </div>
        </div>
      </div>
    </div>
    </form>
  </center>
<div id="particles-js"></div>
<!-- partial -->
  <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'></script>
<script src='https://code.jquery.com/jquery-1.11.1.min.js'></script><script >
$.getScript("https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js", function(){
    particlesJS('particles-js',
      {
        "particles": {
          "number": {
            "value": 100,
            "density": {
              "enable": true,
              "value_area": 500
            }
          },
          "color": {
            "value": "#b1c900"
          },
          "shape": {
            "type": "circle",
            "stroke": {
              "width": 0,
              "color": "#000000"
            },
            "polygon": {
              "nb_sides": 5
            },
            "image": {
              "width": 100,
              "height": 100
            }
          },
          "opacity": {
            "value": 0.5,
            "random": false,
            "anim": {
              "enable": false,
              "speed": 1,
              "opacity_min": 0.1,
              "sync": false
            }
          },
          "size": {
            "value": 5,
            "random": true,
            "anim": {
              "enable": false,
              "speed": 40,
              "size_min": 0.1,
              "sync": false
            }
          },
          "line_linked": {
            "enable": true,
            "distance": 150,
            "color": "#ffffff",
            "opacity": 0.4,
            "width": 1
          },
          "move": {
            "enable": true,
            "speed": 6,
            "direction": "none",
            "random": false,
            "straight": false,
            "out_mode": "out",
            "attract": {
              "enable": false,
              "rotateX": 600,
              "rotateY": 1200
            }
          }
        },
        "interactivity": {
          "detect_on": "canvas",
          "events": {
            "onhover": {
              "enable": true,
              "mode": "repulse"
            },
            "onclick": {
              "enable": true,
              "mode": "push"
            },
            "resize": true
          },
          "modes": {
            "grab": {
              "distance": 400,
              "line_linked": {
                "opacity": 1
              }
            },
            "bubble": {
              "distance": 400,
              "size": 40,
              "duration": 2,
              "opacity": 8,
              "speed": 3
            },
            "repulse": {
              "distance": 100
            },
            "push": {
              "particles_nb": 4
            },
            "remove": {
              "particles_nb": 2
            }
          }
        },
        "retina_detect": true,
        "config_demo": {
          "hide_card": false,
          "background_color": "#b61924",
          "background_image": "",
          "background_position": "50% 50%",
          "background_repeat": "no-repeat",
          "background_size": "cover"
        }
      }
    );

});

</script>

</body>
</html>
