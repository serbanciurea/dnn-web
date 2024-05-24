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
