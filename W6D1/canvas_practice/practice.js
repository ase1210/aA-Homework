document.addEventListener("DOMContentLoaded", function () {
  const canvas = document.getElementById("mycanvas");
  canvas.height = 500;
  canvas.width = 500;

  const ctx = canvas.getContext('2d');
  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 90, false);
  ctx.strokeStyle = '#000000';
  ctx.lineWidth = 1;
  ctx.stroke();
  ctx.fillStyle = 'red';
  ctx.fill();
});