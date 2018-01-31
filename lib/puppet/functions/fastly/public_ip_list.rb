Puppet::Functions.create_function(:'fastly::public_ip_list') do
  dispatch :public_ip_list do
  end

  def public_ip_list()
    scope = closure_scope
    begin
      data = JSON.parse(Net::HTTP.get(URI('https://api.fastly.com/public-ip-list')))
      data['fastly::addresses'] = data.delete('addresses')
      data
    rescue JSON::ParserError => ex
      raise Puppet::DataBinding::LookupError,
            "Unable to parse response from Fastly: #{ex}"
    end
  end
end
