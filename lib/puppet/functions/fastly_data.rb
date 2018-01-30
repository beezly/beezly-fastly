# The `fastly_data` is a hiera 5 `data_hash` data provider function.
Puppet::Functions.create_function(:fastly_data) do
  dispatch :fastly_data do
    param 'Hash', :options
    param 'Puppet::LookupContext', :context
  end

  def fastly_data(options, context)
    begin
      data = JSON.parse(Net::HTTP.get(URI('https://api.fastly.com/public-ip-list')))
      data['fastly::addresses'] = data.delete('addresses')
      data
    rescue JSON::ParserError => ex
      raise Puppet::DataBinding::LookupError, "Unable to parse response from Fastly"
    end
  end

end
