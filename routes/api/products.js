const router = require('express').Router();
const middleware = require('../middlewares');

const {Product} = require('../../db');

router.get('/', async (req, res) => {
    const product = await Product.findAll();
    res.json(product);
});

router.post('/', middleware.checkToken, middleware.hasRole, async (req, res) =>{
    const product = await Product.create(req.body);
    res.json(product);
});

router.put('/:productId', middleware.checkToken, middleware.hasRole, async (req, res) => {
    await Product.update(req.body, {
        where: { id: req.params.productId }
    });
    res.json({ success: 'Producto editado' })
});

router.delete('/:productId', middleware.checkToken, middleware.hasRole, async (req, res) => {
    await Product.destroy({
        where: { id: req.params.productId}
    });
    res.json({ success: 'Producto eliminado'});
});

module.exports = router;