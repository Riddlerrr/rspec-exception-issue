class ExeptionError < RuntimeError
  attr_accessor :cause
  def initialize(cause)
    super()
    @cause = cause
  end
end

RSpec.describe "Test exeption" do
  it "crashed" do
    raise ExeptionError.new("RSpec error")
    expect("pass").to eq "pass"
  end

  it "successfully output exeption" do
    raise RuntimeError.new("RSpec error")
    expect("pass").to eq "pass"
  end
end
