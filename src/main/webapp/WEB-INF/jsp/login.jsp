<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/base.jsp"%>
<!DOCTYPE html>
<html >
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>登录</title>
	
	<link rel="stylesheet" href="${cxt }/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${cxt }/js/bootstrapValidator/css/bootstrapValidator.css"/>
    
	<link rel="stylesheet" type="text/css" href="${ctx}/css/admin.css" >
	
	<link href="${ctx}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
        	<div class="login-box">
            <div class="page-header">
                <h2>后台登录</h2>
            </div>

            <form id="defaultForm" method="post" class="form-horizontal" action="loginmain"
            	data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                <div class="form-group">
                    <label class="col-lg-3 control-label">用户名：</label>
                    <div class="col-lg-5">
                    <i class="glyphicon glyphicon-user"></i>
                        <input type="text" class="form-control" name="loginName" required data-bv-notempty-message="用户名必填"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">密码：</label>
                    <div class="col-lg-5">
                    	<i class="fa fa-lock"></i>
                        <input type="password" class="form-control " name="password" required data-bv-notempty-message="密码必填"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-2 col-lg-offset-3">
                        <button type="submit" name="sub" class="btn btn-danger">登录</button>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>

	<script type="text/javascript" src="${ctx}/js/jquery-1.11.3.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="${cxt }/bootstrap/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${cxt }/js/bootstrapValidator/bootstrapValidator.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('#defaultForm').bootstrapValidator();
  
});
</script>
</body>
	
</html>