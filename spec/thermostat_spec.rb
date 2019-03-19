require "test_helper"

describe "Thermostats" do
  let(:client) { Nest.new }

  it "has a collection of thermostats" do
    expect(client.thermostats.all).to be_a(Nest::Thermostats)
  end
end
