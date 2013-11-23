<div class="row">
  <div class="col-md-6">
		@if (Session::has('error'))
		  {{ trans(Session::get('reason')) }}
		@endif

		{{ Form::open(array('route' => array('password.update', $token),'class'=>'form-signin')) }}
		 
			<p>
				{{ Form::label('email', 'Email') }}
				{{ Form::text('email', null, array('class'=>'form-control', 'placeholder'=>'Email Address','required')) }}
			</p>
		 
			<p>
				{{ Form::label('password', 'Password') }}
				{{ Form::password('password', array('class'=>'form-control', 'placeholder'=>'Password','required')) }}
			</p>
		 
			<p>
				{{ Form::label('password_confirmation', 'Password confirm') }}
				{{ Form::password('password_confirmation', array('class'=>'form-control', 'placeholder'=>'Re-Password','required')) }}

			</p>
		 
		  {{ Form::hidden('token', $token) }}
		 
		  <p>{{ Form::submit('Submit',array('class'=>'btn btn-primary')) }}</p>
		 
		{{ Form::close() }}
	</div>
</div>