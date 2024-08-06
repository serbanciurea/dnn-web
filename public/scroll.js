const observer = new IntersectionObserver((entries) => {
  entries.forEach((entry) => {
    console.log(entry);
    if (entry.isIntersecting) {
      entry.target.classList.add("show");
    } else {
      entry.target.classList.remove("show");
    }
  })
})


const hiddenElements = document.querySelectorAll(".hidden");
hiddenElements.forEach((el) => observer.observe(el));

// blob animation

const blob = document.getElementById("blob");

document.body.onpointermove = event => {
  const { clientX, clientY } = event;

  // blob.style.left = `${clientX}px`;
  // blob.style.top = `${clientY}px`;
  blob.animate ({
    left: `${clientX}px`,
      top: `${clientY + window.scrollY}px`
  }, { duration: 1000, fill: "forwards" });

}

// 3D image gallery from portofolio, home page

let prev = document.querySelector(".btn-prev");
let next = document.querySelector(".btn-next");
let box = document.querySelector(".box");

let degrees = 0;

prev.addEventListener('click', function() {
  degrees += 45;
  box.style = `transform: perspective(1000px) rotateY(${degrees}deg);`;
})

next.addEventListener('click', function() {
  degrees -= 45;
  box.style = `transform: perspective(1000px) rotateY(${degrees}deg);`;
})

// logout button from navbar is the biggest mistery

document.addEventListener('DOMContentLoaded', (event) => {
  const logoutButton = document.querySelector('.logout');
  if (logoutButton) {
    logoutButton.addEventListener('mouseover', () => {
      logoutButton.style.color = 'var(--orange)';
    });
    logoutButton.addEventListener('mouseout', () => {
      logoutButton.style.color = 'var(--grey)';
    });
  }
});


// next / prev buttons for testimonials section

const slidesContainer = document.getElementById("slides-container");
const slide = document.querySelector(".slide");
const prevButton = document.getElementById("slide-arrow-prev");
const nextButton = document.getElementById("slide-arrow-next");

nextButton.addEventListener("click", (event) => {
  const slideWidth = slide.clientWidth;
    slidesContainer.scrollLeft += slideWidth;
});

prevButton.addEventListener("click", () => {
  const slideWidth = slide.clientWidth;
  slidesContainer.scrollLeft -= slideWidth;
});
