# app/lib/api_version.rb

class api_version
  attr_reader :version, :default

  def initialize(version, default = false)
    @version = version
    @default = default
  end

  # check whether version is specified or is default
  def matches?(request)
    check_headers(request.headers) || default
  end

  private
    def check_headers(headers)
      # check version from Accept headers; except custom media type `csv_files`
      accept = headers[:accept]
      accept && accept.include?("application/vnd.kegcop.chrisrjones.#{@version}+json")
    end
end
