// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// $(document).ready(function(){
	
// 	$('.js_comment_btn').on('click', save_comment);

// });

// function save_comment(response){

// 	var farm_id = $(event.currentTarget).data("id");
// 	var user_id = $(event.currentTarget).data("id");

// 	$.ajax({
// 		type: "POST",
// 	            data: {ingredient_id: ingredient_id},
// 	            url: `/api/comment/${farm_id}/add`,
// 	            success: create_comment,
// 	            error: handleError
// 	});
// };


//========================================================================================================================
//========= ** Success ** ================================================================================================
//========================================================================================================================

// function create_comment(response){
// 	var comment_text = response.text 
// 	var html = ` 
// 		<li>
// 				<p>${comment_text}</p>	
// 		</li>
// 	`;
// 	$('.js_comment_list').prepend(html)
// };

//========================================================================================================================
//========= ** Error ** ==================================================================================================
//========================================================================================================================

// function handleError (error) {
// 	  console.log("Watch yo Back! We got an urrur");
// 	  console.log(error.responseText);
// };