.pragma library

var color = ["red", "orange", "green", "blue", "violet"]

function getColor(idx) {
    var index = idx % 5
    if(index >= 5 || index < 0)
        return "black"
    return color[index]
}
