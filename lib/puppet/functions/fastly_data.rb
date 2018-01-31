# The `fastly_data` is a hiera 5 `data_hash` data provider function.
Puppet::Functions.create_function(:fastly_data) do
  dispatch :fastly_data do
    param 'Hash', :options
    param 'Puppet::LookupContext', :context
  end

  def fastly_data(_options, _context)
    call_function('fastly::public_ip_list')
  end
end
