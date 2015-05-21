require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :order_number => "MyString",
      :quantity => 1,
      :user => nil,
      :price => 1.5
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_order_number[name=?]", "order[order_number]"

      assert_select "input#order_quantity[name=?]", "order[quantity]"

      assert_select "input#order_user_id[name=?]", "order[user_id]"

      assert_select "input#order_price[name=?]", "order[price]"
    end
  end
end
