module.exports = (sequelize, type) => {
    return sequelize.define('order', {
        id: {
            type: type.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false 
        },
        product: type.STRING,
        quantity: type.INTEGER,
        amount: type.INTEGER
    })
}