const router = require('express').Router();
const middleware = require('../middlewares');

const {Order} = require('../../db');

router.get('/', middleware.checkToken, middleware.hasRole, async (req, res) => {
    const order = await Order.findAll();
    res.json(order);
});

router.post('/', async (req, res) =>{
    const order = await Order.create(req.body);
    res.json(order);
});

router.put('/:orderId', middleware.checkToken, middleware.hasRole, async (req, res) => {
    await Order.update(req.body, {
        where: { id: req.params.orderId }
    });
    res.json({ success: 'Edición exitosa' })
});

router.delete('/:orderId', middleware.checkToken, middleware.hasRole, async (req, res) => {
    await Order.destroy({
        where: { id: req.params.orderId}
    });
    res.json({ success: 'Orden eliminada'});
});

module.exports = router;