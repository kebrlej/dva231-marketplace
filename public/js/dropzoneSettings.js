Dropzone.options.myAwesomeDropzone = {
    dictDefaultMessage: 'Select or drop product images here!!!',
    addRemoveLinks: true,
    autoProcessQueue: false,
    // init: function () {
    //     this.on("addedfile", function (file) {
    //         alert("Added file.");
    //     });
    //
    // },
    accept: function (file, done) {
        var reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function (readFile) {
            var image = {
                name: file.name,
                data: readFile.target.result
            };
            putInDomStorageArray("productImages", image);
        };
        $('.dz-progress').remove();
        // file.previewElement.querySelector("dz-progress").remove();
    },
    removedfile: function (file) {
        var fileArray = getDomStorageArray('productImages');
        var filteredFiles = fileArray.filter(function(item){
           return item.name !== file.name;
        });

        file.previewElement.remove();
        setDomStorageArray("productImages",filteredFiles);
    }
};
