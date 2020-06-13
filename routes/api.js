const router = require('express').Router();

const middlewares = require('./middlewares');
const apiOrdersRouter = require('./api/orders');
const apiUsersRouter = require('./api/users');


router.use('/orders', middlewares.checkToken, apiOrdersRouter);
router.use('/users', apiUsersRouter);

module.exports = router;