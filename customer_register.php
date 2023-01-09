<?php 

    $active='Account';
    include("includes/header.php");

?>
   
    <div id="content"><!-- #content Begin -->
        <div class="container"><!-- container Begin -->
            <div class="col-md-12"><!-- col-md-12 Begin -->
                
                <ul class="breadcrumb"><!-- breadcrumb Begin -->
                    <li>
                        <a href="index.php"><i class="fa fa-home"></i> Trang chủ</a>
                    </li>
                    <li>
                        Đăng ký
                    </li>
                </ul><!-- breadcrumb Finish -->
                
            </div><!-- col-md-12 Finish -->
            
            <div class="col-md-12"><!-- col-md-12 Begin -->
                
                <div class="box"><!-- box Begin -->
                    
                    <div class="box-header"><!-- box-header Begin -->
                        
                        <center><!-- center Begin -->
                            
                            <h2> Đăng ký một tài khoản mới </h2>
                            
                        </center><!-- center Finish -->
                        
                        <form action="customer_register.php" method="post" enctype="multipart/form-data"><!-- form Begin -->
                            
                            <div class="form-group"><!-- form-group Begin -->
                                
                                <label>Họ và tên:</label>
                                
                                <input type="text" class="form-control" name="c_name" required value="<?php if(isset($_POST['c_name']) && $_POST['c_name'] != NULL){ echo $_POST['c_name']; } ?>">
                                
                            </div><!-- form-group Finish -->
                            
                            <div class="form-group"><!-- form-group Begin -->
                            
                                <label>Email:</label>
                                
                                <input type="email" class="form-control" name="c_email" required value="<?php if(isset($_POST['c_email']) && $_POST['c_email'] != NULL){ echo $_POST['c_email']; } ?>">
                            
                            </div><!-- form-group Finish -->
                        
                            <div class="form-group"><!-- form-group Begin -->
                                
                                <label>Số điện thoại:</label>
                                
                                <input type="number" class="form-control" name="c_contact" required value="<?php if(isset($_POST['c_contact']) && $_POST['c_contact'] != NULL){ echo $_POST['c_contact']; } ?>">
                                
                            </div><!-- form-group Finish -->

                            <div class="form-group"><!-- form-group Begin -->
                                
                                <label>Tên đăng nhập:</label>
                                
                                <input type="text" class="form-control" name="c_username" required value="<?php if(isset($_POST['c_username']) && $_POST['c_username'] != NULL){ echo $_POST['c_username']; } ?>">
                                
                            </div><!-- form-group Finish -->

                            <div class="form-group"><!-- form-group Begin -->
                                
                                <label>Nhập mật khẩu:</label>
                                
                                <input type="password" class="form-control" minlength="8" name="c_pass" required value="<?php if(isset($_POST['c_pass']) && $_POST['c_pass'] != NULL){ echo $_POST['c_pass']; } ?>">
                                
                            </div><!-- form-group Finish -->

                            <div class="form-group"><!-- form-group Begin -->
                                
                                <label>Nhập lại mật khẩu</label>
                                
                                <input type="password" class="form-control" minlength="8" name="c_pass2" required value="<?php if(isset($_POST['c_pass2']) && $_POST['c_pass2'] != NULL){ echo $_POST['c_pass2']; } ?>">
                                
                            </div><!-- form-group Finish -->
                            
                            <div class="form-group"><!-- form-group Begin -->
                                
                                <label>Địa chỉ:</label>
                                
                                <input type="text" class="form-control" name="c_address" required value="<?php if(isset($_POST['c_address']) && $_POST['c_address'] != NULL){ echo $_POST['c_address']; } ?>">
                                
                            </div><!-- form-group Finish -->
                            
                            <div class="form-group"><!-- form-group Begin -->
                                
                                <label>Ảnh Avatar của bạn</label>
                                
                                <input type="file" class="form-control form-height-custom" name="c_image">
                                
                            </div><!-- form-group Finish -->

                            <div class="text-center"><!-- text-center Begin -->
                                
                                <button type="submit" name="continue" class="btn btn-primary">
                                
                                    <i class="fa fa-user-md"></i> Tiếp tục
                                
                                </button>
                                
                            </div><!-- text-center Finish -->
                            
                        </form><!-- form Finish -->
                        
                    </div><!-- box-header Finish -->
                    
                </div><!-- box Finish -->
                
            </div><!-- col-md-12 Finish -->
            
        </div><!-- container Finish -->
    </div><!-- #content Finish -->
    
    <?php 
        
        include("includes/footer.php");
        
    ?>
        
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
    
    
</body>
</html>


