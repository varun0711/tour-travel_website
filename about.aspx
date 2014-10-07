<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="about, App_Web_4nubvwhw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="styles/base.css" />
<link rel="stylesheet" type="text/css" href="styles/screen.css" />
<script src="js/jquery.min.js" type="text/javascript" language="javascript"></script>
<script src="js/jquery.pngFix.js" type="text/javascript" language="javascript"></script>
<script src="js/jquery.tinyscrollbar.js" type="text/javascript" language="javascript"></script>
<script src="js/jquery.custom.js" type="text/javascript" language="javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Container -->
<div id="container" class="clearFix" style="background-image:url(images/grid.png)">
  
  <div class="content company_info border_bottom clearFix">
    <div class="cloud_right"><img src="images/cloud.png" width="111" height="58" alt="cloud" /></div>
        <div class="cloud_stationary"><img src="images/cloud.png" width="111" height="58" alt="cloud" /></div>
      <div class="wrapper span_31 clearFix">
      <h2 class="heading append_bottom clearFix"><span class="flL slash"></span><span class="flL">about us</span></h2>
      <div class="profile_bg">
        <!-- Company-Profile -->
        <div class="company_profil clearFix">
          <!-- Sun-Animation -->
          <div style="position:absolute; top:50px;"> <span class="flL"><img src="images/sun.png" alt="sun" style="-moz-animation:spinCircle 8s infinite ease-in-out; -webkit-animation:spinCircle 8s infinite linear; position:absolute; top: 30px; left: 38px; width: 73px; height: 71px;" /></span> </div>
          <!-- /Sun-Animation -->
          <!-- Tree -->
          <div class="long_plant2">
            <div class="l_plant_2"></div>
            <div class="l_plant_3"></div>
          </div>
          <!-- /Tree -->
          <!-- Water -->
          <div id="water"></div>
          <!-- /Water -->
          <!-- About-Travel -->
          <p class="about_travel"><img src="images/all_travel.gif" alt="all_travel" /></p>
          <!-- /About-Travel -->
          <!-- About-Makemytrip -->
          <div class="about_makemytrip">
            <p class="about_txt append_bottomHalf">about makemytrip</p>
            <!-- About-Scrollable -->
            <div id="about_scrollable" class="about_scrollable">
              <!-- scrollbar controls -->
              <div class="scrollbar">
                <div class="track">
                  <div class="thumb">
                    <div class="end"></div>
                  </div>
                </div>
              </div>
              <!-- /scrollbar controls-->
              <div class="viewport">
                <div class="overview">
                  <p  class="append_bottom">Nurtured from the seed of a single great idea - to empower the traveller - MakeMyTrip went on to pioneer the entire online travel industry in India. MakeMyTrip has revolutionised the travel industry over the years. This is the story of MakeMyTrip, India’s Online Travel Leader.</p>
                  <p class="append_bottomHalf">MakeMyTrip.com, India’s leading online travel company was founded in the year 2000 by Deep Kalra. Created to empower the Indian traveller with instant booking and comprehensive choices, the company began its journey in the US-India travel market. It aimed to offer a range of best-value products and services along with cutting-edge technology and dedicated round-the-clock customer support. </p>
                  
                  <p class="append_bottomHalf">After consolidating its position in the market as a brand recognised for its reliability and transparency, MakeMyTrip followed its success in the US by launching its India operations in 2005.</p>
                  <p class="append_bottomHalf">With the foresight to seize the opportunities in the domestic travel market, brought on by a slew of new airlines, MakeMyTrip offered travellers the convenience of online travel bookings at rock-bottom prices. Rapidly, MakeMyTrip became the preferred choice of millions of travellers who were delighted to be empowered by a few mouse clicks!</p>
                  <p class="append_bottomHalf">MakeMyTrip’s rise has been lead by the vision and the spirit of each one of its employees, for whom no idea was too big and no problem too difficult. With untiring innovation and determination, MakeMyTrip proactively began to diversify its product offering, adding a variety of online and offline products and services. MakeMyTrip also stayed ahead of the curve by continually evolving its technology to meet the ever changing demands of the rapidly developing global travel market.</p>
                  <p class="append_bottomHalf">Steadily establishing itself across India and the world, MakeMyTrip simultaneously nurtured the growth of its offline businesses like its franchises and affiliates simultaneously, augmenting the brand’s already strong retail presence further.</p>
                  <p class="append_bottomHalf">Today, MakeMyTrip is much more than just a travel portal or a famous pioneering brand - it is a one-stop-travel-shop that offers the broadest selection of travel products and services in India. MakeMyTrip is the undisputed online leader, with its share of the travel market extending to more than 50% of all online sales, a fact evinced by the trust placed in it by millions of happy customers.</p>
                  <p class="append_bottomHalf">Remaining reliable, efficient and at the forefront of technology, MakeMyTrip’s commitment and customer-centricity allows it to better understand and provide for its customers’ diverse needs and wants, and deliver consistently. With dedicated 24x7 customer support and offices in 20 cities across India and 2 international offices in New York and San Francisco (in addition to several franchise locations), MakeMyTrip is there for you, whenever and wherever.
                  </p>
                  <p class="append_bottomHalf">You are welcome to write to the Management with feedback about our services by signing in to our <a href="https://support.makemytrip.com/customersupports.aspx?actiontype=COMPLAINTS" target="_blank">My Complaints</a> section.</p>
                  
                  <p class="append_bottomHalf"><strong>MakeMyTrip’s Products:</strong></p>
            <!-- Product-List -->
            <ul class="product_list clearFix">
            <li>International and Domestic Air Tickets, Holiday Packages and Hotels</li>
            <li>Domestic Bus and Rail Tickets</li>
            <li>Private Car and Taxi Rentals</li>
            <li>MICE (Meetings, Incentives, Conferences &amp; Exhibitions)</li>    
            <li>B2B and Affiliate Services</li>        
            </ul>
            <!-- /Product-List -->
                  
                                    
                </div>
              </div>
            </div>
            <!-- /About-Scrollable -->
          </div>
          <!-- /About-Makemytrip -->
        </div>
      </div>
      <!-- /Company-Profile -->
    </div>
  </div>
  <!-- /Content -->
  <!-- Footer-Note -->
  
</div>
<!-- /Container -->
<script type="text/javascript">
    $(document).ready(function () {
        var timelineScroll = $('#about_scrollable');
        if (timelineScroll.length > 0) {
            timelineScroll.tinyscrollbar();
        }

        $(document).pngFix();
    })
</script>

</asp:Content>

