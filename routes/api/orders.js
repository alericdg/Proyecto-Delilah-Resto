const router = require('express').Router();
const middleware = require('../middlewares');

const {Order, Product} = require('../../db');

router.get('/', middleware.checkToken, middleware.hasRole, async (req, res) => {
    const order = await Order.findAll();
    res.json(order);
});

router.post('/', async (req, res) =>{
    const postProduct = req.body.productId;
    const postOrder = req.body;
    postOrder.userId = req.userId;
    const postOrders = await Order.create(postOrder).then(
        (order) => {
            postProduct.forEach(async element => {
                const prod = await Product.findOne({
                    where:{ id: element }
                })
                prod.addOrder(order);
            });
        }
    )
    res.status(200).json('Orden creada');

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