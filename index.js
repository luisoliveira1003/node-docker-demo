// index.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Olá, mundo! Este é um servidor Dockerizado.');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
