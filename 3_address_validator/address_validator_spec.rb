require 'rspec'
require_relative 'address_validator'

describe AddressValidator do
  def address
    { street: "123 Any Street", city: "Anytown"}
  end

  it 'returns false for incomlete address' do
    expect(
      AddressValidator.valid?(address)
    ).to eq(false)
  end

  it 'missing_parts returns an array of missing required parts' do
    expect(
      AddressValidator.missing_parts(address)
    ).to eq([:region, :postal_code, :country])
  end

end