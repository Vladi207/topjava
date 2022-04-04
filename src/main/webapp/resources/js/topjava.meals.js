const mealAjaxUrl = "profile/meals/"

const ctx = {
    ajaxUrl: mealAjaxUrl,
        updateTable: function () {
        $.ajax({
            type: "GET",
            url:mealAjaxUrl + "filter",
            data: $("#filter").serialize()
        }).done(updateTableByData);
        }
}

function clearFilter() {
    $("#filter")[0].reset();
    $.get(mealAjaxUrl, updateTableByData());
}

$(function () {
    makeEditable(
        $("#datatable").DataTable({
                "paging": false,
                "info": true,
            "columns": [
                {
                    "data": "dateTime"
                },
                {
                    "data": "description"
                },
                {
                    "data": "calories"
                },
                {
                    "defaultContent": "Edit",
                    "orderable": false
                },
                {
                    "defaultContent": "Delete",
                    "ordeable": false
                }
            ],
            "order": [
                [
                    0,
                    "desc"
                ]
            ]
        })
    )
});