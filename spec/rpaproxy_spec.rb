require './rpaproxy'
require 'rack/test'

set :environment, :test

describe 'rpaproxy' do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	# TODO: http://sho.tdiary.net/20090706.html#p01 $B$N;EMM$rK~$?$7$F$$$k$3$H$r%A%'%C%/(B
	it "says hello" do
		get '/'
		last_response.should be_ok
	end
end
