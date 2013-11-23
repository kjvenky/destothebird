<div class="row">
  <div class="col-md-6">
	  {{ Form::open(array('url'=>'users/create', 'class'=>'form-signin')) }}
	   <h2 class="form-signin-heading">Please Register</h2>
	 
	   <ul>
		  <!--@foreach($errors->all() as $error)
		  @endforeach-->
	   </ul>
		
			{{ Form::text('firstname', null, array('class'=>'form-control', 'placeholder'=>'First Name','required')) }}<?php echo $errors->first('firstname', '<label class="error pull-right">:message</label>'); ?><br/>
		
			{{ Form::text('lastname', null, array('class'=>'form-control', 'placeholder'=>'Last Name','required')) }}<?php echo $errors->first('lastname', '<label class="error pull-right">:message</label>'); ?><br/>
		
			{{ Form::text('email', null, array('class'=>'form-control', 'placeholder'=>'Email Address','required')) }}<?php echo $errors->first('email', '<label class="error pull-right">:message</label>'); ?><br/>
	  
			{{ Form::password('password', array('class'=>'form-control', 'placeholder'=>'Password','required')) }}<?php echo $errors->first('password', '<label class="error pull-right">:message</label>'); ?><br/>
	   
			{{ Form::password('password_confirmation', array('class'=>'form-control', 'placeholder'=>'Confirm Password','required')) }}<?php echo $errors->first('password_confirmation', '<label class="error pull-right">:message</label>'); ?><br/>
	   
			{{ Form::submit('Register', array('class'=>'btn btn-primary'))}}

		{{ Form::close() }}
   </div>
</div>