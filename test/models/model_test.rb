require "test_helper"

describe Model do
  let(:model) { Model.new }

  it "must be valid" do
    value(model).must_be :valid?
  end
end
