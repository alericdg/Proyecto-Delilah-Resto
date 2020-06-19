const Sequelize = require('sequelize');

const OrderModel = require('./models/orders');
const UserModel = require('./models/users');
const ProductModel = require('./models/products');

const sequelize = new Sequelize('C7er2ONqwh', 'C7er2ONqwh', '1J7E4Nz48G', {
    host: 'remotemysql.com', 
    dialect: 'mysql',
});

const Order = OrderModel(sequelize, Sequelize);
const User = UserModel(sequelize, Sequelize);
const Product = ProductModel(sequelize, Sequelize);

sequelize.sync({force: false})
    .then(() => {
        console.log('Tablas sincronizadas correctamente')
    })

/* Usuario.hasMany(Pedido);
Plato.hasMany(Pedido); */

module.exports = {
    Order,
    User,
    Product
}