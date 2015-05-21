require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :order_number => "Order Number",
      :quantity => 1,
      :user => nil,
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Order Number/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
  end
end
