<?php

class UsersController extends BaseController {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	protected $layout = "layout.main";
	 
	public function getRegister(){
		$this->layout->content = View::make('users.register');
	}
	public function postCreate() {
	
	$validator = Validator::make(Input::all(), User::$rules);
 
	   if ($validator->passes()) 
	   {
		   $user = new User;
		   $user->firstname = Input::get('firstname');
		   $user->lastname = Input::get('lastname');
		   $user->email = Input::get('email');
		   $user->password = Hash::make(Input::get('password'));//Input::get('password');
		   $user->save();
		   return Redirect::to('users/login')->with('message', 'Thanks for registering!');
	   } 
	   else 
	   {
		  return Redirect::to('users/register')->with('message', 'The following errors occurred')->withErrors($validator)->withInput();
	   }
       
	}
	public function getLogin() {
	   $this->layout->content = View::make('users.login');
	}
	public function postSignin() {
		if (Auth::attempt(array('email'=>Input::get('email'), 'password'=>Input::get('password')),true)) {
		   return Redirect::to('/');//->with('message', 'You are now logged in!');
		} else {
		   return Redirect::to('users/login')
			  ->with('message', 'Your username/password combination was incorrect')
			  ->withInput();
		}	  
	}
	
	public function getDashboard() {
		$this->layout->content = View::make('users.dashboard');
	}
	public function getLogout() {
	   Auth::logout();
	   return Redirect::to('/');//->with('message', 'Your are now logged out!');
	}
	public function getList()
	{
		//$users = DB::table('users')->get();
		//print_r($users);exit;
		$data=array('users' => DB::table('users')->get());
		$this->layout->content = View::make('users.list',$data);
	}
	public function getIdentify(){
	
	}
}