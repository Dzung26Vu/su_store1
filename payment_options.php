<div class="box"><!-- box Begin -->
   
   <?php 
    
    $session_username = $_SESSION['customer_username'];
    
    $select_customer = "select * from customers where customer_username='$session_username'";
    
    $run_customer = mysqli_query($con,$select_customer);
    
    $row_customer = mysqli_fetch_array($run_customer);
    
    $customer_id = $row_customer['customer_id'];
    
    ?>
    
    <h1 class="text-center">Chọn phương thức thanh toán</h1>  
    
     <p class="lead text-center"><!-- lead text-center Begin -->
         
         <a href="order.php?c_id=<?php echo $customer_id ?>"> Thanh toán trực tuyến </a>
         
     </p><!-- lead text-center Finish -->
     
     <center><!-- center Begin -->
         
        <p class="lead"><!-- lead Begin -->
            
            <a href="#">
                
                Thanh toán ngoại tuyến
                
                <!-- <img class="img-responsive" src="images/paypall_img.png" alt="img-paypall"> -->
                
            </a>
            
        </p> <!-- lead Finish -->
         
     </center><!-- center Finish -->
    
</div><!-- box Finish -->