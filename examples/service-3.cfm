<cfset variables.sTitle = "Service 3">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content service-three">
  <div class="container">

  <h2>Service</h2>
  <p class="big grey">Here are the stuffs which we do.</p>
  <hr />

  <div class="row">

     <div class="col-md-3 col-sm-3">
      <!-- Service title with tag -->
        <h6 class="bold grey">SOME TAG</h6>
        <h3>What We Do In Free Time?</h3>
        <p>Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
        <a href="#">Check out everything <i class="icon-double-angle-right"></i> </a>
        <hr />
     </div>

     <div class="col-md-7 col-sm-7">

        <!--  Service #1 -->
        <!-- Service icon -->
        <div class="service-icon red">
          <i class="icon-camera"></i>
        </div>

        <div class="service-content">
          <!-- Title -->
          <h5>We Design Websites</h5>
          <p>Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
        </div>

        <hr />

        <!-- Service #2 -->

        <div class="service-icon orange">
          <i class="icon-desktop"></i>
        </div>

        <div class="service-content">
          <h5>Our Designs are Responsive</h5>
          <p>Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
        </div>

        <hr />   

        <!-- Service #3 -->

        <div class="service-icon lblue">
          <i class="icon-cloud"></i>
        </div>

        <div class="service-content">
          <h5>Everything in Cloud</h5>
          <p>Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
        </div>
        
        <hr />

        <!-- Service #4 -->

        <div class="service-icon purple">
          <i class="icon-user"></i>
        </div>

        <div class="service-content">
          <h5>Top Notch Support</h5>
          <p>Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
        </div>
        
        <br />


        <div class="clearfix"></div>

     </div>

     <div class="col-md-2 col-sm-2">
      <h6 class="grey bold">Check This</h6>
      <ul>
        <li><a href="#">Condimentum</a></li>
        <li><a href="#">Etiam at</a></li>
        <li><a href="#">Fusce vel</a></li>
        <li><a href="#">Vivamus</a></li>
        <li><a href="#">Pellentesque</a></li>
      </ul>

     </div>

  </div>

<div class="border"></div>

<!-- Services Ends -->


<!-- Product & links starts -->

<div class="prod">
    <div class="row">
      <div class="col-md-4">
        <div class="home-links">
          <div class="col-l">
            <h5>Downloads</h5>
            <ul>
              <li><a href="#">Linux 8</a></li>
              <li><a href="#">PlayStation</a></li>
              <li><a href="#">GTalk</a></li>
              <li><a href="#">Google Search</a></li>
              <li><a href="#">Linux Phone</a></li>
            </ul>
          </div>
          <div class="col-r">
            <h5>Support</h5>
            <ul>
              <li><a href="#">Linux Update</a></li>
              <li><a href="#">PlayStation</a></li>
              <li><a href="#">GTalk</a></li>
              <li><a href="#">Google Search</a></li>
              <li><a href="#">Linux Phone</a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-8"> 
        <div class="home-product">
          <div class="home-prod-img" id="s1">
              <img src="img/photos/s1.jpg" class="img-responsive" alt=""/>
              <img src="img/photos/s2.jpg" class="img-responsive" alt=""/>
              <img src="img/photos/s3.jpg" class="img-responsive" alt=""/>
          </div>
          <h3>Canonical Linux 8</h3>
          <p>Aliquam ut feugiat ante. Curabitur justo aliquam. Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna. Aliquam ut feugiat ante. Curabitur justo aliquam. Aliquam ut feugiat ante. Curabitur justo aliquam. </p>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>

<!-- Product & links ends --> 

  </div>
</div>

<cfinclude template="footer.cfm" >