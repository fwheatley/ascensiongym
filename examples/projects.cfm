<cfset variables.sTitle = "Projects">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content projects">
  <div class="container">

    <h2>Projects</h2>
    <p class="big grey">Something Goes Here.</p>
    <hr />

                        <div class="row">

                           <div class="col-md-8 col-sm-8">
                            <!-- Title -->
                              <h3>Interdum Mauris Velehicula</h3>
                              <!-- Project slideshow. Default Bootstrap Carousel used  -->
                              
                              <div id="carousel-example-generic" class="carousel slide">
                              
                                 <!-- Indicators -->
                                <ol class="carousel-indicators">
                                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>
  
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                  <div class="active item"><img src="img/photos/1.jpg" alt="" /></div>
                                  <div class="item"><img src="img/photos/2.jpg" alt="" /></div>
                                  <div class="item"><img src="img/photos/3.jpg" alt="" /></div>
                                  <div class="item"><img src="img/photos/4.jpg" alt="" /></div>
                                  <div class="item"><img src="img/photos/5.jpg" alt="" /></div>
                                </div>
                                
                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                  <span class="icon-prev"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                  <span class="icon-next"></span>
                                </a>
                                
                              </div>
                              
                              <hr />
                              
                           </div>          
                           
                           <div class="col-md-4 col-sm-4"> 
                              <!-- Project details -->
                              <div class="prdetails well">
                                 <!-- Project title -->
                                 <h6 class="title">Project Details</h6>
                                 <!-- Project para -->
                                 <p>Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat. </p>
                                 <hr />
                                 <strong>Tools Used</strong>
                                 <!-- List -->
                                 <ul>
                                    <li>HTML5/CSS3/jQuery</li>
                                    <li>PHP & MySQL</li>
                                    <li>WordPress Blog</li>
                                    <li>Zend Framework</li>
                                 </ul>
                                 <hr />
                                 <!-- Buttons -->
                                 <div class="button"><a href="#">Launch Project</a> </div>
                                 <br />
                              </div>
                           </div>
                        </div>

                           <div class="row">
                              <div class="col-md-12">
                               <div class="bor"></div>
                                 <div class="related-projects">
                                   <!-- Title -->
                                   <h5 class="title">Related Projects</h5>
                                   <!-- Image thumbnail with links -->
                                   <a href="#"><img src="img/photos/tn_1.jpg" alt="" /></a> 
                                   <a href="#"><img src="img/photos/tn_2.jpg" alt="" /></a> 
                                   <a href="#"><img src="img/photos/tn_3.jpg" alt="" /></a> 
                                   <a href="#"><img src="img/photos/tn_4.jpg" alt="" /></a> 
                                   <a href="#"><img src="img/photos/tn_5.jpg" alt="" /></a>

                                 </div>
                               <div class="bor"></div>
                              </div>
                           </div>

 


  <div class="border"></div>

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