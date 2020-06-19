const router = require('express').Router();

const middlewares = require('./middlewares');
const apiOrdersRouter = require('./api/orders');
const apiUsersRouter = require('./api/users');
const apiProductsRouter = require('./api/products');


router.use('/orders', middlewares.checkToken, apiOrdersRouter);
router.use('/users', apiUsersRouter);
router.use('/products', middlewares.checkToken, apiProductsRouter);

module.exports = router;