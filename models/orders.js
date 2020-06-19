module.exports = (sequelize, type) => {
    return sequelize.define('order', {
        id: {
            type: type.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false 
        },
        quantity: {
            type: type.INTEGER,
            allowNull :false,
            defaultValue: '1',
        },
        product: type.STRING,
        amount: type.INTEGER
    })
}