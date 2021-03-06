<cfset variables.sTitle = "About Us">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
  <div class="container">

  <h2>About Us</h2>
  <p class="big grey">Something Goes Here.</p>
  <hr />

  
  <!-- About Us -->
   <div class="aboutus">
         <div class="row">
            <div class="col-md-12">
               <!-- Staff #1 -->
               <div class="row">
                  <div class="col-md-6 col-sm-6">
                     <div class="col-l">
                       <!-- Staff pic -->
                       <div class="pic">
                          <img src="img/ashok.jpg" alt="" class="img-responsive" />
                       </div>
                     </div>

                     <div class="col-r">
                       <div class="sinfo">
                          <!-- Name -->
                          <h4>Ravi Kumar Yadav</h4>
                          <!-- Designation -->
                          <h6 class="grey">CEO of Some Company.</h6>
                          <!-- Social media links. Replace # with profile links -->
                          <div class="social">
                             <a href="#" class="tip" data-original-title="Facebook"><i class="icon-facebook facebook"></i></a>
                             <a href="#" class="tip" data-original-title="Twitter"><i class="icon-twitter twitter"></i></a>
                             <a href="#" class="tip" data-original-title="Google Plus"><i class="icon-google-plus google-plus"></i></a>
                             <a href="#" class="tip" data-original-title="LinkedIn"><i class="icon-linkedin linkedin"></i></a>
                          </div>
                       </div>
                     </div>

                     <div class="clearfix"></div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                     <!-- Small para -->
                     <p class="ainfo">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate eros nec odio egestas in dictum nisi vehicula. Pellentesque habitant morbi fames ac turpis egestas. Suspendisse porttitor luctus imperdiet. Nullam justo nunc, dignissim at convallis posuere, sodales eu orci.</p>
                     <div class="button"><a href="#">Contact Me</a></div>
                  </div>
               </div>
               <hr />
               <!-- Staff #2 -->
               <div class="row">
                  <div class="col-md-6 col-sm-6">
                     <div class="col-l">
                       <!-- Staff pic -->
                       <div class="pic">
                          <img src="img/ashok.jpg" alt="" class="img-responsive" />
                       </div>
                     </div>

                     <div class="col-r">
                       <div class="sinfo">
                          <!-- Name -->
                          <h4>Ram Gopal Yadav</h4>
                          <!-- Designation -->
                          <h6 class="grey">CTO of Some Company.</h6>
                          <!-- Social media links. Replace # with profile links -->
                          <div class="social">
                             <a href="#" class="tip" data-original-title="Facebook"><i class="icon-facebook facebook"></i></a>
                             <a href="#" class="tip" data-original-title="Twitter"><i class="icon-twitter twitter"></i></a>
                             <a href="#" class="tip" data-original-title="Google Plus"><i class="icon-google-plus google-plus"></i></a>
                             <a href="#" class="tip" data-original-title="LinkedIn"><i class="icon-linkedin linkedin"></i></a>
                          </div>
                       </div>
                     </div>

                     <div class="clearfix"></div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                     <!-- Small para -->
                     <p class="ainfo">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate eros nec odio egestas in dictum nisi vehicula. Pellentesque habitant morbi fames ac turpis egestas. Suspendisse porttitor luctus imperdiet. Nullam justo nunc, dignissim at convallis posuere, sodales eu orci.</p>
                     <div class="button"><a href="#">Contact Me</a></div>
                  </div>
               </div>
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