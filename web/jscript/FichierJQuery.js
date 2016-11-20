//to hide and show some fields
$(document).ready(function () {
    $("#activity").change(function () {
        
        $("#date").show();
    });

});

$(document).ready(function () {
    $("#datechooser").change(function () {
        $("#time").show();
    });

});



$(document).ready(function() {
$('#activity option').click(function(){

    $('#activityValue').val($(this).val());
    
    
        });
});