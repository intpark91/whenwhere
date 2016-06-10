<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-9">
	<div class="box box-primary">
		<!-- /.box-header -->
		<div class="box-body no-padding">
			<div class="mailbox-controls">
				<!-- Check all button -->
				<div class="btn-group">
					<button type="button"
						class="btn btn-default btn-sm checkbox-toggle">
						<i class="fa fa-square-o"></i>
					</button>
					<button type="button" class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-eye-open"></span>
					</button>
					<button type="button" class="btn btn-default btn-sm">
						<i class="fa fa-trash-o"></i>
					</button>
				</div>
				<!-- /.btn-group -->
				<div class="box-tools pull-right">
					<div class="has-feedback">
						<input type="text" class="form-control input-sm"
							placeholder="Search Mail"> <span
							class="glyphicon glyphicon-search form-control-feedback"></span>
					</div>
				</div>
			</div>
			<!-- box-messages -->
			<div class="table-responsive mailbox-messages">
				<table class="table table-hover table-striped">
					<tbody id="msgList">
						<c:forEach var="msg" items="${msgList}">
							<tr>
								<td><input type="checkbox"></td>
								<td class="mailbox-name">${msg.sender}</td>
								<td class="mailbox-subject">
									<a href="../user/msgbox?type=read&num=${msg.no}">
										<c:choose>
											<c:when test="${msg.status == 0 }">
												<b>${msg.title}</b>
											</c:when>
											<c:otherwise>
												${msg.title}
											</c:otherwise>
										</c:choose>
									</a>
								</td>
								<td class="mailbox-date pull-right">${msg.wdate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- box-footer -->
		<div class="box-footer no-padding">
			<div class="box-footer no-padding">
				<div class="row">
					<div style="text-align: center;">
						<ul class="pagination pagination-sm no-margin"></ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /.box-footer-->
	</div>
</div>