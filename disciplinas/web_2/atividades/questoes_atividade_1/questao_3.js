const express = require('express')
const app = express()
const axios = require('axios')
const PDFKit = require('pdfkit')
const fs = require('fs')

app.get('/cidades/:uf', (req, res) => {
  const pdf = new PDFKit()
  pdf.text("Lista de cidade por UF")
  var uf = req.params.uf.toUpperCase()

    axios.get(`https://servicodados.ibge.gov.br/api/v1/localidades/estados/${uf}/municipios`)
        .then( (response) => {
            
          pdf.text(response.data.map(cidade => "\n"+cidade.nome))
          pdf.end()     
        })   

    pdf.pipe(fs.createWriteStream('lista_cidades_por_uf.pdf').on('finish', () => {
      res.download('./lista_cidades_por_uf.pdf')
    }))
})

app.listen(4000)