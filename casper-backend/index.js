// dotenv functionalities
const dotenv = require('dotenv')
dotenv.config({ patch: './.env'})

const bodyParser = require('body-parser')
const cors = require('cors')

const express = require('express')
const app = express()
const port = 3000

//***************************************** */
// set up the cors
//***************************************** */
var corsOptions = {
    origin: '*'
  }
  
  app.use(cors(corsOptions))
  // parse requests of content-type - application/json
  app.use(bodyParser.json())
  // parse requests of content-type - application/x-www-form-urlencoded
  app.use(bodyParser.urlencoded({ extended: true }))

// simple route after start
app.get('/', (req, res) => {
    res.send('Casper API')
  })

//*************************************** */
// Routes
//*************************************** */
require('./routes/casper/casper.routes')(app);

// the app is running on port 3000
app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })