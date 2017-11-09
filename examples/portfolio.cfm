<cfset variables.sTitle = "Portfolio">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
  <div class="container">

  <h2>Portfolio</h2>
  <p class="big grey">Something Goes Here.</p>
  <hr />

  <div class="row">
    <div class="col-md-12">

                    <div class="img-portfolio">
                    <p>
                        <!-- Add filter names inside "data-filter". For example ".web-design", ".seo", etc., Filter names are used to filter the below images. -->
                           <ul id="filters">
                             <li><a href="#" data-filter="*" class="btn btn-success">All</a></li>
                             <li><a href="#" data-filter=".one" class="btn btn-success">One</a></li>
                             <li><a href="#" data-filter=".two" class="btn btn-success">Two</a></li>
                             <li><a href="#" data-filter=".three" class="btn btn-success">Three</a></li>
                             <li><a href="#" data-filter=".four" class="btn btn-success">Four</a></li>
                             <li><a href="#" data-filter=".five" class="btn btn-success">Five</a></li>
                           </ul>
                    </p>
                        
                        
                    <div id="portfolio">
                        <!-- Add the above used filter names inside div tag. You can add more than one filter names. For image lightbox you need to include "a" tag pointing to image link, along with the class "prettyphoto". -->                        
                       <div class="element one three"><a href="img/portfolio/1.jpg" class="prettyphoto">
                           <img src="img/portfolio/1.jpg" alt=""/>
                           <!-- Portfolio caption -->
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>
                       </a></div>
                       <div class="element two one"><a href="img/portfolio/2.jpg" class="prettyphoto">
                           <img src="img/portfolio/2.jpg" alt=""/>
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>                           
                       </a></div>
                       <div class="element three five"><a href="img/portfolio/3.jpg" class="prettyphoto">
                           <img src="img/portfolio/3.jpg" alt=""/>
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>                           
                       </a></div>
                       <div class="element four two"><a href="img/portfolio/4.jpg" class="prettyphoto">
                           <img src="img/portfolio/4.jpg" alt=""/>
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>                           
                       </a></div>
                       <div class="element five one"><a href="img/portfolio/5.jpg" class="prettyphoto">
                           <img src="img/portfolio/5.jpg" alt=""/>
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>                           
                       </a></div> 
                       <div class="element four five"><a href="img/portfolio/6.jpg" class="prettyphoto">
                           <img src="img/portfolio/6.jpg" alt=""/>
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>                           
                       </a></div> 
                       <div class="element three one"><a href="img/portfolio/7.jpg" class="prettyphoto">
                           <img src="img/portfolio/7.jpg" alt=""/>
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>                           
                       </a></div>
                       <div class="element three one"><a href="img/portfolio/8.jpg" class="prettyphoto">
                           <img src="img/portfolio/8.jpg" alt=""/>
                           <div class="pcap">
                              <h4>Lorem ipsum dolor</h4>
                              <p>Sed justo dui, scelerisque ut  vel, eleifend id erat.</p>
                           </div>                           
                       </a></div>
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