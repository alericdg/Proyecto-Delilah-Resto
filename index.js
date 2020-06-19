const express = require ('express');
const bodyParser = require ('body-parser');

const apiRouter = require('./routes/api');

const app = express();

require('./db');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/api', apiRouter);

app.listen(3000, () => {
    console.log('Servidor iniciado');
});