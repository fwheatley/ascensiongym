<cfset variables.sTitle = "404-2">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >
<div class="content">
  <div class="container">

    <div class="row">
      <div class="col-md-4 col-sm-4">  
        <div class="big-text">404</div>
        <hr />
      </div>
      <div class="col-md-7 col-md-offset-1 col-sm-7 col-sm-offset-1">
        <h2>Oops<span class="color">!!!</span></h2>
        <h4>Page Not Found</h4>
        <hr />
        <!-- Some links -->
        <div class="link-list">
          <h5>Take a look around our site</h5>
          <a href="#">Home</a> <a href="#">About us</a> <a href="#">Support</a> <a href="#">Contact Us</a> <a href="#">Disclaimer</a>
        </div>
        <hr />
        <!-- Search form -->
        <div class="form">
          <form class="form-inline">
			<div class="form-group">
				<input type="text" value="" name="s" id="s" class="form-control"/>
			</div>
			<button type="submit" class="btn btn-default">Search</button>
		  </form>
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