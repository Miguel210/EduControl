import jwt from 'jsonwebtoken';
import cookieParser from 'cookie-parser'
import config from './config.js';

export const verifyToken = (req, res, next) => {
    const token = req.body.token || req.query.token || req.headers['x-access-token'] || req.cookies['token'];

    if (!token) {
        return res.status(403).send({
            message: "No token provided!"
        });
    }

    jwt.verify(token,
            config.SECRET,
            (err, decoded) => { if (err) {
                return res.status(401).redirect('/')
        }
        req.currentUser = decoded;
        //req.userId = decoded.id;
        next();
    });
}
/*

export const verifyToken = (req, res, next) => {
    const token = req.body.token || req.query.token || req.headers['x-access-token'];

    if(!token) {
        return res.status(405).send( 'Es requerido la autorizacion' )
    }ELSE
    try{
        const decoded = jwt.verify(token, config.SECRET,(err,user)=> {
            if(err){
                res.send('Acceso denegado, token expiro o incorrecto')
            }else{
                next()
            }
        });
    }catch(error){
        return res.status(401).send( 'Token invalido' );
    }
    return next();
}

*/