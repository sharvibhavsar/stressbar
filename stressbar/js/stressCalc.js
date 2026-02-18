document.addEventListener("DOMContentLoaded", function () {

  const form = document.getElementById("stressForm");

  if (!form) return;

  form.addEventListener("submit", function () {

    let score = 0;

    // radio questions q1–q6
    for (let i = 1; i <= 6; i++) {
      const selected = document.querySelector(`input[name="q${i}"]:checked`);
      if (selected) {
        score += parseInt(selected.value);
      }
    }

    // determine stress level
    let level = "Low";

    if (score <= 6) {
      level = "Low";
    } else if (score <= 12) {
      level = "Medium";
    } else {
      level = "High";
    }

    // create hidden inputs to send to PHP
    let scoreInput = document.createElement("input");
    scoreInput.type = "hidden";
    scoreInput.name = "score";
    scoreInput.value = score;
    form.appendChild(scoreInput);

    let levelInput = document.createElement("input");
    levelInput.type = "hidden";
    levelInput.name = "stress_level";
    levelInput.value = level;
    form.appendChild(levelInput);

  });

});
