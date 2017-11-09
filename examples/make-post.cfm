<cfset variables.sTitle = "Make Post">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
  <div class="container">

    <h2>Make Post</h2>
    <p class="big grey">Something Goes Here.</p>
    <hr />

    <div class="row make-post">

      <div class="col-md-8 col-sm-8">
        <div class="well">
          <h5>Make Post</h5>
          <hr />
          <input type="text" class="col-md-12" placeholder="Enter Title">
          <br />
		  <br />
          <button class="btn btn-default"><i class="icon-paper-clip"></i> Add Media</button>
          <br />
          <br />
          <textarea class="col-md-12" rows="7"></textarea>
			<br />
          <hr />
            <h6>Excerpt</h6>
            <p>You can add your experts here.</p>

            <textarea name="input" class="col-md-12"></textarea>


                    <hr />

                    <h6>Custom Field</h6>
                    <p>Add your custom fields here</p>
					<form class="form-inline">
						<div class="form-group">
							<div class="col-md-12">
								<input class="form-control" type="text" placeholder="Name">
							</div>
						</div>   
						<div class="form-group">
							<div class="col-md-12">
								<input class="form-control" type="text" placeholder="Value">
							</div>
						</div>
					</form>
        </div>
      </div>

      <div class="col-md-4 col-sm-4">

        <div class="well">
                    <form class="form-horizontal">

                      <h6>Category</h6>
                      <hr />
                      <div class="uni">
                        <label class="checkbox"><input type='checkbox' value='check1' /> General</label>
                        <label class="checkbox"><input type='checkbox' value='check2' /> Latest News</label>
                        <label class="checkbox"><input type='checkbox' value='check3' /> Health</label>
                      </div>

                      <hr />
                      <h6>Tags</h6>
                      <hr />
					  <div class="form-group">
					  <div class="col-md-12">
						<input class="form-control" type="text" placeholder="Tags" />
					  </div>
					  </div>
                      <hr />
						
						<div class="form-group">
						<div class="col-md-12">
						  <button class="btn btn-primary btn-sm">Publish</button>
						  <button class="btn btn-default btn-sm">Save Draft</button>
						  <button class="btn btn-danger btn-sm">Trash</button>
						 </div>
						</div>
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