module.exports = (sequelize, type) => {
    return sequelize.define('product', {
        product_id: {
            type: type.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false 
        },
        product_name: type.STRING,
        product_price: type.STRING,
    })
}