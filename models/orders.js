module.exports = (sequelize, type) => {
    return sequelize.define('order', {
        id: {
            type: type.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false 
        },
        quantity: type.INTEGER,
        product: type.STRING,
        amount: type.INTEGER,
        userId: type.INTEGER,
        payment: type.STRING,
        status: type.STRING
    })
}