<div class="row">
{{ Form::open(array('url'=>'users/dump', 'class'=>'form-signin')) }}
	<div class="col-md-8" style="margin-top:50px;">
		<div id="html4_uploader" style="height: 330px; position: relative;">Your browser doesn't have HTML 4 support.</div>
	
		<div id="html5_uploader" style="height: 330px; position: relative;">Your browser doesn't support native upload.</div>
	</div>
	<div class="col-md-4" style="margin-top:200px;">
	{{ Form::submit('Send Identify Request', array('class'=>'btn btn-default'))}}
	</div>
{{ Form::close() }}

</div>