require 'pry'

def consolidate_cart(cart)
  i = 0
  c = [] 
  
  cart.each do |item|
    c.push(item.to_a)
  end
  result = {}
  
  c.each do |item|
    item[0][1][:count] = c.count(item)
  end
  
  
  c = c.uniq 
  
  c.each do |item|
    result[item[0][0]] = item[0][1]
  end
  return result
end

def apply_coupons(cart, coupons)
  result = {}
  coupons.each do |coupon|
    item = coupon[:item]
    cost = coupon[:cost]
    num = coupon[:num]
    if cart.has_key?(item) && cart[item][:count] >= num
      cart["#{item} W/COUPON"] = {
        :price => (cost)/(num),
        :clearance => cart[item][:clearance],
        :count => num
        }
    end
    if cart.has_key?(item) && cart.has_key?("#{item} W/COUPON")
        cart[item][:count] = cart[item][:count] - item[:num]
        if cart[item][:count] == 0
          cart.delete(item)
        end
    end
  end
  return cart 
end

  
  
  
  #coupons_array.each do |items|
   # cart["#{items[0][1]} W/COUPON"] = {
   #:price => items[2][1]/items[1][1]
    #:clearance => cart[items[0][1]][:clearance]
    #:count => items[1][1]
    #}
  #end
  #return cart

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
