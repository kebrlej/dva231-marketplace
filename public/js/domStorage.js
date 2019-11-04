

window.marketplaceStorage = [];

function putValueInDomStorage(key, value){
    window.marketplaceStorage[key] = value;
}

function putInDomStorageArray(arrayName, value){
    if(window.marketplaceStorage[arrayName] === undefined){
        //create array if it doesnt exist
        window.marketplaceStorage[arrayName] = [];
        window.marketplaceStorage[arrayName].push(value);
    }else{
        window.marketplaceStorage[arrayName].push(value);
    }
}

function getValueFromDomStorage(key){
    return window.marketplaceStorage[key];
}