//= require jquery
//= require jquery_ujs

function show_result(data){
    var mas = data.value;
    var newTable = document.createElement("table");
    newTable.setAttribute("id","itemTable");
    var newRow = newTable.insertRow(0);
    var newCell = newRow.insertCell(0);
    newCell.innerHTML = "Номер";
    newCell.setAttribute("width", "20");
    newCell.setAttribute("height", "20");
    newTable.setAttribute("border","1");
    newTable.setAttribute("Align","center");
    newCell = newRow.insertCell(1);
    newCell.setAttribute("width", "20");
    newCell.setAttribute("height", "20");
    newCell.innerHTML = "Значение";
    for (var i = 1; i <= mas.length; i++) {
        var newRow = newTable.insertRow(i);
        var newCell = newRow.insertCell(0);
        newCell.setAttribute("width", "20");
        newCell.setAttribute("height", "20");
        newCell.innerHTML = i;
        var newCell = newRow.insertCell(1);
        newCell.setAttribute("width", "20");
        newCell.setAttribute("height", "20");
        newCell.innerHTML = mas[i-1];

    }
    document.body.appendChild(newTable);

}
