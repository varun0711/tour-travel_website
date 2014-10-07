<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="contect, App_Web_uqgisbye" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td rowspan="2">  <!-- www.123contactform.com script begins here -->

<!-- formalign --><center>

<script type="text/javascript">
<!--
    var formrules = new Array(0);

    //-->
</script>
<script type="text/javascript">
    var cfJsHost = (("https:" == document.location.protocol) ? "https://" : "http://");
    document.write(unescape("%3Cscript src='" + cfJsHost + "www.123contactform.com/includes/interactive123cf.js?3835' type='text/javascript'%3E%3C/script%3E"));
</script>

<style type="text/css">
	.focus { background: #FEF1C1; }	
	.class123-label { font-family: Verdana, Geneva, sans-serif; font-size: small; color: #000000;}
	.headline { color: #000000; }
	.class123-labelmic { font-family: Verdana, Geneva, sans-serif; font-size: xx-small; color: #666666; }
	.class123-labelinfo { font-family: Verdana, Geneva, sans-serif; font-size: xx-small; color: #666666; }
	.class123-sidebyside { float:left; margin:0 5px 0 0;}
	.class123-twocol { float:left; width:45%; margin:0 5px 0 0;}
	.class123-threecol { float:left; width:30%; margin:0 5px 0 0;}
	.class123-likert_style_li { display:table-cell; vertical-align:middle; text-align:center; top:0px; padding:0px; /*width:20%;*/ height:50px; margin:0px; font:79%/100% verdana; font-weight:bold; background:#f8f8f8; zoom:1; *display:inline; }
	.class123-likert_style_li2 { display:table-cell; vertical-align:middle; text-align:center; top:0px; padding:0px; /*width:20%;*/ height:50px; margin:0px; font:79%/100% verdana; zoom:1; *display:inline; }
	.class123-select { height:1.6em; }
	
	.class123-savereturn { background: none; border: medium none; text-decoration: underline; cursor: pointer; padding:5px 10px;}
	.class123-goback { background: none; border: medium none; text-decoration: underline; cursor: pointer; padding:5px 10px; color: #C80042;}
	.class123-pbline { display:none; }
	.class123-pbprev { background: none; border: medium none; text-decoration: underline; cursor: pointer; padding-left:0px; padding-right:0px; }
	.class123-pagination { float:left; width:99%; /*min-width:550px;*/ font-size:10px; margin:0px; margin-bottom:10px; }
	#mainform123 .class123-pagination { background-color:#; }.class123-progresscircle { margin:0px !importat; background: #CCC; width: 24px; height: 24px; -moz-border-radius: 12px; -webkit-border-radius: 12px; border-radius: 12px; float:left; }
	.class123-progresscircleactive { margin:0px !importat; background:#FEF1C1; width: 24px; height: 24px; -moz-border-radius: 12px; -webkit-border-radius: 12px; border-radius: 12px; }
	.class123-progresstext { display:table-cell; height:100%; width: 24px; text-align:center; padding-top:3px; font-family: Verdana, Geneva, sans-serif; font-size:13px; }
	.class123-progressPercDiv { float:left; width:100%; margin:0px !important; -moz-border-radius: 6px; -webkit-border-radius: 6px; border-radius: 6px; border: 1px solid #ccc; padding:2px; }
	#mainform123 .class123-progressPercDiv { background:#; }
	
	.class123-progressPercBar { float:left; text-align:right; line-height:23px; padding-right:4px; font-weight:bold; height: 24px; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; margin:0px !importat; background:#FEF1C1;}
	#mainform123 .class123-progressPercBar { background:#FEF1C1; }

	.class123-pagename { float:left; font-family: Verdana, Geneva, sans-serif; line-height:14px; margin-left:5px; max-width:85px; margin-top:5px; }	
	.currentPageActive { display:block; }
	.currentPageInactive { display:none; }
	.formdefaultbutcolor { background-color: #C80042 }
	.formnotextButton { width:150px; }
	
	.fontbold { font-weight: bold; }
	.fontitalic { font-style: italic; }
	.requiredspan { font-family: Verdana; font-size:10px; color:#f00; margin-left:3px; }
	.requiredfield:after{content: "\0000a0*";color:#FF0000;font-size:10px;font-family:Verdana;}
	.columntable tr td { padding:5px; }
	.class123_maintable { text-align: left; }
	.formdefaultbut { display:inline; list-style:none; margin-right:4px; color:#fff; border:none; cursor:pointer; border-radius:3px; -webkit-border-radius:3px; -moz-border-radius:3px; font-weight:bold; vertical-align: middle; }
	.footerLink13:link,.footerLink13:visited,.footerLink13:active { font-size:small!important;color:#404040!important; text-decoration:underline!important;}
	.footerLink13:hover{font-size:small!important;color:#FFFFFF!important;text-decoration:none!important;background-color:#C80042!important;}
	
	/* NEW STYLES BEGIN	*/
	.maintable_centered { margin-left:10%; margin-right:10%; }
	.divonecolumn { width:48% !important; float:left; display:block; margin-right:3px; }
	
	.optionscontainer { width:100%; display:block; float: left; text-align:left; }
	.optionscontainer.pagination {margin-top:6px;}	
	.errormsg, .fielderror { color: #f00 !important; }
	.customerror { background-color: # !important; border-color: #f00 !important; }
	div[id^="class123-bicTOSFrame"] { background-color:white; overflow-y: auto; max-height:400px; }
	
	
	
	.fieldcontainer { float: left; margin:0; padding:0; width:100%; } /* OLD: margin-bottom:3px; also had display:none, which caused bug on form 376500 */
	.fieldcontainer div .rowleft, .fieldcontainer div .rowright { display:block; float: left; }
	
	.fieldcontainer .rowleft { margin:6px 1%; width:34%; }
	.fieldcontainer .rowright { margin:6px 1%; width: 62%; }
	.fieldcontainer .rowup { margin:3px 0.5%; width: 96%; float:left; }
	.fieldcontainer .rowdown { margin:3px 0.5%; width:96%; float:left; }
	.fieldcontainer .uberfieldlat { margin:3px 1%; }
	.fieldcontainer #printlink { margin-left: 0.5%; }
	.class123-separ-row { float:left; width:100%; background-color: transparent; }
	
	.fieldwidth100 { float:left; width:100%; }
	.fieldwidth90  { float:left; width:90%; }
	.fieldwidth85  { float:left; width:85%; }
	.fieldwidth80  { float:left; width:80%; }
	.fieldwidth75  { float:left; width:75%; }
	.fieldwidth70  { float:left; width:70%; }
	.fieldwidth65  { float:left; width:65%; }
	.fieldwidth60  { float:left; width:60%; }
	.fieldwidth55  { float:left; width:55%; }
	.fieldwidth50  { float:left; width:50%; }
	.fieldwidth45  { float:left; width:45%; }
	.fieldwidth40  { float:left; width:40%; }
	.fieldwidth35  { float:left; width:35%; }
	.fieldwidth30  { float:left; width:30%; }
	.fieldwidth25  { float:left; width:25%; }
	.fieldwidth20  { float:left; width:20%; }
	.fieldwidth15  { float:left; width:15%; }
	.fieldwidth10  { float:left; width:10%; }	
	
	.sortabledemo .fieldwidth90, .sortabledemo .fieldwidth80, .sortabledemo .fieldwidth70, .sortabledemo .fieldwidth60, .sortabledemo .fieldwidth50, .sortabledemo .fieldwidth40, .sortabledemo .fieldwidth30, .sortabledemo .fieldwidth20, .sortabledemo .fieldwidth10
	{ background-image:url("/images3/bg-field-container.png");background-repeat:repeat-x;position:relative;background-position:bottom; }
	 .thebuttons .divonecolumn.second { padding:6px; }
	.fieldcontainer img, select { max-width:100% !important; }
	#ajax_editField_defaultCountrySel { width:100% !important; }
	#formeditor_page #basicoptions .ui-icon-triangle-2-n-s { -moz-appearance: menulist-button; height: 19px; margin-right: -3px; margin-top: -1px; padding: 0; width: 15px; }
	#formeditor_page #basicoptions .ui-multiselect { width:185px!important; background-color:white; border-style:inset; border-radius:0px; color:black; font-weight:normal; padding:0px; -moz-appearance: menulist; -webkit-appearance:menulist; font-size:13px; height:20px; }
	@media screen and (-webkit-min-device-pixel-ratio:0) { 
		#formeditor_page #basicoptions .ui-icon-triangle-2-n-s { margin-right:0px!important; margin-top:0px!important; width:19px!important;  } 
		#formeditor_page #basicoptions .ui-multiselect {border-color:#c3c3c3; -webkit-appearance:menulist;} 
	}
	
	.class123-firstname, .class123-lastname { width:95px; margin-right:10px; }
	.class123-address { max-width:400px; }	
	.class123-hidden { display:none !important; }
	/* NEW STYLES END */	
</style>   
   <!--[if lte IE 8]>
	<style type="text/css">
	.class123-likert_style_li2 {height:56px;}
	</style>
	<![endif]-->
<script type="text/javascript">
<!--
    var selectedfield = '';
    var multiPageCurent = 1;
    var multiPageTotal = 1;
    function InputActions(field, id) {
        var textcolor = '#000000';
        var hltextcolor = '#000000';

        if (id == selectedfield) { /* alert('do nothing'); */ }
        else
        {
            // first we unhighlight the previous field, if any
            if (selectedfield != '') {
                lid = selectedfield;
                lidsec = lid.replace('row', 'rowsec');

                // reparam culoare textlabels
                var tr = document.getElementById(lid);

                if (document.getElementsByClassName) {
                    var textlabels = tr.getElementsByClassName('class123-label');
                    for (j = 0; j < textlabels.length; j++)
                        textlabels[j].style.color = textcolor;
                }
                else {
                    var textlabels = tr.getElementsByTagName('label');
                    for (j = 0; j < textlabels.length; j++)
                        if (textlabels[j].className.indexOf('class123-label') > -1) textlabels[j].style.color = textcolor;
                }
                var oldbg = '';
                if (document.getElementById('errorflag' + lid) != null)
                    oldbg = document.getElementById('errorflag' + lid).value;

                // reparam culoare bg td
                var tds = tr.getElementsByTagName('div');
                for (j = 0; j < tds.length; j++)
                    tds[j].parentNode.parentNode.style.background = oldbg;

                // reparam culoare bg td sec
                if (document.getElementById(lidsec) != null) {
                    var trsec = document.getElementById(lidsec);
                    tds = trsec.getElementsByTagName('div');
                    for (j = 0; j < tds.length; j++)
                        tds[j].parentNode.parentNode.style.background = oldbg;
                }
            }
            // then we highlight the new one
            selectedfield = id;

            lid = id;
            lidsec = lid.replace('row', 'rowsec');

            // modificam culoare textlabels
            var tr = document.getElementById(lid);
            if (document.getElementsByClassName) {
                var textlabels = tr.getElementsByClassName('class123-label');
                for (j = 0; j < textlabels.length; j++)
                    textlabels[j].style.color = hltextcolor;
            }
            else {
                var textlabels = tr.getElementsByTagName('label');
                for (j = 0; j < textlabels.length; j++)
                    if (textlabels[j].className.indexOf('class123-label') > -1) textlabels[j].style.color = hltextcolor;
            }

            // modificam culoare bg td
            var tds = tr.getElementsByTagName('div'); for (j = 0; j < tds.length; j++)
                tds[j].parentNode.parentNode.style.background = '#FEF1C1';

            // modificam culoare bg td sec
            if (document.getElementById(lidsec) != null) {
                var trsec = document.getElementById(lidsec);
                tds = trsec.getElementsByTagName('div');
                for (j = 0; j < tds.length; j++)
                    tds[j].parentNode.parentNode.style.background = '#FEF1C1';
            }
        }
        // now the field rules

        InputRules2('beginning', '0');
    }
    function IsFullDateEntered(c_id) {
        if ((document.getElementById('id123-control' + c_id + '-1') != null) && (document.getElementById('id123-control' + c_id + '-2') != null) && (document.getElementById('id123-control' + c_id + '-3') != null)) {
            if ((document.getElementById('id123-control' + c_id + '-1').value != '') && (document.getElementById('id123-control' + c_id + '-2').value != '') && (document.getElementById('id123-control' + c_id + '-3').value != ''))
                document.getElementById('id123-control' + c_id).value = document.getElementById('id123-control' + c_id + '-1').value + '/' + document.getElementById('id123-control' + c_id + '-2').value + '/' + document.getElementById('id123-control' + c_id + '-3').value;
        }
    }
    //-->
</script><form  class="form" onsubmit="RefreshFrameHeight(1); return checkSubmitAllowed();" action="http://www.123contactform.com/form-643526/Contact-Form" id="Form1" method="post" name="mainform123" enctype="multipart/form-data">
<input type="hidden" name="action" value="verify"/><input type="hidden" name="special_autoresponder" id="Hidden1" value=""/><input type="hidden" name="language" value="en"/><input type="hidden" name="languageChanged" value="no"/><div class="class123_maintable maintable_centered" style="min-width: 250px; " >

<!-- Form headline begins -->
<div class='optionscontainer headline'><div><font size="5">Contact Form</font><hr/></div></div>
<!-- Form headline ends -->

<!-- fieldcontainer -->
<div class="fieldcontainer currentPage1 currentPageActive  fieldwidth100  " style=" ">
<div id="Div1" class="currentPage1 currentPageActive">
<div class="rowleft"  style="text-align:left; ">
<label class="class123-label class123-fieldname fontbold  requiredfield " id="Label1" for="id123-control4836446" >Name</label><!--[if lte IE 7]><span class="requiredspan">*</span><![endif]--></div>
<div class="rowright" align="left" style=""><input type="hidden" id="Hidden2" value=""/><input id="Text1" name="control4836446"  onclick="InputActions(this, 'row1');" onkeyup="InputActions(this,'row1');  " onchange="InputRules(4836446); ;  " type="text" value="" style="width:280px; max-width:96% !important; position:relative;" />
</div></div>
</div>
<!-- fieldcontainer ends -->

<!-- fieldcontainer -->
<div class="fieldcontainer currentPage1 currentPageActive  fieldwidth100  " style=" ">
<div id="Div2" class="currentPage1 currentPageActive">
<div class="rowleft"  style="text-align:left; ">
<label class="class123-label class123-fieldname fontbold  requiredfield " id="Label2" for="id123-control4836447" >Email</label><!--[if lte IE 7]><span class="requiredspan">*</span><![endif]--></div>
<div class="rowright" align="left" style=""><input type="hidden" id="Hidden3" value=""/><input id="Text2" name="control4836447"  onclick="InputActions(this, 'row2');" onkeyup="InputActions(this,'row2');  " onchange="InputRules(4836447); ;  " type="text" value="" style="width:280px; max-width:96% !important; position:relative;" />
</div></div>
</div>
<!-- fieldcontainer ends -->

<!-- fieldcontainer -->
<div class="fieldcontainer currentPage1 currentPageActive  fieldwidth100  " style=" ">
<div id="Div3" class="currentPage1 currentPageActive">
<div class="rowleft"  style="text-align:left; ">
<label class="class123-label class123-fieldname fontbold  requiredfield " id="Label3" for="id123-control4836448" >Message</label><!--[if lte IE 7]><span class="requiredspan">*</span><![endif]--></div>
<div class="rowright" align="left" style=""><input type="hidden" id="Hidden4" value=""/><textarea id="Textarea1" name="control4836448" onclick="InputActions(this,'row3');" onkeyup="InputActions(this,'row3');  " onchange="InputRules(4836448); ;  " rows="4" style="width:280px; max-width:96% !important; position:relative;"></textarea>
<div style="clear:both;"></div></div></div>
</div>
<!-- fieldcontainer ends -->


<!-- Buttons begin here -->
<div class='fieldcontainer thebuttons'>
<div class="currentPage1 currentPageActive"><div class='rowleft'> </div><div class='rowright' align="left" ><input type="hidden" name="go_back_and_edit" id="Hidden5" value="0" /><input type="submit"  class="formdefaultbut" style="background-color:#C80042; padding:3px 10px" id="Submit1"  value="Send Email"/> 
</div></div>
</div>
<!-- fieldcontainer ends -->
<!-- Buttons end here -->
</div>
<div style="height:1px; display: none; visibility: hidden;">
<input type="text" name="email"/>
</div>

		<input type="hidden" name="hiddenfields" id="hidden6" value=""/>
		<input type="hidden" name="hiddenfields_pages" id="hidden7" value=""/>
		<input type="hidden" name="activepage" id="Hidden8" value="1"/>		
		<input type="hidden" name="totalpages" id="Hidden9" value="1"/>		
		<input type="hidden" name="nextpagenr" id="Hidden10" value="2"/>
		<input type="hidden" name="prevpagenr" id="Hidden11" value="0"/>		
		<script type="text/javascript">
		    InputRules('firsttime');
		</script><input type="hidden" name="usage" value="e"/>
</form>
<%--<p align='center' style='float:left; width:100%'><font size="1" face="Verdana, Geneva, sans-serif" color="#000000"><a href="http://www.123contactform.com">Email form</a> generated by 123ContactForm</font></p></center><!-- formalign ends -->--%>
<script type="text/javascript">multiPageTotal = 1;</script>
<p style='clear:both'></p>

	<script type="text/javascript">
	    //MNG: Special Script for Sisow And multipage
	    SisowAndMultipage();
	</script>
	
<!-- www.123contactform.com script ends here --></td>
            <td ><p><b><u>Mailing Address</u></b></p>
                <p></p>
                <p>BKBIET,PILANI,RAJASTHAN</p>
                <p><b>ZIP CODE:</b> 333031</p>
                <p><b>Phone No:</b> 9529137847</p>
                <p><b>Office Hours:</b> Monday - Friday, 9am - 6pm (GMT+5:30).</p>
            </td>
        </tr>
        <tr>
            <td >
            <!--    <img src="images/50.jpg" /> -->
            </td>
        </tr>
    </table>
    
   

</asp:Content>

