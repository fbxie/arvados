class UserAgreement < ArvadosBase
  def self.signatures
    res = $arvados_api_client.api self, '/signatures'
    $arvados_api_client.unpack_api_response(res)
  end
  def self.sign(params)
    res = $arvados_api_client.api self, '/sign', params
    $arvados_api_client.unpack_api_response(res)
  end
end
