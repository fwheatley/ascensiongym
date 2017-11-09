<cfset variables.sTitle = "Tasks">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
  <div class="container">

  <h2>Tasks</h2>
  <p class="big grey">Something Goes Here.</p>
  <hr />

 
  <div class="row tasks">
    <div class="col-md-12">

      <h5>Today 24/12/2012</h5>

      <!-- Add the class "important" or "cool" for red and green border -->

      <div class="task important">
        <h6>Aliquam fringilla mauris lectus</h6>
        <div class="tmeta"><i class="icon-calendar"></i> 25/2/2012 - <i class="icon-pushpin"></i> Chennai, Tamil Nadu</div>
        <p>Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna.  Aliquam ut pharetra erat. Nulla semper odio et turpis hendrerit tempor</p>
      </div>

      <div class="task cool">
        <h6>Aliquam fringilla mauris lectus</h6>
        <div class="tmeta"><i class="icon-calendar"></i> 25/2/2012 - <i class="icon-pushpin"></i> Chennai, Tamil Nadu</div>
        <p>Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna.  Aliquam ut pharetra erat. Nulla semper odio et turpis hendrerit tempor</p>
      </div>

      <div class="task">
        <h6>Aliquam fringilla mauris lectus</h6>
        <div class="tmeta"><i class="icon-calendar"></i> 25/2/2012 - <i class="icon-pushpin"></i> Chennai, Tamil Nadu</div>
        <p>Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna.  Aliquam ut pharetra erat. Nulla semper odio et turpis hendrerit tempor</p>
      </div>

      <h5>Yesterday 14/12/2012</h5>

      <div class="task cool">
        <h6>Aliquam fringilla mauris lectus</h6>
        <div class="tmeta"><i class="icon-calendar"></i> 25/2/2012 - <i class="icon-pushpin"></i> Chennai, Tamil Nadu</div>
        <p>Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna.  Aliquam ut pharetra erat. Nulla semper odio et turpis hendrerit tempor</p>
      </div>

      <div class="task important">
        <h6>Aliquam fringilla mauris lectus</h6>
        <div class="tmeta"><i class="icon-calendar"></i> 25/2/2012 - <i class="icon-pushpin"></i> Chennai, Tamil Nadu</div>
        <p>Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna.  Aliquam ut pharetra erat. Nulla semper odio et turpis hendrerit tempor</p>
      </div>

      <div class="task">
        <h6>Aliquam fringilla mauris lectus</h6>
        <div class="tmeta"><i class="icon-calendar"></i> 25/2/2012 - <i class="icon-pushpin"></i> Chennai, Tamil Nadu</div>
        <p>Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna.  Aliquam ut pharetra erat. Nulla semper odio et turpis hendrerit tempor</p>
      </div>                              

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