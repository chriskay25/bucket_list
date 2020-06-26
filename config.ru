require './config/environment'

use Rack::MethodOverride

use UsersController
use SessionsController
use BucketsController
run ApplicationController