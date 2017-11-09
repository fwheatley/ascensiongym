<cfset variables.sTitle = "About Us 1">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >
	
<div class="content">
  <div class="container">

    <div class="row">

      <div class="col-md-3 col-sm-3">
      <!-- Service title with tag -->
        <h5>What We Do In Free Time?</h5>
        <p>Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
        <a href="#">Check out everything <i class="icon-double-angle-right"></i> </a>

        <hr />

        <div class="form">
          <h6>Search</h6>
          <form class="form-inline">
			<div class="form-group">
				<input type="text" value="" name="s" id="s" class="form-control"/>
			</div>
            <button type="submit" class="btn btn-default">Search</button>
		  </form>
        </div>
      </div>

      <div class="col-md-7 col-sm-7">
        <h3>About Us</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate eros nec odio egestas in dictum nisi vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse porttitor luctus imperdiet. <a href="#">Praesent ultricies</a> enim ac ipsum aliquet pellentesque. </p>
<br />
<a href="#"><img src="img/photos/1.jpg" alt="" class="img-responsive" /></a>
<br /><br />
<ul>
  <li>Etiam adipiscing posuere justo, nec iaculis justo dictum non</li>
  <li>Cras tincidunt mi non arcu hendrerit eleifend</li>
  <li>Aenean ullamcorper justo tincidunt justo aliquet et lobortis diam faucibus</li>
  <li>Maecenas hendrerit neque id ante dictum mattis</li>
  <li>Vivamus non neque lacus, et cursus tortor</li>
</ul>

<p>Nulla facilisi. Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat. Proin rutrum, erat eget posuere semper, <em>arcu mauris posuere tortor</em>, in commodo enim magna id massa. Suspendisse potenti. Aliquam erat volutpat. Maecenas quis tristique turpis. Nulla facilisi. Duis sed velit at ac ultrices magna. Aliquam consequat, purus vitae auctor ullamcorper, sem velit convallis quam, a pharetra justo nunc et mauris. Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>

       <div class="col-md-2 col-sm-2">
        <h6 class="grey bold">Clients</h6>
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