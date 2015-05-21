require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :order_number => "MyString",
      :quantity => 1,
      :user => nil,
      :price => 1.5
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_order_number[name=?]", "order[order_number]"

      assert_select "input#order_quantity[name=?]", "order[quantity]"

      assert_select "input#order_user_id[name=?]", "order[user_id]"

      assert_select "input#order_price[name=?]", "order[price]"
    end
  end
end
