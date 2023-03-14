
// const dropdownBtn = document.querySelector(".dropdownButton");
// const dropdownMenu = document.querySelector(".dropdownMenu");

// dropdownBtn.addEventListener("click", () => {
//   dropdownMenu.classList.toggle("dropdownMenuActive");
//   dropdownBtn.classList.toggle("plus-btn-rotate");
// });


const dropdownBtn = document.querySelector(".dropdownButton");
const dropdownMenu = document.querySelector(".dropdownMenu");

if (dropdownBtn !== null) {
  dropdownBtn.addEventListener("click", () => {
    dropdownMenu.classList.toggle("dropdownMenuActive");
    dropdownBtn.classList.toggle("plus-btn-rotate");
  });
}
