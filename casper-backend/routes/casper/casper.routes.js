// get the controller functions for Casper
const controller =  require('../../controllers/casper/casper.controller.js');

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header(
            'Access-Control-Allow-Headers',
            'x-access-token, Origin, Content-Type, Accept'
        );
        next();
    })

    //*************************************** */
    // Get the keys with mnemonics
    //*************************************** */
    app.get(
        '/api/casper/getKeys',
        controller.getKeys
    )
}