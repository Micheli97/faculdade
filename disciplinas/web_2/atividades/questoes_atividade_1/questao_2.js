const express = require('express')
const app = express()
const axios = require('axios')

app.get('/cidades/:letra', (req, res) => {
  var param = req.params.letra.toUpperCase()

  axios.get('https://servicodados.ibge.gov.br/api/v1/localidades/municipios/')
    .then((response) => {
      console.log(response.data.filter(function (a) { 
        return a.nome[0].toUpperCase() === param 
      }))
      res.send(response.data.filter(a => a.nome[0] == param).map(cidade => cidade.nome))

    })
})

function filtrarCidade(listCity, param) {
  return listCity.data.map(cidade => cidade.nome) == param

}

app.listen(4000)
