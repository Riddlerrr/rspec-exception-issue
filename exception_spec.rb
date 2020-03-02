class ExceptionError < RuntimeError
  attr_accessor :cause
  def initialize(cause)
    super
    @cause = cause
  end
end

RSpec.describe "Test exeption" do
  it "successful test" do
    expect("pass").to eq "pass"
  end

  it "crashed" do
    raise ExceptionError.new("RSpec error")
    expect("pass").to eq "pass"
  end

  it "successfully output exeption" do
    raise RuntimeError.new("RSpec error")
    expect("pass").to eq "pass"
  end
end
