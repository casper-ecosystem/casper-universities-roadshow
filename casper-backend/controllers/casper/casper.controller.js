//******************************************** */
// import the standard casper libraries
//******************************************** */
const { 
    Keys, CLPublicKey 
} = require('casper-js-sdk')

//******************************************* */
// import the casper service 
//******************************************* */
const service = require('../../services/casper.service')

exports.getKeys = async (req,res) => {

    const account = service.createAccountKeys();

    res.status(200).send({ account });
}

exports.getQueryMessage = async (req,res) => {
    res.status(200).send({a});
}
