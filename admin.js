function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
  }

// Set the default tab to open on page load
document.getElementById("dashboard").style.display = "block";

// Input
var title = document.getElementById("title");
var releaseYear = document.getElementById("releaseYear");
var genre = document.getElementById("genre");
var director = document.getElementById("director");
var description = document.getElementById("description");
var length = document.getElementById("length");
var rating = document.getElementById("rating");
var choose = document.getElementById("choose");
var uploadImage = document.getElementById("image");

function upload() {
  uploadImage.click();
}
