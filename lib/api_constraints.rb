# this file is going to need modification


class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
  	# vnd.marketplace. <= is not going to work :'(
    # @default || req.headers['Accept'].include?("application/vnd.api.kegcop.chrisrjones.v#{@version}")
  	return true

  end
end