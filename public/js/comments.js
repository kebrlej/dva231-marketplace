function postComment() {
    var author = getFromLocalStorage("username");
    var userId = getFromLocalStorage("userId");
    var productId = getFromLocalStorage("productId");

    var payload = {
        "text": document.getElementById("comment-text").value,
        "author": author,
        "userId": userId,
        "productId": productId
    };
    // addComment();
    sendPostRequest("api.php/comments", payload, function (data) {
        var response = JSON.parse(data);
        if (response.success === true) {
            var comment = response.data;
            document.getElementById("comment-text").value = "";
            addComment(comment.text,comment.author,comment.createTime);
        } else {
            var x = 10;
        }
    });
}

function loadComments(productId) {
    sendGetRequest("api.php/comments?productid=" + productId, function (data) {
        var result = JSON.parse(data);
        if (result.success === true) {
            //display all comments
            result.data.forEach(function (comment) {
                addComment(comment.text, comment.author, comment.createTime);
            });
            var x = 10;
        } else {
            // fuck off
        }

    });
}


function addComment(comment, author, date) {
    var commentSection = document.getElementById("comments");

    var commentWrapper = document.createElement("div");
    commentWrapper.className = "fullAd container";
    commentWrapper.id = "fullAd";

    var username = document.createElement("h3");
    username.innerText = author;
    username.className = "col-sm-2";

    var commentContent = document.createElement("div");
    commentContent.className = "col-sm-10 container";

    var header = document.createElement("div");
    header.className = "col-sm-12";
    header.innerText = date;

    var text = document.createElement("div");
    text.className = "col-sm-12";
    text.innerText = comment;

    commentContent.appendChild(header);
    commentContent.appendChild(text);

    commentWrapper.appendChild(username);
    commentWrapper.appendChild(commentContent);
    commentSection.appendChild(commentWrapper);
    commentSection.appendChild(commentWrapper);
}

//product id nad userId accessible from local storage
// <b style="margin-left:10px;">Jan: </b>This is also a comment.
// <div class="fullAd" style="padding:10px;">
//     <b style="margin-left:10px;">Filip: </b>This is a comment.
// </div>
// <div id="fullAd" class="fullAd container" style="padding:10px;">
//
//     <h3 class="col-sm-1">User</h3>
//     <div class="col-sm-11 container">
//     <div class="col-sm-12">
//     <a style="float:right">Delete comment</a>
// </div>
// <div class="col-sm-12">
//     comment comment comment comment comment
// comment comment comment comment comment comment comment comment comment comment
// comment comment comment comment comment comment comment comment comment comment comment comment comment
// comment comment
// comment comment comment comment comment
// comment comment comment comment comment
// comment comment comment comment comment
// comment comment comment comment comment
// comment comment comment comment comment
// comment comment comment comment comment
// comment comment comment comment comment
// comment comment comment comment comment
// </div>
// </div>
// </div>