<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div class="container-fluid">
	<div class="row">
		<div class="panel panel-primary">
			<div class="panel-heading">Enviar correo</div>
			<div class="panel-body">

				<div class="box box-info">
					<div class="box-header">
						<i class="fa fa-envelope"></i>
						<h3 class="box-title">Los correos enviados saldran con el correo de la empresa</h3>
						<!-- tools box -->
						<div class="pull-right box-tools">
							
						</div>
						
					</div>
					<div class="box-body">
						<form id="frmEnviarCorreo">
							<div class="form-group">
								<s:textfield type="email" cssClass="form-control" name="to"
									placeholder="Enviar correo a:">
								</s:textfield>
							</div>
							<div class="form-group">
								<s:textfield type="text" cssClass="form-control" name="subject"
									placeholder="Titulo">
								</s:textfield>
							</div>
							<div>
								<s:textarea cssClass="textarea" placeholder="Mensaje" name="body" 
									cssStyle="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
								</s:textarea>
							</div>
						</form>
					</div>
					<div class="box-footer clearfix">
						<button type="button" class="pull-right btn btn-default" id="sendEmail">
							Enviar <i class="fa fa-arrow-circle-right"></i>
						</button>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/_lib/mercadocentral/enviarcorreo.js"></script>