class BalancesController < ApplicationController
  before_filter :login_required, :only => [:index]

  def index
    @balances = MultiJson.decode(current_user.access_token.get('/v1/accounts/balances.json').body)['response']
  end
end
