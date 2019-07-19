def consolidate_cart(cart)
  c_cart = {}
  cart_revised = []
  i = 0 
  key = String
  while i < cart.length do 
    (cart[i])[key][:count] = 0
    i = i + 1  
  end
  while i < cart.length do
    if cart.count(cart[i]) > 1 
      (cart[i])[key][:count] = cart.count(cart[i])
      i = i + 1 
    elsif cart.count(cart[i]) = 1 
    (cart[i])[key][:count] = 1 
    i =  i + 1 
    end
  end
  cart_revised = cart.uniq; 
  
  cart_revised.map do |item|
    item = item.to_a
  end
  while i < cart_revised.length do
    c_cart[(cart_revised[i])[i]] = (cart_revised[i])[i + 1]
    i = i + 1 
  end
  return c_cart 
end
  
  
  #cart_revised.map do |hash|
   #  hash.to_a
  
  #cart_revised.each do |array| 
    #new_array[array[i]] => array[i + 1]
  #end
  #return new_array
  

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
