---
layout: doc
title: Source Code
---

# Source Code

<div id="code-container" style="white-space: pre-wrap; background-color: #f5f5f5; padding: 1em; border-radius: 8px;"></div>

<script>
  fetch('https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua')
    .then(response => response.text())
    .then(data => {
      document.getElementById('code-container').textContent = data;
    })
    .catch(error => {
      document.getElementById('code-container').textContent = 'Failed to load content.';
    });
</script>