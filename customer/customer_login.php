<div class="box"><!-- box Begin -->
    
    <div class="box-header"><!-- box-header Begin -->
        
        <center><!-- center Begin -->
            
            <h1> Đăng nhập </h1>
            
            <p class="lead"> Bạn đã có tài khoản..? </p>
            
            <p class="text-muted"> Chào mừng bạn đã đến với Su Store </p>
            
        </center><!-- center Finish -->
        
    </div><!-- box-header Finish -->
   
    <form method="post" action="checkout.php"><!-- form Begin -->
        
        <div class="form-group"><!-- form-group Begin -->
            
            <label> Tên tài khoản </label>
            
            <input name="c_username" type="text" class="form-control" required value="<?php if(isset($_POST['c_username']) && $_POST['c_username'] != NULL){ echo $_POST['c_username']; } ?>">
            
        </div><!-- form-group Finish -->
        
        <div class="form-group"><!-- form-group Begin -->
            
            <label> Mật khẩu </label>
            
            <input name="c_pass" type="password" class="form-control" required value="<?php if(isset($_POST['c_pass']) && $_POST['c_pass'] != NULL){ echo $_POST['c_pass']; } ?>">
            
        </div><!-- form-group Finish -->
        
        <div class="text-center"><!-- text-center Begin -->
            
            <button name="login" value="Login" class="btn btn-primary">
                
                <i class="fa fa-sign-in"></i> Đăng nhập
                
            </button>
            
        </div><!-- text-center Finish -->     
        
    </form><!-- form Finish -->
   
    <center><!-- center Begin -->
        
        <a href="customer_register.php">
            
            <h3> Bạn chưa có tài khoản..? Bấm vào đây để đăng ký </h3>
            
        </a>
        
    </center><!-- center Finish -->

    <center><!-- center Begin -->
        
        <a href="forgot_password.php">
            
            <h3> Quên mật khẩu? </h3>
            
        </a> 
        
    </center><!-- center Finish -->
    
</div><!-- box Finish -->


<?php 

if(isset($_POST['login'])){
    
    $customer_username = $_POST['c_username'];
    
    $customer_pass = sha1($_POST['c_pass']);
    
    $select_customer = "select * from customers where customer_username='$customer_username' AND customer_pass='$customer_pass'";
    
    $run_customer = mysqli_query($con,$select_customer);
    
    $get_ip = getRealIpUser();
    
    $check_customer = mysqli_num_rows($run_customer);
    
    $select_cart = "select * from cart where ip_add='$get_ip'";
    
    $run_cart = mysqli_query($con,$select_cart);
    
    $check_cart = mysqli_num_rows($run_cart);
    
    if($check_customer==0){
        
        echo "<script>alert('Email hoặc mật khẩu của bạn sai')</script>";
        
        exit();
        
    }
    
    if($check_customer==1 AND $check_cart==0){
        
        $_SESSION['customer_username']=$customer_username;
        
       echo "<script>alert('Bạn đã đăng nhập')</script>"; 
        
       echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
        
    }
    else{
        
        $_SESSION['customer_username']=$customer_username;
        
       echo "<script>alert('Bạn đã đăng nhập')</script>"; 
        
       echo "<script>window.open('checkout.php','_self')</script>";
        
    }
    
}

?>