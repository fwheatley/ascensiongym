<cfset variables.sTitle = "Gallery">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
  <div class="container">

  <h2>Gallery</h2>
  <p class="big grey">Something Goes Here.</p>
  <hr />

  <div class="row">
    <div class="col-md-12 col-sm-12">

                        
          <!-- For image lightbox you need to include "a" tag pointing to image link, along with the class "prettyphoto".-->
          <div class="gallery">
            <!-- Full size image link in anchor tag. Thumbnail link in image tag. -->
            <a href="img/portfolio/1.jpg" class="prettyphoto"><img src="img/portfolio/tn_1.jpg" alt=""></a>
            <a href="img/portfolio/2.jpg" class="prettyphoto"><img src="img/portfolio/tn_2.jpg" alt=""></a>
            <a href="img/portfolio/3.jpg" class="prettyphoto"><img src="img/portfolio/tn_3.jpg" alt=""></a>
            <a href="img/portfolio/4.jpg" class="prettyphoto"><img src="img/portfolio/tn_4.jpg" alt=""></a>
            <a href="img/portfolio/5.jpg" class="prettyphoto"><img src="img/portfolio/tn_5.jpg" alt=""></a>
            <a href="img/portfolio/6.jpg" class="prettyphoto"><img src="img/portfolio/tn_6.jpg" alt=""></a>
            <a href="img/portfolio/7.jpg" class="prettyphoto"><img src="img/portfolio/tn_7.jpg" alt=""></a>
            <a href="img/portfolio/8.jpg" class="prettyphoto"><img src="img/portfolio/tn_8.jpg" alt=""></a>
            <a href="img/portfolio/9.jpg" class="prettyphoto"><img src="img/portfolio/tn_9.jpg" alt=""></a>   
          </div>

    </div>
  </div>

  <div class="border"></div>

<!-- Product & links starts -->

<div class="prod">
    <div class="row">
      <div class="col-md-4 col-sm-4">
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
      <div class="col-md-8 col-sm-8"> 
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