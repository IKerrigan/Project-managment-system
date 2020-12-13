const connection = require('../connection');
const Sequilize = require('sequelize');

class Project extends Sequilize.Model {}

Project.init(
    {
        name: {
            type: Sequilize.STRING(500),
            allowNull: false
        },
        description: {
            type: Sequilize.STRING(1000),
            allowNull: true
        }
    },
    {
        sequelize: connection,
        freezeTableName: true,
        modelName: 'Project'
    }
);

module.exports = Project
