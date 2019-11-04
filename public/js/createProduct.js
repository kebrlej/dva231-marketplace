
var dropzone = Dropzone.options.myAwesomeDropzone =  {
    autoProcessQueue: false,
    accept: function(file,done){
        var x =10;
    }
};

function newProductCallback(data, textStatus) {

    response = JSON.parse(data);
    if (response.success === true) {
        window.location.href = "index.php";
    } else {
        var x = 10;
    }
}

function loadImage(input) {
    if (input.files && input.files[0]) {
        var fileReader = new FileReader();
        fileReader.readAsDataURL(input.files[0]);

        fileReader.onload = function (file) {
            var x = 10;
            var imagePreview = jQuery("#imagePreview");
            imagePreview.attr("src", file.target.result);

            var image = {
                name: input.files[0].name,
                data: file.target.result
            };

            putInDomStorageArray("productImages",image);

            var x = 10;
        };
    }

}

function newProduct() {
    var title = jQuery("#publishtitle");
    var category = jQuery("#publishcategory");
    var price = jQuery("#publishprice");
    var location = jQuery("#publishlocation");
    var description = jQuery("#publishdescription");

    var data = {
        title: title.val(),
        category: category.val(),
        price: price.val(),
        location: location.val(),
        description: description.val(),
        userId: getFromStorage("userId"),
        productImages: getFromStorage("productImages")
    };
}