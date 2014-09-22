/**
 * Javascript routines to support an interaction with expEYES-Jr
 **/

/**
 * Callback function for a widget which features a select element and
 * a neighboring div to display the result of a measurement
 * @param sel a select element (from the DOM tree), where some ADC entry
 * of eyesjr box is supposed to be selected
 **/
function menuADC(sel){
    /* find the selected ADC entry */
    var option=$(sel).find(":selected");
    var name=option.text();
    var val=option.val();
    $.getJSON(
	"/eyesJSON", {
	    fun: "menuADC",
	    name: name,
	    val: val,
	}
    ).done(function(data){
	/* console.log("done:", data); */
	$(sel).next("div").text(data.name+": "+data.voltage+" V");
    }).fail(function(jqxhr, textStatus, error){
	var err = textStatus + ", " + error;
	/* console.log("Request Failed: " + err); */
	$(sel).next("div").text("Request Failed: " + err);
    });
}