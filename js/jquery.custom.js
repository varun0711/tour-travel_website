var loadInit = { profile_loaded:0, main_loaded:0, board_loaded:0 };
var dyn_slideText = '<div class="person_text clearFix" id="profile_text"><div class="description_wrapper mb-wrapper clearFix"><span id="profile_description" class="flL"></span><span class="flL hobbies_area"><span class="hobbies_head flL">my hobbies:</span><span id="hobbies" class="flL"></span></span><a href="#" class="flL" id="wanna_see_fun"><img src="images/see_morefun.jpg" alt="wanna see some fun stuff?" title="wanna see some fun stuff? "/></a></div></div>';

// sliders dymamic slides..
var profileslider_options = ['profile_slides'];
var mainslider_options = ['main_slides'];
var board_options = ['board_slides'];
var boardImg_array = ['Frederic-Lalonde','Vivek-Gour','ranodeb-roy','Sanjeev','Sachin-Bhatia','Ravi_C_Adusumalli','Tim-Guleri'];

$(function(){

	/*------- Management page ------ */
	var profile_slider = $("#profile_slider");
	var main_slider = $("#main_slider");
	
	if(profile_slider.length > 0)
	{	
		profile_slider.movingBoxes({
			/* width and panelWidth options deprecated, but still work to keep the plugin backwards compatible
			width: 500,
			panelWidth: 0.5,
			*/
			startPanel   : 3,      // start with this panel
			reducedSize  : 1.0,
			speed        : 800,
			fixedHeight: false,
			wrap         : true,   // if true, the panel will "wrap" (it really rewinds/fast forwards) at the ends
			buildNav     : false,   // if true, navigation links will be added
			navFormatter : function(){ return "&#9679;"; }, // function which returns the navigation text for each panel
			hashTags : false,
			initialized: function(e, slider, tar){ },
			beforeAnimation: function(e, slider, tar){ 
				if(loadInit.profile_loaded < 1)
				{
					getAjaxResponses(loadInit.profile_loaded,profile_slider,'profile',profileslider_options, true); // synch slider to be load slides dynamically..
					loadInit.profile_loaded = 1;
				}

			},
			// callback after animation completes
			completed: function(e, slider, tar){
				// get name from title
				// var name = slider.$panels.eq(tar-1).find('h2').text().split(' ')[0];
				// alert( "Now on " + name + "'s panel" );
				//console.log( "Now on " + name + "'s panel" );
					// description and title settings.. of slides..
					var capture_obj = profile_slider.data('movingBoxes');
					var list = capture_obj.$panels[capture_obj.curPanel];
					$("#profile_description").html('<span class="openQuote"></span>' + $(list).find('h2').text()  + '<span class="closeQuote"></span>');
					$("#hobbies").html($(list).find('p:last').text());

					if($("#wanna_see_fun").length > 0 && $("#bg_image").is(":visible") && $("#wanna_see_fun").is(":hidden"))
					{
						$("#wanna_see_fun").trigger("click");
					}
			}
		});

		profile_slider.parents("div.movingBoxes").wrap("<div id='profile_wrap1' />");
		$("#move_back").hide();
		$("#profile_wrap1").wrap("<div id='profile_wrap2' />");
		$("#profile_wrap2").css({ 'opacity':0, 'height':0,'visibility':'hidden','overflow':'hidden' });
		$("#profile_wrap2").append(dyn_slideText);

	} // profile_slider check existence...
	
	$("#wanna_see_fun").click(function(){ 
									$(this).hide('slow');

							 		var currentPanel = profile_slider.data('movingBoxes').currentPanel();
									var capture_Cls  = profile_slider.find('li').eq(currentPanel).attr('class').split(/\s+/)[0];
									

							 		$("#profile_wrap1 > div.movingBoxes").animate({'left':'-250px' }, 400);
									
									if($("#profile_wrap1").find('div:last').attr("id") != "bg_image")
									{
										$("#profile_wrap1").append('<div id="bg_image" style="width:0px; height:100%;"><p class="clearFix"><a href="#" class="close_bgOverlay flL"></a></p></div>');									
																				
									}
									$("#bg_image").attr("class","").addClass(capture_Cls).show('slow').animate({'width':'500px'}, 500);	
									
									
									return false;
							 })
	
	
	$("#bg_image a.close_bgOverlay").live("click", function(e)
										  {
							 $("#wanna_see_fun").show('slow');
							  $("#bg_image").hide('slow', function(){ $("#profile_wrap1 > div.movingBoxes").animate({'left':'0px' }, 500); });	
							  return false;
										  });
	
	if(main_slider.length > 0)
	{	
			main_slider.movingBoxes({
				startPanel   : 3,      // start with this panel
				reducedSize  : 0.5,    // non-current panel size: 80% of panel size
				wrap         : true,   // if true, the panel will "wrap" (it really rewinds/fast forwards) at the ends
				speed        : 900,
				buildNav     : false,   // if true, navigation links will be added
				fixedHeight  : true,
				navFormatter : function(index, panel){ return panel.find('h2 span').text(); }, // function which gets nav text from span inside the panel header

				// width and panelWidth options removed in v2.2.2, but still backwards compatible
				// width        : 500,    // overall width of movingBoxes (not including navigation arrows)
				// panelWidth   : 0.7,    // current panel width
				hashTags:false,
				initialized: function(e, slider, tar){ load_init = 1; },
				beforeAnimation: function(e, slider, tar){ 
					// Sync profile slider with main slider..
					var synch = profile_slider.data('movingBoxes');
					synch.change(tar);
				
					var currentPanel = main_slider.data('movingBoxes').currentPanel();
					main_slider.find("li").removeClass("current_styling");
					if(main_slider.find("li").eq(currentPanel).hasClass("current_styling") == false)
					{
						main_slider.find("li").eq(currentPanel).addClass("current_styling");
					}
					
					// add dynamic slides....
					if(loadInit.main_loaded < 1)
					{
						getAjaxResponses(loadInit.main_loaded,main_slider,'profile',mainslider_options, true); // synch slider to be load slides dynamically..	
						loadInit.main_loaded = 1;
					}
					
				},
				completed:function(e, slider, tar){
					var currentPanel = main_slider.data('movingBoxes').currentPanel();
					var cal_index = $(this).find("li").index($(this).find("li.current"));

					if( cal_index == (currentPanel))
					{
						$(this).find("li").css({ opacity:0.4, background:'#ffffff' });
						$(this).find("li").eq(cal_index).css({ opacity:1, background:'transparent' });
						$(this).find("li").unbind().eq(cal_index).click( function(e)
						{
							if(loadInit.main_loaded < 1)
							{
								getAjaxResponses(loadInit.main_loaded,main_slider,'profile',mainslider_options, true); // synch slider to be load slides dynamically..	
								loadInit.main_loaded = 1;
							}		
							if(main_slider.data('movingBoxes').initialized)
							{
								synch_Slides();
							}
						});
					}
					
					// description and title settings.. of slides..
					var capture_obj = main_slider.data('movingBoxes');
					var list = capture_obj.$panels[capture_obj.curPanel];
					$("#person_title").html($(list).find('h2').html()).append("<a href='#' id='view_details' class='view_details'>( click to view more details.) </a>");
					$("#person_description").html('<span class="openQuote"></span>' +$(list).find('p:last').text() + '<span class="closeQuote"></span>');
				}
			});

			main_slider.find("li.mb-panel").css({ opacity:0.4, background:'#ffffff' });
			
			main_slider.find("li.mb-panel").live('mouseenter',function(e)
			{
				$(this).css({ opacity:1, background:'transparent' });
			}).live('mouseleave',function()
			{
				if($(this).hasClass("current") == false )
				{
					$(this).css({ opacity:0.4, background:'#ffffff' });
				}
			});
	} // main_slider check existence
	

	$("a#view_details").live('click', function()
	{
		synch_Slides();
	});

	$("#move_back").click(function()
	{
		$(this).hide('medium');
		$("p.toggle_tab").show();
		$("#profile_wrap2").animate({'height':'0', 'opacity':0 }, 600, function(){ $("#profile_wrap2").css({'visibility':'hidden'});
		$("html,body").animate({scrollTop: main_slider.offset().top }, 1200, function(){  $('body').css('overflow','auto'); } );} );   // function{} here is a callback()..

		// main_slider slides synch with profile_slider..
		var synch = main_slider.data('movingBoxes');
		var currentPanel = profile_slider.data('movingBoxes').currentPanel();
		synch.change(currentPanel);

		$("#main_slider_wrapper").css({'visibility':'visible'}).animate({'height':'460px','opacity':1 }, 700, function(){  }); 
		
		return false;
	});

	/*------- Awards page ------ */
	
	//Tiny Scrollbar
	var timelineScroll = $('#timeline_scrollbar');
	if(timelineScroll.length > 0){
		timelineScroll.tinyscrollbar({ axis: 'x' });
	}
	
	$("#airline_timeline").hide();
	
	$("p.toggle_tab a").click(function(e)
									   {	
									   		var $this = $(this);
											
											if($this.attr("id") == "airline" && $this.hasClass("active") == false )
											{
												$("ul#business_timeline").hide('slow');
			awardAjaxResponse('awards_slides',$("ul#airline_timeline > li > a:first").attr("id"), $("#business_slider"), $("ul#airline_timeline > li > a:first"));
												$("ul#airline_timeline").show('slow');
											}
											else if($this.attr("id") == "travel" && $this.hasClass("active") == false)
											{
												$("ul#airline_timeline").hide('slow');
			awardAjaxResponse('awards_slides',$("ul#business_timeline > li > a:first").attr("id"), $("#business_slider"), $("ul#business_timeline > li > a:first"));												
												$("ul#business_timeline").show('slow');												
											}

									   		$this.siblings("a").removeClass("active");
											$this.addClass("active");

									   });

	// business slider
	var business_slider = $('#business_slider');
	if(business_slider.length > 0){
		
		business_slider.movingBoxes({
			reducedSize  : 1.0,
			speed        : 800,
			fixedHeight: true,
			wrap         : true,   // if true, the panel will "wrap" (it really rewinds/fast forwards) at the ends
			buildNav     : false,   // if true, navigation links will be added
			navFormatter : function(){ return "&#9679;"; }, // function which returns the navigation text for each panel
			hashTags : false,
			preinit: function(e, slider, tar){  business_slider.find("li.hide").remove(); },
			initialized: function(e, slider, tar){  },
			beforeAnimation: function(e, slider, tar){ 
				
			},
			// callback after animation completes
			completed: function(e, slider, tar){
				
			}
		});		
	}
	
	$("#timeline_scrollbar").find("ul.timelines > li > a").click(function()
										{
													var $currentA = $(this);																		  
													var $id = String($currentA.attr("id"));
													
													if($currentA.hasClass("active")==false)
													{
														awardAjaxResponse('awards_slides',$id, $("#business_slider"), $currentA);
													}
													return false;
										}).filter("a:first").click();
	
	
	
	/*------- Board of Director's page ------ */
	// board slider
	var board_slider = $('#board_slider');
	if(board_slider.length > 0){
		
		board_slider.movingBoxes({
			reducedSize  : 1.0,
			speed        : 800,
			fixedHeight: true,
			wrap         : true,   // if true, the panel will "wrap" (it really rewinds/fast forwards) at the ends
			buildNav     : false,   // if true, navigation links will be added
			navFormatter : function(){ return "&#9679;"; }, // function which returns the navigation text for each panel
			hashTags : false,
			preinit: function(e, slider, tar){ 
				if(loadInit.board_loaded < 1)
				{
					getAjaxResponses(loadInit.board_loaded,board_slider,'profile',board_options, true); // synch slider to be load slides dynamically..
					loadInit.board_loaded = 1;
				}
				board_slider.find("li.hide").remove(); 
			},
			beforeAnimation: function(e, slider, tar){ 
				if(loadInit.board_loaded == 1){ 
					var currentPanel = board_slider.data('movingBoxes').currentPanel();
					var totalPanels = board_slider.data('movingBoxes').totalPanels;
					
					
					if(board_slider.find("li.mb-panel").eq(currentPanel).hasClass("cloned") == false && currentPanel!=1 )
					{	
						board_slider.find("li.mb-panel").eq(currentPanel).find("img.board_members").attr("src","images/management/"+boardImg_array[currentPanel - 2	]+".gif");
						
					}
				}
			
			},
			// callback after animation completes
			completed: function(e, slider, tar){
						var capture_obj = board_slider.data('movingBoxes');
						var list = capture_obj.$panels[capture_obj.curPanel];
						if(capture_obj.curPanel == 1){  $("#profile_text").hide();  }
						else {  $("#profile_text").show();  }
						
						$("#hobbies").html($(list).find('p:last').text());							
			}
		});

		board_slider.parents("div.movingBoxes").wrap("<div id='profile_wrap1' />");
		$("#move_back").hide();
		$("#profile_wrap1").wrap("<div id='profile_wrap2' />");
		$("#profile_wrap2").append(dyn_slideText);
		$("#wanna_see_fun").hide();
		$("#profile_wrap2").find("span.hobbies_head").text("also does:");
	}	
});  // end of domReady()..


