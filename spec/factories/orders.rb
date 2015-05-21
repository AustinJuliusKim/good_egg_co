FactoryGirl.define do
  factory :order, :class => 'Orders' do
    order_number "MyString"
quantity 1
user nil
price 1.5
  end

end