<?php 

if(isset($_POST['continue'])){
    
    $c_name = $_POST['c_name'];
    
    $c_email = $_POST['c_email'];
    
    $c_contact = $_POST['c_contact'];
    
    $c_username = $_POST['c_username'];
    
    $c_pass = sha1($_POST['c_pass']);

    $c_pass2 = sha1($_POST['c_pass2']);
    
    $c_address = $_POST['c_address'];
    
    $c_image = $_FILES['c_image']['name'];
    
    $c_image_tmp = $_FILES['c_image']['tmp_name'];
    
    $c_ip = getRealIpUser();

    $check_username = "select * from customers where customer_username = '$c_username'";
    $run_check_username = mysqli_query($con, $check_username);

    $check_email = "select * from customers where customer_email = '$c_email'";
    $run_check_email = mysqli_query($con, $check_email);

    $check_contact = "select * from customers where customer_contact = '$c_contact'";
    $run_check_contact = mysqli_query($con, $check_contact);

    if ( ($c_pass != $c_pass2) ) {
        
        echo "<script>alert('Mật khẩu bạn nhập không khớp')</script>";
        
    }
    elseif( (mysqli_num_rows($run_check_username) > 0) ){

        echo "<script>alert('Tên đăng nhập đã tồn tại')</script>";

    }
    elseif( (mysqli_num_rows($run_check_email) > 0) ){

        echo "<script>alert('Email đã được đăng ký trên tài khoản khác')</script>";

    }
    elseif( (mysqli_num_rows($run_check_contact) > 0) ){

        echo "<script>alert('Số điện thoại đã được đăng ký trên tài khoản khác')</script>";

    }
    else{

        if( is_uploaded_file($_FILES['c_image']['tmp_name']) ){

            move_uploaded_file($c_image_tmp,"customer/customer_images/$c_image");
            
            $insert_customer = "insert into customers (customer_name, customer_email, customer_contact, customer_username, customer_pass, customer_address, customer_image, customer_ip) values ('$c_name','$c_email','$c_contact','$c_username','$c_pass','$c_address','$c_image','$c_ip')";
            
            $code_sent = random_int(100000, 999999);

            $code_sent = (string)$code_sent;

            //goi thu vien
            include("functions/class.smtp.php");
            include "functions/class.phpmailer.php"; 
            $nFrom = "Su Store";    //mail duoc gui tu dau, thuong de ten cong ty ban
            $mFrom = "mailtestforworkofstudy@gmail.com";  //dia chi email cua ban 
            $mPass = "ilndgnquxhqxtpmp";       //mat khau email cua ban
            $nTo = $c_name; //Ten nguoi nhan
            $mTo = $c_email;   //dia chi nhan mail
            $mail             = new PHPMailer();
            $body             = "Chào $c_name, Chúng tôi đã nhận được yêu cầu đăng ký tài khoản của bạn. Nhập mã sau để xác nhận email: $code_sent";   // Noi dung email
            $title            = "$code_sent là mã xác nhận email của bạn";   //Tieu de gui mail
            $mail->IsSMTP();             
            $mail->CharSet  = "utf-8";
            $mail->SMTPDebug  = 0;   // enables SMTP debug information (for testing)
            $mail->SMTPAuth   = true;    // enable SMTP authentication
            $mail->SMTPSecure = "ssl";   // sets the prefix to the servier
            $mail->Host       = "smtp.gmail.com";    // sever gui mail.
            $mail->Port       = 465;         // cong gui mail de nguyen
            // xong phan cau hinh bat dau phan gui mail
            $mail->Username   = $mFrom;  // khai bao dia chi email
            $mail->Password   = $mPass;              // khai bao mat khau
            $mail->SetFrom($mFrom, $nFrom);
            $mail->AddReplyTo('mailtestforworkofstudy@gmail.com', 'Su Store'); //khi nguoi dung phan hoi se duoc gui den email nay
            $mail->Subject    = $title;// tieu de email 
            $mail->MsgHTML($body);// noi dung chinh cua mail se nam o day.
            $mail->AddAddress($mTo, $nTo);
            // thuc thi lenh gui mail 
            if(!$mail->Send()) {

                echo "<script>alert('Có lỗi xảy ra')</script>";
        
                exit();
                                            
            } 
            else {

                $_SESSION['code_sent']=$code_sent;

                $_SESSION['insert_customer']=$insert_customer;
                
                $_SESSION['username_register']=$c_username;

                $_SESSION['c_ip']=$c_ip;
                                            
                echo "<script>alert('Vui lòng kiểm tra email của bạn để tìm tin nhắn có mã của bạn. Mã của bạn dài 6 số.')</script>";
        
                echo "<script>window.open('confirm_mail_register.php','_self')</script>";

            }

        }
        else{

            $insert_customer = "insert into customers (customer_name, customer_email, customer_contact, customer_username, customer_pass, customer_address, customer_image, customer_ip) values ('$c_name','$c_email','$c_contact','$c_username','$c_pass','$c_address','User.jpg','$c_ip')";
            
            $code_sent = random_int(100000, 999999);

            $code_sent = (string)$code_sent;

            //goi thu vien
            include("functions/class.smtp.php");
            include "functions/class.phpmailer.php"; 
            $nFrom = "Su Store";    //mail duoc gui tu dau, thuong de ten cong ty ban
            $mFrom = "mailtestforworkofstudy@gmail.com";  //dia chi email cua ban 
            $mPass = "ilndgnquxhqxtpmp";       //mat khau email cua ban
            $nTo = $c_name; //Ten nguoi nhan
            $mTo = $c_email;   //dia chi nhan mail
            $mail             = new PHPMailer();
            $body             = "Chào $c_name, Chúng tôi đã nhận được yêu cầu đăng ký tài khoản của bạn. Nhập mã sau để xác nhận email: $code_sent";   // Noi dung email
            $title            = "$code_sent là mã xác nhận email của bạn";   //Tieu de gui mail
            $mail->IsSMTP();             
            $mail->CharSet  = "utf-8";
            $mail->SMTPDebug  = 0;   // enables SMTP debug information (for testing)
            $mail->SMTPAuth   = true;    // enable SMTP authentication
            $mail->SMTPSecure = "ssl";   // sets the prefix to the servier
            $mail->Host       = "smtp.gmail.com";    // sever gui mail.
            $mail->Port       = 465;         // cong gui mail de nguyen
            // xong phan cau hinh bat dau phan gui mail
            $mail->Username   = $mFrom;  // khai bao dia chi email
            $mail->Password   = $mPass;              // khai bao mat khau
            $mail->SetFrom($mFrom, $nFrom);
            $mail->AddReplyTo('mailtestforworkofstudy@gmail.com', 'Su Store'); //khi nguoi dung phan hoi se duoc gui den email nay
            $mail->Subject    = $title;// tieu de email 
            $mail->MsgHTML($body);// noi dung chinh cua mail se nam o day.
            $mail->AddAddress($mTo, $nTo);
            // thuc thi lenh gui mail 
            if(!$mail->Send()) {

                echo "<script>alert('Có lỗi xảy ra')</script>";
        
                exit();
                                            
            } 
            else {

                $_SESSION['code_sent']=$code_sent;

                $_SESSION['insert_customer']=$insert_customer;
                
                $_SESSION['username_register']=$c_username;

                $_SESSION['c_ip']=$c_ip;
                                            
                echo "<script>alert('Vui lòng kiểm tra email của bạn để tìm tin nhắn có mã của bạn. Mã của bạn dài 6 số.')</script>";
        
                echo "<script>window.open('confirm_mail_register.php','_self')</script>";

            }

        }

    }

}

?>