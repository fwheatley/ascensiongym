<cfset variables.sTitle = "Contact Us 2">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >
	
<div class="content contact">
  <div class="container">

  <h2>Contact Us</h2>
  <p class="big grey">Come on lets have a drink.</p>
  <hr />
            
  <div class="row"> 
        
                              <div class="col-md-6 col-sm-6">
                                 <!-- Contact form -->
                                    <h5>Contact Form</h5>
                                    <hr />
                                    <div class="form">
                                      <!-- Contact form (not working)-->
                                      <form class="form-horizontal">
                                          <!-- Name -->
                                          <div class="form-group">
                                            <label class="control-label col-md-3" for="name">Name</label>
                                            <div class="col-md-9">
                                              <input type="text" class="form-control" id="name">
                                            </div>
                                          </div>
                                          <!-- Email -->
                                          <div class="form-group">
                                            <label class="control-label col-md-3" for="email">Email</label>
                                            <div class="col-md-9">
                                              <input type="text" class="form-control" id="email">
                                            </div>
                                          </div>
                                          <!-- Website -->
                                          <div class="form-group">
                                            <label class="control-label col-md-3" for="website">Website</label>
                                            <div class="col-md-9">
                                              <input type="text" class="form-control" id="website">
                                            </div>
                                          </div>
                                          <!-- Comment -->
                                          <div class="form-group">
                                            <label class="control-label col-md-3" for="comment">Comment</label>
                                            <div class="col-md-9">
                                              <textarea class="form-control" id="comment" rows="3"></textarea>
                                            </div>
                                          </div>
                                          <!-- Buttons -->
                                          <div class="form-group">
                                             <!-- Buttons -->
                                            <div class="col-md-9 col-md-offset-3">
                                                <button type="submit" class="btn btn-default">Submit</button>
                                                <button type="reset" class="btn btn-default">Reset</button>
                                             </div>
                                          </div>
                                      </form>
                                    </div>
                                    <hr />        
                                           <!-- Social media icons -->
                                           <h5>Get in touch:</h5>
                                           <div class="social">
                                                <a href="#"><i class="icon-facebook facebook"></i></a>
                                                <a href="#"><i class="icon-twitter twitter"></i></a>
                                                <a href="#"><i class="icon-linkedin linkedin"></i></a>
                                                <a href="#"><i class="icon-google-plus google-plus"></i></a>
                                                <a href="#"><i class="icon-pinterest pinterest"></i></a>
                                           </div>

                           </div>
                           <div class="col-md-6 col-sm-6">
                              <h5>Google Map</h5>
                              <hr />
                              <!-- Google maps -->
                              <div class="gmap">
                                 <!-- Google Maps. Replace the below iframe with your Google Maps embed code -->
                                 <iframe height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Google+India+Bangalore,+Bennigana+Halli,+Bangalore,+Karnataka&amp;aq=0&amp;oq=google+&amp;sll=9.930582,78.12303&amp;sspn=0.192085,0.308647&amp;ie=UTF8&amp;hq=Google&amp;hnear=Bennigana+Halli,+Bangalore,+Bengaluru+Urban,+Karnataka&amp;t=m&amp;ll=12.993518,77.660294&amp;spn=0.012545,0.036006&amp;z=15&amp;output=embed"></iframe>
                              </div>
                              
                              <hr />
                                    <!-- Address section -->
                                       <h5 class="title">Address</h5>
                                       <div class="address">
                                           <address>
                                              <!-- Company name -->
                                              Responsive Web, Inc.<br>
                                              <!-- Address -->
                                              795 Folsom Ave, Suite 600<br>
                                              San Francisco, CA 94107<br>
                                              <!-- Phone number -->
                                              <abbr title="Phone">P:</abbr> (123) 456-7890.
                                           </address>
                                            
                                           <address>
                                              <!-- Name -->
                                              Full Name<br>
                                              <!-- Email -->
                                              <a href="mailto:#">first.last@gmail.com</a>
                                           </address> 
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