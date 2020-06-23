module.exports = (sequelize, type) => {
    return sequelize.define('product', {
        id: {
            type: type.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false 
        },
        name: type.STRING,
        price: type.STRING,
    })
}