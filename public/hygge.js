document.addEventListener("DOMContentLoaded", function(event){

var video = document.querySelector("video");
var modal = document.querySelector("#modal");
var close = document.querySelector("#nobutt");
var submit = document.querySelector("#butt");

modal.style.display = "none";

setTimeout(delay, 3000);

function delay() {
  modal.style.display = "block";
}

console.log(close)
close.addEventListener("click", function(event) {
  modal.style.display = "none";
})

console.log(submit)
submit.addEventListener("click", function(event) {
  modal.style.display = "none";
})

document.getElementById("video").controls = false

})
