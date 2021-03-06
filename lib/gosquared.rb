require './lib/gosquared/trends'
require './lib/gosquared/tracking'
require './lib/gosquared/people'
require './lib/gosquared/now'
require './lib/gosquared/account'

class GoSquared

  def initialize api_key, site_id
    @api_key = api_key
    @site_id = site_id
    raise 'api key cannot be empty/nil' if api_key.nil? || api_key.empty?
    raise 'site_token cannot be empty/nil' if site_id.nil? || site_id.empty?
  end

  def trends
    @trends ||= Trends.new(@api_key, @site_id)
  end

  def tracking
    @tracking ||= Tracking.new(@api_key, @site_id)
  end

  def people
    @people ||=  People.new(@api_key, @site_id)
  end

  def now
    @now ||= Now.new(@api_key, @site_id)
  end

  def account
    @account ||= Account.new(@api_key, @site_id)
  end

end
