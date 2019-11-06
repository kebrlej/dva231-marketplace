function sendGetRequest(url, callback) {
    jQuery.ajaxSetup({
        timeout: 2000 // in milliseconds
    });
    jQuery.get(url, null, callback);

}

function sendPostRequest(url, data, callback) {
    jQuery.ajaxSetup({
        timeout: 2000 // in milliseconds
    });
    if (data === null) {
        data = JSON.stringify({});
    }
    jQuery.post(url, JSON.stringify(data), callback);
}

function sendDeleteRequest(url, callbackFunction) {
    jQuery.ajaxSetup({
        timeout: 2000 // in milliseconds
    });
    $.ajax({
        url: url,
        type: 'DELETE',
        success: callbackFunction
    });
}
