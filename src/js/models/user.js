const connection = require('../connection');
const Sequilize = require('sequelize');

class User extends Sequilize.Model {}

User.init(
    {
        id: {
            type: Sequilize.INTEGER,
            primaryKey: true
        },
        email: {
            type: Sequilize.STRING(100),
            allowNull: false
        },
        password: {
            type: Sequilize.STRING(100),
            allowNull: false
        },
        name: {
            type: Sequilize.STRING(50),
            allowNull: false
        },
        status: {
            type: Sequilize.STRING(100),
            allowNull: false
        },
    },
    {
        sequelize: connection,
        freezeTableName: true,
        modelName: 'User'
    }
);

module.exports = User
