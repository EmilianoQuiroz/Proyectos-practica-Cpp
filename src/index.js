//Ejemplo de uso de Express Js
/*Express es un entorno de trabajo para aplicaciones web para el programario Node.js, de código abierto y con licencia MIT. Se utiliza para desarrollar aplicaciones web y APIs */

//Importamos express
import express from 'express'

const app = express()

app.get('/', (req, res)=>{
    res.send('<h1>Bienvenido</h1>')
})
app.get('/about', (req, res)=>{
    res.send('<h1>About</h1>')
})

app.listen(3000)
console.log('server on port', 3000)