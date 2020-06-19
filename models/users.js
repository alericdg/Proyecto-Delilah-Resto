var DataTypes = require('sequelize/lib/data-types');

module.exports = (sequalize, type) => {
    return sequalize.define('user', {
        id: {
            type: type.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        username: type.STRING,
        email: type.STRING,
        password: type.STRING,
        firstname: type.STRING,
        lastname: type.STRING,
        phone_number: type.STRING,
        role: {
            type: DataTypes.STRING,
            defaultValue: "user"
        },

    })
}