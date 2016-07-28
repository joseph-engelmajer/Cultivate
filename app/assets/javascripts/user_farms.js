//  Place all the behaviors and hooks related to the matching controller here.
//  All this logic will automatically be available in application.js.
//  You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
	// grab_text_ids()
	show_text_field()
	$("div.js_description_check_boxes > input").click(show_text_field)
});

function show_text_field(){	
	
$(".js_description_field").each(function(){

var field = $(this)
var description_field_id = $(this).prop("name").slice(-2)[0];


	$("div.js_description_check_boxes > input").each(function(){
		var value = $(this).prop('value');


		if (($(this).is(':checked')) && (value == description_field_id)){
			field.removeClass("hide_description_field")
		
		// console.log("banana")
		// console.log(value)
		}

		else if (($(this).is(':not(:checked)')) && (value == description_field_id)) {
			field.addClass("hide_description_field")
			console.log("not checked")
		}
	});	
});	




	// var description_field_id = $(".js_description_field").prop("name").slice(-2)[0]
	// var description_checkbox_id = $("div.js_description_check_boxes > input").prop("value")

	// console.log("---------------text_id---------------")
	// console.log(description_field_id)
	// console.log("---------------checkbox_id---------------")
	// console.log(description_checkbox_id)
	
	// $("div.js_description_check_boxes > input[type='checkbox']").change(function(){
	// 	if ($(this).is(':checked')) 
	// 		$("div.js_description_check_boxes > input").show($(".js_description_field").filter(description_checkbox_id == description_field_id))
	// 	end
	// });
};


// function grab_text_ids(){
	
// 	var text_box_array = []

// 	$(".js_description_field").each(function(){
// 		text_box_array.push($(".js_description_field").prop("name").slice(-2)[0])
// 	});	

// 	console.log("---------------text_box_array---------------")
// 	console.log(text_box_array)
// };