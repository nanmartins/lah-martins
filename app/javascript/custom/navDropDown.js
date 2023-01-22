
const dropdownBtn = document.querySelector(".dropdownButton");
const dropdownMenu = document.querySelector(".dropdownMenu");

dropdownBtn.addEventListener("click", () => {
   dropdownMenu.classList.toggle("dropdownMenuActive");
});
