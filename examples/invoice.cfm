<cfset variables.sTitle = "Invoice">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
  <div class="container">

    <h2>Invoice</h2>
    <p class="big grey">Something Goes Here.</p>
    <hr />

    <div class="row">


                      <div class="col-md-4 col-sm-4">
                        <h5>MacBeath</h5>
                        <p>
                          19/133, New New York Street<br>
                          Near Bus Stop, Right side <br>
                          Mexico, NY - 63442<br>
                          USA
                        </p>
                        <hr />
                      </div>

                      <div class="col-md-4 col-sm-4">
                        <h5>MacMedia</h5>
                        <p>
                          24/133, Mexico Street<br>
                          Near Airport, Right side <br>
                          Mexico, CA - 53432<br>
                          Mexico
                        </p>                        
                        <hr />
                      </div>

                      <div class="col-md-4 col-sm-4">
                        <h5>Invoice</h5>
                        <p>
                          Invoice No : 52322<br>
                          Date : 12/34/2012<br>
                          Account No : 4290293203
                        </p>
                        <hr />
                      </div>



                      <div class="col-md-12">
                        <hr />
                        <table class="table table-striped table-hover table-bordered">
                          <thead>
                            <tr>
                              <th>#</th>
                              <th>Name</th>
                              <th>Quantity</th>
                              <th>Unit Price</th>
                              <th>Tax</th>
                              <th>Total</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>1</td>
                              <td>Sony Xperia Pro X1242</td>
                              <td>5</td>
                              <td>$534</td>
                              <td>12.5%</td>
                              <td>$2424</td>
                            </tr>     
                            <tr>
                              <td>2</td>
                              <td>Samsung Galaxy Pro</td>
                              <td>2</td>
                              <td>$244</td>
                              <td>12.5%</td>
                              <td>$5342</td>
                            </tr>  
                            <tr>
                              <td>3</td>
                              <td>Apple iPhone 5G - Black</td>
                              <td>7</td>
                              <td>$434</td>
                              <td>12.5%</td>
                              <td>$34524</td>
                            </tr>  
                            <tr>
                              <td>4</td>
                              <td>Nokia Lumina Tipo - Windows Mobile</td>
                              <td>4</td>
                              <td>$754</td>
                              <td>12.5%</td>
                              <td>$8866</td>
                            </tr>  
                            <tr>
                              <td>5</td>
                              <td>Motorola Defy 29323</td>
                              <td>5</td>
                              <td>$644</td>
                              <td>12.5%</td>
                              <td>$88865</td>
                            </tr>  
                            <tr>
                              <td>6</td>
                              <td>Micromax Funbook - Android Tablet</td>
                              <td>9</td>
                              <td>$434</td>
                              <td>12.5%</td>
                              <td>$53535</td>
                            </tr>                                                                                                                                                                
                            <tr>  
                              <td></td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td><strong>Total</strong></td>
                              <td><strong>$2405</strong></td>
                            </tr>
                          </tbody>
                        </table>

                        <div class="button pull-right">
                          <a href="#">Send Invoice</a>
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