
const dropdownBtn = document.querySelector(".dropdownButton");
const dropdownMenu = document.querySelector(".dropdownMenu");
const arrow = document.querySelector(".bi-arrow-down");

dropdownBtn.addEventListener("click", () => {
  dropdownMenu.classList.toggle("dropdownMenuActive");
  arrow.classList.toggle("bi-arrow-up");
});
