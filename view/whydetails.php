 <div class="row no-gutter">
         
                       <?php 
						$uce = new HomeWelcome();
						$uce->Id = $_GET['id'];
						$uce->SelectById();
						
						?>

         <div class="row gutter k-equal-height"><!-- row -->
            <div class="news-mini-wrap col-lg-6 col-md-6"><!-- news mini-wrap -->
                
                                
            <div class="page-title-meta">
               <h1 class="page-title">
                 <a href="#" title="Cody Rotschild enjoys..."></a></h1>
        
        <div class="news-meta">
           <span class="news-meta-date"></span>
               <span class="news-meta-category">
                   <a href="news.html" title="News"></a></span>
                      <span class="news-meta-comments">
                           <a href="#" title="3 comments"></a></span>
                                    </div>
                                </div>
                                
                                <div class="news-summary">
                                    <p>
                                    <?php FileRead("files/" . $uce->Name);?>
                                    
                                    </p>
                                </div>
                            
                            </div><!-- news mini-wrap end -->
                            
                            
                            
                            
                        </div><!-- row end -->
 
 </div>