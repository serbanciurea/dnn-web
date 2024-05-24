// Main application code
document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.read-more-link').forEach(function(link) {
    link.addEventListener('click', function(event) {
      event.preventDefault();
      const parentP = event.target.closest('p');
      const shortText = parentP.querySelector('.short-text');
      const fullText = parentP.querySelector('.full-text');

      if (fullText.style.display === 'none') {
        fullText.style.display = 'inline';
        shortText.style.display = 'none';
        event.target.textContent = 'Read less';
      } else {
        fullText.style.display = 'none';
        shortText.style.display = 'inline';
        event.target.textContent = 'Read more';
      }
    });
  });
});
