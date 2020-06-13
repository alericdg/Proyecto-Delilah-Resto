const express = require ('express');
const bodyParcer = require ('body-parser');

const apiRouter = require('./routes/api');

const app = express();

require('./db');

app.use(bodyParcer.urlencoded({extended: true}));
app.use(bodyParcer.json());

app.use('/api', apiRouter);

app.listen(3000, () => {
    console.log('Servidor iniciado');
});