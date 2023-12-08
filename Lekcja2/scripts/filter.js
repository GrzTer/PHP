function fetchProducts(layer, parentId) {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("layer" + layer).innerHTML = this.responseText;
        }
    };
    xhr.open("GET", "get_products.php?layer=" + layer + "&parent_id=" + parentId, true);
    xhr.send();

    for (var i = layer + 1; i <= 4; i++) {
        document.getElementById("layer" + i).innerHTML = "";
        document.getElementById("productsLayer" + i).innerHTML = "";
    }
}