<cfset variables.sTitle = "Products">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >
	
<div class="content">
  <div class="container">

    <h2>Products</h2>
    <p class="big grey">Something Goes Here.</p>
    <hr />


        <!-- List of products list. -->
                     
                     <div class="prod">
                        <div class="row">
                           <div class="col-md-8 col-sm-8">
                              <!-- Product title -->
                              <h3>Interdum Mauris Velehicula</h3>
                              <!-- Product para -->
                              <p>Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat. Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat.</p>
                              <!-- Product image -->
                              <div class="pimg">
                                 <a href="#"><img src="img/photos/1.jpg" alt="" class="img-responsive"/></a>
                              </div>
                           </div>                        
                           <div class="col-md-4 col-sm-4"> 
                              <!-- Product details -->
                              <div class="pdetails">
                                 <div class="ptable">
                                    <!-- Product details with font awesome icon. Don't forget the span class "pull-right". -->
                                    <div class="pline"><i class="icon-gift"></i> Product Name <span class="pull-right">Web Analy</span></div>
                                    <div class="pline"><i class="icon-cloud"></i> License <span class="pull-right">MIT License</span></div>
                                    <div class="pline"><i class="icon-bullhorn"></i> Product Size <span class="pull-right">300 MB</span></div>
                                    <div class="pline"><i class="icon-truck"></i> Price <span class="pull-right">$40.99</span></div>
                                    <div class="clearfix"></div>
                                 </div>
                                 <!-- Buttons -->
                                 <div class="button center"><a href="#"><i class="icon-shopping-cart"></i> Buy Now</a> <a href="#">Try Now</a></div>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </div>
                     </div>

                     <div class="prod">
                        <div class="row">
                           <div class="col-md-8 col-sm-8">
                              <!-- Product title -->
                              <h3>Phasellus condimentum rutrum</h3>
                              <!-- Product para -->
                              <p>Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat. Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat.</p>
                              <!-- Product image -->
                              <div class="pimg">
                                 <a href="#"><img src="img/photos/2.jpg" alt="" class="img-responsive"/></a>
                              </div>
                           </div>                        
                           <div class="col-md-4 col-sm-4"> 
                              <!-- Product details -->
                              <div class="pdetails">
                                 <div class="ptable">
                                    <!-- Product details with font awesome icon. Don't forget the span class "pull-right". -->
                                    <div class="pline"><i class="icon-gift"></i> Product Name <span class="pull-right">Web Analy</span></div>
                                    <div class="pline"><i class="icon-cloud"></i> License <span class="pull-right">MIT License</span></div>
                                    <div class="pline"><i class="icon-bullhorn"></i> Product Size <span class="pull-right">300 MB</span></div>
                                    <div class="pline"><i class="icon-truck"></i> Price <span class="pull-right">$40.99</span></div>
                                    <div class="clearfix"></div>
                                 </div>
                                 <!-- Buttons -->
                                 <div class="button center"><a href="#"><i class="icon-shopping-cart"></i> Buy Now</a> <a href="#">Try Now</a></div>
                              </div>
                           </div>
                           <div class="clearfix"></div>
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