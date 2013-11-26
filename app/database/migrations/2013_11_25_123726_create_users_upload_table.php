<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersUploadTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users_upload', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('uid')->index();
			$table->string('filpath',255);
			$table->enum('status', array('verified', 'processing','unknown'));
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('users_upload');
	}

}
