const router = require('express').Router();
const apiOrdersRouter = require('./api/orders');
const apiUsersRouter = require('./api/users');
const apiProductsRouter = require('./api/products');


router.use('/orders', apiOrdersRouter);
router.use('/users', apiUsersRouter);
router.use('/products', apiProductsRouter);

module.exports = router;