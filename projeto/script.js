let currentIndex = 0;
const slides = document.querySelectorAll(".carousel-slide img");
const totalSlides = slides.length;

function moveSlide(direction) {
  // Atualiza o índice atual (com ciclo para voltar ao início/final)
  currentIndex = (currentIndex + direction + totalSlides) % totalSlides;
  // Calcula a largura de uma imagem
  const slideWidth = slides[0].clientWidth;
  // Move a faixa de imagens de acordo com o índice atual
  document.getElementById('carousel-slide').style.transform = `translateX(${-slideWidth * currentIndex}px)`;
}