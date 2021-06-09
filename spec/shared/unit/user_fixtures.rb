# frozen_string_literal: true

RSpec.shared_context "user fixtures" do
  include_context "setup"

  before do
    dataset.put(username: "eve")
    dataset.put(username: "bob")
    dataset.put(username: "alice")

    dataset.refresh
  end

  after do
    gateway[:users].refresh.delete
  end
end
