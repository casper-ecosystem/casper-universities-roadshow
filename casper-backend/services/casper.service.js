//******************************************** */
// import the bip39 for the mnemonic phrases
//******************************************** */
const bip39 = require('bip39')

//******************************************** */
// import of the HDKey for the bip32 derivation
//******************************************** */
const { HDKey } = require('ethereum-cryptography/hdkey')

//******************************************** */
// import the standard casper libraries
//******************************************** */
const { 
    Keys, CLPublicKey 
} = require('casper-js-sdk')

const fs = require("fs");
const path = require("path");

const createAccountKeys = () => {

        // generating keys
        const edKeyPair = Keys.Ed25519.new();
        const {publicKey, privateKey} = edKeyPair;

        // create the hexadecimal representation of the public key
        const accountAddress = publicKey.toHex();

        // Get the account hash Uint8Array from the public key
        const accounHash = publicKey.toAccountHash();

       // Store Keys as pem Files
       const publicKeyInPem = edKeyPair.exportPublicKeyInPem();
       const privateKeyInPem = edKeyPair.exportPrivateKeyInPem(); 
       
       const folder = path.join("./","casper_keys");
       console.log(folder);
   
       if (!fs.existsSync(folder)) {
           const tempDir = fs.mkdirSync(folder);
       }

    fs.writeFileSync(folder + "/" + accountAddress + "_public.pem", publicKeyInPem);
    fs.writeFileSync(folder + "/" + accountAddress + "_private.pem", privateKeyInPem); 

    return accountAddress;
}

// mnemonic for the test
var mnemonic = "useful gold corn wild sor ... "
// derivation string
var derivationString = "m/44'/506'/0'/0/0" 

const calculateKeyPair = (
    mnemonic,
    derivationString
) => {  
        // set mnemonic 
        var mnemonic_int = ""

        // get the hex representation of the mnemonic
        const mnemonicHex = bip39.mnemonicToSeedSync(mnemonic_int).toString('hex');
        console.log(mnemonicHex)
    
        // get the Uint Array representation of the mnemonic
        const mnemonicUint = bip39.mnemonicToSeedSync(mnemonic);
        console.log(mnemonicUint)
    
        // get the key from master seed
        const hdkey = HDKey.fromMasterSeed(mnemonicUint);
        console.log('the HDKey from the mnemonic phrase is:');
        console.log(hdkey)
    
        // the private and public keys from the hdkey
        console.log(hdkey.privateKey);
        console.log(hdkey.publicKey);
    
        // deruve the secpKeyPair for the hdkeypair
        const secpKeyPair = hdkey.derive(derivationString);
        console.log("The derivation hashes")
        console.log(secpKeyPair)

        // return the keypair
        return secpKeyPair
}

module.exports = {
    createAccountKeys
}