<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>로그인</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/pp/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/pp/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/pp/assets/libs/css/style.css">
    <link rel="stylesheet" href="/pp/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<script type="text/javascript">
    
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.MBUSER.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.MBUSER.focus();
                return false;
            }
            if(!inputForm.MBPW.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.MBPW.focus();
                return false;
            }
        }
    
        // 회원가입 버튼 클릭시 회원가입 화면으로 이동
        function goJoinForm() {
            location.href="/pp/JoinForm.do";
        }    
</script>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="index.jsp"><img class="logo-img" src="/pp/assets/images/logo5.png" alt="logo" width="250px"></a></div>
            <div class="card-body">
                <form name="LoginInfo" method="post" action="LoginPro.do" onsubmit="return checkValue()">
                    <div class="form-group">
                        <input class="form-control form-control-lg" name="MBUSER" type="text" placeholder="Userid" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" name="MBPW" type="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <!-- <label class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox"><span class="custom-control-label">Remember Me</span>
                        </label> -->
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
                </form>
            </div>
            <div class="card-footer bg-white p-0  ">
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="signup.do" class="footer-link">회원가입</a></div>
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="#" class="footer-link">비밀번호 찾기</a>
                </div>
            </div>
        </div>
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/pp/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/pp/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
 
</html>