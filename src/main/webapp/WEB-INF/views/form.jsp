<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="postUrl2" value="/user/add2"/>
<c:url var="firstNameValidUrl" value="/user/valid"></c:url>
<!DOCTYPE html>
<html>
<jsp:include page="fragments/headTag.jsp"></jsp:include>
<body>
	<jsp:include page="fragments/navbar.jsp" />
	
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="fragments/menu.jsp"></jsp:include>
			<div class="span10">
				<div class="pageTitle">
					<h3>用户管理：新建用户</h3>
				</div>
				<form:form id="editForm" name="editForm" method="post" modelAttribute="user" cssClass="cleanform">
					<input type="radio" name="validType" value="default" checked="checked"/>简单校验
					<input type="radio" name="validType" value="complete"/>完整校验
					<div class="pageBlock">
						<div class="pbHeader bottomBtns">
							<button id="btnSave" class="btn">保存</button>
							<button class="btn">保存并新建</button>
							<button class="btn">取消</button>
						</div>
						<div class="pbBody">
							<div class="pbSubheader">
								<span class="pbSubExtra"><span class="requiredExample">&nbsp;</span> <span class="requiredText">=
										必填信息</span></span> <span>一般信息</span>
							</div>
							<div class="pbSubsection">
								<table class="detailList" >
									<tbody>
										<tr>
											<td class="labelCol requiredInput">
												<form:label path="firstName"><span class="red">*</span>姓</form:label></td>
											<td class="dataCol col02">
													<div class="requiredBlock"></div>
													<form:input path="firstName" cssClass="required" /> <div class="errorMsg"><form:errors path="firstName" cssClass="error" /></div>
											</td>
											<td class="labelCol">
												<form:label path="lastName"><span class="red">*</span>名</form:label>
											</td>
											<td class="dataCol">
													<div class="requiredBlock"></div>
													<form:input path="lastName" cssClass="required" /> <div class="errorMsg"><form:errors path="lastName" cssClass="error" /></div>
											</td>
										</tr>
										<tr>
											<td class="labelCol">
												<form:label path="zip">邮编</form:label></td>
											<td class="dataCol col02">
													<div class="requiredBlock"></div>
													<form:input path="zip" /> <div class="errorMsg"><form:errors path="zip" cssClass="error" /></div>
											</td>
											<td class="labelCol">
												<form:label path="mobile">手机</form:label>
											</td>
											<td class="dataCol">
													<div class="requiredBlock"></div>
													<form:input path="mobile" cssClass="mobile" /> <div class="errorMsg"><form:errors path="mobile" cssClass="error" /></div>
											</td>
										</tr>
										<tr>
											<td class="labelCol">
												<form:label path="zip">城市</form:label></td>
											<td class="dataCol col02">
												<select id="combobox">
													<option value="">Select one...</option>
													<option value="1">北京</option>
													<option value="2">上海</option>
													<option value="3">深圳</option>
												</select>
											</td>
											<td class="labelCol">
											</td>
											<td class="dataCol">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<hr />
						<div class="pbFooter bottomBtns">
							<button class="btn">保存</button>
							<button class="btn">保存并新建</button>
							<button class="btn">取消</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<jsp:include page="fragments/footer.jsp" />
	
	<script type="text/javascript">
			$(document).ready(function() {
				$( "#combobox" ).combobox();
				
				var $form=$("#editForm");
				
				$form.validate({
					rules:{
						firstName:{
							remote:{
								url:"${firstNameValidUrl}",
								type:"post",
								data:{
									"firstName": function() {
						            	return $("#firstName").val();
						          	}
								}
							}
						}
					},
					messages:{
						firstName:{
							remote:"请输入百家姓"
						}
					},
				   errorPlacement: function(error, element) {
					   element.parent("td").find('.errorMsg').html(error);
				   }
				});
				
				$form.submit(function() {
					if($form.valid()){
						var url=$(this).attr("action");
						var validType=$("[name='validType']:checked").val();
						if(validType==="complete"){
							url='${postUrl2}';
						}
						$.ajax({
							type:"post",
							url:url,
							data:$(this).serialize(),
							success:function( data, status, jqXHR ) {
								//$("#formsContent").replaceWith(data);
								$form.find('.errorMsg').empty();
								$form.find('input').removeClass('error');
								if(data.status === "FAIL"){
									for (var i = 0; i < data.errorMessageList.length; i++) {
										var item = data.errorMessageList[i];
										var $controlInput = $("input[name='"+ item.fieldName+"']");
										$controlInput.addClass('error');
										$controlInput.parent().find('.errorMsg').html(item.message);
									}
								}else{
									alert("验证成功");
								}
							}
						});
						return false;
					}
				});
				
				$("#btnSave").click(function(){
					$form.submit();
					return false;
				});
				
			});
		</script>
</body>
</html>