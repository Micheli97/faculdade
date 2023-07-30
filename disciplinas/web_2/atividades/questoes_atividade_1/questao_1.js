const express = require('express');
const app = express ();

app.get('/numeros-aleatorios', (req, res)=>{
  let numeros = numerosAleatorios()
  res.json({numeros_aleatorios: numeros})
});

function numerosAleatorios() {
    let listaNumeroAleatorios = [];
    for (let index = 0; index < 6; index++) {
        listaNumeroAleatorios.push(parseInt(Math.random() * 60))
    }
    return listaNumeroAleatorios
}

app.listen(4000);