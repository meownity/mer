<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial_scale=1.0">
  <title>Inactivity Monitor</title>
  <style>

    #oneGif, #threeGif, #fourGif {
      cursor: pointer;
      display: none;
      margin: auto;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    #twoGif {
        cursor: pointer;
        display: none;
        margin: auto;
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-42%, -66%);
    }

    #oneGif {
      display: block;
    }

    .container {
      width: 1000px;
      height: 600px;
    }
  </style>
</head>
<body>
    <div id="container">
        <img id="oneGif" src="https://i.pinimg.com/originals/4d/99/48/4d99482d55497209e950a702c1a6610c.gif" alt="GIF" />
        <img id="twoGif" src="https://i.pinimg.com/originals/34/e2/3e/34e23edb9c3dfc444158821285aace24.gif" alt="GIF" />
        <img id="threeGif" src="https://i.pinimg.com/originals/70/e0/95/70e0952acded3db0418a390cf1fc57a0.gif" alt="GIF" />
        <img id="fourGif" src="https://i.pinimg.com/originals/06/e0/0d/06e00dec7aa08872c45cb221b49a80b9.gif" alt="GIF" />
    </div>

  <script>
const oneGif = document.getElementById('oneGif');
const twoGif = document.getElementById('twoGif');
const threeGif = document.getElementById('threeGif');
const fourGif = document.getElementById('fourGif');

const gifDuration = 3500;

document.addEventListener('click', (event) => {
  if (event.target == oneGif || event.target == twoGif) {
    clearTimeout(timer);
    startTimer();
  }

  if (event.target == oneGif) {
    twoGif.style.display = 'block';
    oneGif.style.display = 'none';
  } else if (event.target == twoGif) {
    oneGif.style.display = 'block';
    twoGif.style.display = 'none';
  } else if (event.target == fourGif) {
    oneGif.style.display = 'none';
    twoGif.style.display = 'block';
    threeGif.style.display = 'none';
    fourGif.style.display = 'none';
  }
});

function startTimer() {
  timer = setTimeout(() => {
    if (!threeGif.style.display) {
      // Hide the currently displayed GIFs
      oneGif.style.display = 'none';
      twoGif.style.display = 'none';
      threeGif.style.display = 'block';
      timer = setTimeout (() =>{
        fourGif.style.display = 'block';
      }, 3000)
    }
  }, 6800); // Set timer to switch GIFs
}

startTimer();

</script>
</body>
</html>
