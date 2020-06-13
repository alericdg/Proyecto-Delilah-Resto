const router = require('express').Router();

const {Order} = require('../../db');

router.get('/', async (req, res) => {
    console.log(req.usuarioId);
    const orders = await Order.findAll();
    res.json(orders);
});

router.post('/', async (req, res) =>{
    const order = await Order.create(req.body);
    res.json(order);
});

router.put('/:orderId', async (req, res) => {
    await Order.update(req.body, {
        where: { id: req.params.orderId }
    });
    res.json({ success: 'Edición exitosa' })
});

router.delete('/:orderId', async (req, res) => {
    await Order.destroy({
        where: { id: req.params.orderId}
    });
    res.json({ success: 'Orden eliminada'});
});

module.exports = router;