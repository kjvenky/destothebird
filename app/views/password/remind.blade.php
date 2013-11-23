<div class="row">
  <div class="col-md-6">
	@if (Session::has('error'))
	  {{ trans(Session::get('reason')) }}
	@elseif (Session::has('success'))
	  An email with the password reset has been sent.
	@endif
	 
	{{ Form::open(array('route' => 'password.request')) }}
	 <h2 class="form-signin-heading">Reset Password</h2>
	 
	  <p>{{ Form::label('email', 'Email') }}
		 {{ Form::text('email', null, array('class'=>'form-control', 'placeholder'=>'Enter Email Address','required')) }}
	</p>
	 
	  <p>{{ Form::submit('Submit',array('class'=>'btn btn-primary')) }}</p>
	 
	{{ Form::close() }}
 </div>
</div>