function synch_Slides()
{
		$("p.toggle_tab").hide();
		$("#main_slider_wrapper").css({ 'visibility':'hidden','overflow':'hidden' }).animate({'height':0,'opacity':0 }, 500);
		$("#profile_wrap2").css({'visibility':'visible'}).animate({'height':$(document).outerHeight()+'px', 'opacity':1 }, 800, function(){  }); 
		// $("html,body").animate({scrollTop: $("#header").offset().top +  $("#header").outerHeight() - 3 }, 700, function(){ $('body').css('overflow','auto'); } );   // function{} here is a callback()..
		$("html,body").animate({scrollTop: 0}, 700, function(){ $('body').css('overflow','auto'); } );   // function{} here is a callback()..
		$("#move_back").show('medium');
}

// Ajax Utilities..
var getAjaxResponses = function(index, object, directory, data_array, requestSync)
{
	if(data_array[index]!=null && data_array[index]!='undefined')
	{
		if(requestSync!=null){ }
		$.ajax({
		  url: directory+"/"+data_array[index]+".html?t="+(new Date()).getTime(),
		  async: requestSync,
		  success: function(data) {
			  if(object.attr("id") == "main_slider" || object.attr("id") == "profile_slider")
			  {
				  object.find('.mb-panel.cloned:last').before(data);
				  object.movingBoxes(); // update movingBoxes
			  }
			  else
			  {
				  object.append(data).movingBoxes(); // update movingBoxes
			  }
		  }	  
		});
	}
 }


var awardAjaxResponse = function(directory, filename, slider, currentA)
{
		$.ajax({
				  url: directory+'/'+filename+".html?t="+(new Date()).getTime(),
				  success: function(data) {
							// remove all previous panels..
							//slider.find("li.hide").remove();
							var d = slider.data('movingBoxes'),c = d.curPanel,t = d.totalPanels;
							for(var i=0; i<t; i++)
							{
								if (t > 1) {
									slider.find('.mb-panel:not(.cloned):last').remove();
									if (c > t - 1) { c = t - 1; }
									slider.movingBoxes(); // update movingBoxes
								}
							}
							// append selected Year slides...
							slider.append(data).movingBoxes(); // update movingBoxes
					
							// remove all active classes..
							currentA.parent("li").siblings("li").find("a").removeClass("active");
		
							// current active..
							currentA.addClass("active");
					}	  
			 });
}