var video = document.getElementById("video");

document.getElementById("video").controls = false

var modal = document.getElementById("modal")
modal.style.display = "none";

setTimeout(delay, 3000);

function delay() {
  modal.style.display = "block";
}

var close = document.getElementById("nobutt")
console.log(close)
close.addEventListener("click", function(event) {
  modal.style.display = "none";
})

var submit = document.getElementById("butt")
console.log(submit)
submit.addEventListener("click", function(event) {
  modal.style.display = "none";
})
