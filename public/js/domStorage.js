window.marketplaceStorage = [];

function setValueInDomStorage(key, value) {
    window.marketplaceStorage[key] = value;
}

function putInDomStorageArray(arrayName, value) {
    if (window.marketplaceStorage[arrayName] === undefined) {
        //create array if it doesnt exist
        window.marketplaceStorage[arrayName] = [];
        window.marketplaceStorage[arrayName].push(value);
    } else {
        window.marketplaceStorage[arrayName].push(value);
    }
}

function getDomStorageArray(arrayName) {
    if (window.marketplaceStorage[arrayName] === undefined) {
        return [];
    } else {
        return window.marketplaceStorage[arrayName];
    }
}

function setDomStorageArray(arrayName, array) {
    window.marketplaceStorage[arrayName] = array;
}

// function putInDomStorageDictionary(dictName, key, value){
//     if(window.marketplaceStorage[dictName] === undefined){
//         //create array if it doesnt exist
//         window.marketplaceStorage[dictName] = [];
//         window.marketplaceStorage[dictName][key] = value;
//     }else{
//         window.marketplaceStorage[dictName][key] = value;
//     }
// }
//
// function removeFromDomStorageDictionary(dictName, key){
//     if(window.marketplaceStorage[dictName] !== undefined){
//
//     }
// }


function getValueFromDomStorage(key) {
    return window.marketplaceStorage[key];
}