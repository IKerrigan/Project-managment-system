const models = require('./models');

const userMapper = (user) => {
    console.log(user.email + ' | ' + user.password + ' | ' + user.name + ' | ' + user.status);
};

const projectMapper = (project) => {
    console.log('#' + project.id + ' | ' + project.login);
};


(async () => {
    console.log('Projects info List');
    const Plist = (await models.Project.findAll());
    Plist.map(projectMapper);
    console.log('Users info list');
    const usersL = await models.User.findAll();
    usersL.map(userMapper);
    console.log('project to  User');
    const project = await models.project.findAll({
        include: [{
            model: models.User,
            through: {
                attributes: ['role_name']
            }
        }]
    });
    project.map(project => {
        console.log('#' + project.id + ' | ' + project.name);
        project.users.map(user => {
            console.log(user.name + ' | ' + user.email + ' | ' + user.project_user.dataValues.role_name);
        });
    })
})();
