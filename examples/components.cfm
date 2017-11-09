<cfset variables.sTitle = "Components">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >
	
<div class="content">
  <div class="container">

    <h2>Components</h2>
    <p class="big grey">Something Goes Here.</p>
    <hr />

    <div class="row">
      <div class="col-md-12 col-sm-12">




                    <!-- Progressbar -->

                    <h5>Progressbar</h5>
                    <hr />

                    <div class="progress">
					  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
						<span class="sr-only">80% Complete (success)</span>
					  </div>
					</div>
                    <div class="progress">
					  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
						<span class="sr-only">100% Complete (success)</span>
					  </div>
					</div>
                    <div class="progress">
					  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
						<span class="sr-only">70% Complete (success)</span>
					  </div>
					</div>
                    <div class="progress">
					  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
						<span class="sr-only">90% Complete (success)</span>
					  </div>
					</div>
                    <hr />  

                <!-- Button group -->

                  <h5>Button Group</h5>
                    <hr />
                    <div class="button">
                      <a href="#">Left</a>
                      <a href="#">Center</a>
                      <a href="#">Right</a>
                    </div>
                    <hr />


                    <!-- Tabs -->

<h5>Tabs</h5>
                    <hr />
                    <ul id="myTab" class="nav nav-tabs">
                      <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
                      <li><a href="#profile" data-toggle="tab">Profile</a></li>
                      <li><a href="#cont" data-toggle="tab">Content</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                      <div class="tab-pane fade in active" id="home">
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                      </div>
                      <div class="tab-pane fade" id="profile">
                        <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
                      </div>
                      <div class="tab-pane fade" id="cont">
                        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                      </div>
                    </div>
                    <hr />   

                    <!-- Pagination -->

                    <h5>Pagination</h5>
                    <hr />
                    
                      <ul class="pagination">
                        <li><a href="#">Prev</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">Next</a></li>
                      </ul>
                    
                    <hr />     
                    

                    <!-- Alerts -->

                    <h5>Alerts</h5>
                    <hr />
                    <div class="alert alert-warning">
                      Oh snap! Change a few things up and try submitting again.
                    </div>
                    <div class="alert alert-success">
                      Well done! You successfully read this important alert message.
                    </div>
                    <div class="alert alert-info">
                      Heads up! This alert needs your attention, but it's not super important.
                    </div>                                        
                    <hr />

                <!-- Button Dropdown -->

                    <h5>Button Dropdown</h5>
                    <hr />
                    <div class="btn-group">
                      <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                      <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                      </ul>
                    </div>
                    <hr />


                    <!-- Labels -->

                    <h5>Labels</h5>
                    <hr />
                    <span class="label label-default">Default</span>
                    <span class="label label-success">Success</span>
                    <span class="label label-warning">Warning</span>
                    <span class="label label-info">Important</span>
                    <span class="label label-danger">Info</span>
                    <span class="label label-primary">Inverse</span>
                    <hr />

                    <!-- Badgets -->

                    <h5>Badges</h5>
                    <hr />
                    <span class="badge">1</span>
                    <span class="badge">2</span>
                    <span class="badge">3</span>
                    <span class="badge">4</span>
                    <span class="badge">5</span>
                    <span class="badge">6</span>
                    <hr />



                    <!-- Model -->


                    <h5>Modal</h5>
                    <hr />
                    <!-- Button to trigger modal -->
                    <a data-toggle="modal" href="#myModal" class="btn btn-default">Launch demo modal</a>
                     
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
					<div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Modal title</h4>
                      </div>
                      <div class="modal-body">
                        <p>One fine body…</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
                      </div>
                    </div>
					</div>
					</div>
                    <hr />   



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