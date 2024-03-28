const arrows = document.querySelectorAll(".arrow, .searched-arrow");
const movieLists = document.querySelectorAll(".movie-list, .searched-movie-list");

arrows.forEach((arrow, i) => {
  const itemNumber = movieLists[i].querySelectorAll("img").length;
  let clickCounter = 0;
  arrow.addEventListener("click", () => {
    const ratio = Math.floor(window.innerWidth / 270);
    clickCounter++;
    if (itemNumber - (4 + clickCounter) + (4 - ratio) >= 0) {
      movieLists[i].style.transform = `translateX(${
        movieLists[i].computedStyleMap().get("transform")[0].x.value - 300
      }px)`;
    } else {
      movieLists[i].style.transform = "translateX(0)";
      clickCounter = 0;
    }
  });

  console.log(Math.floor(window.innerWidth / 270));
});

/*
// Get the genre menu and the corresponding submenu
const genreMenu = document.querySelector('.nav-links li a[href=""]');
const genreSubMenu = document.querySelector('.sub-menu-1');

// Show/hide the submenu on hover
genreMenu.addEventListener('mouseover', () => {
  genreSubMenu.style.display = 'block';
});

genreMenu.addEventListener('mouseout', () => {
  genreSubMenu.style.display = 'none';
});

// Show the submenu on click and prevent default behavior
genreMenu.addEventListener('click', (e) => {
  e.preventDefault();
  genreSubMenu.style.display = 'block';
});

// Hide the submenu when clicking outside the menu
document.addEventListener('click', (e) => {
  if (!genreMenu.contains(e.target) && !genreSubMenu.contains(e.target)) {
    genreSubMenu.style.display = 'none';
  }
});
*/