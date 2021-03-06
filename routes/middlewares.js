const jwt = require('jwt-simple');

const moment = require('moment');

const checkToken = (req, res, next) => {

    if (!req.headers['user-token']) {
        return res.json({ error: 'Es necesario incluir el token'});
    }

    const userToken = req.headers['user-token'];
    let payload = {};

    try {
        payload = jwt.decode(userToken, 'secret code');
    } catch (err) {
        return res.json({ error: 'Token incorrecto'});
    }

    if(payload.expiredAt < moment().unix()) {
        return res.json({ error: 'Token expirado'});
    }

    req.user = payload.userId;
    req.hasRole = payload.hasrole;

    next();
}

const hasRole = (req, res, next) => {

    if (req.hasRole == 'admin') {
        return next();
    } else
    return res.json({ error: 'No eres administrador'});
}

module.exports = {
    checkToken: checkToken,
    hasRole: hasRole,
}