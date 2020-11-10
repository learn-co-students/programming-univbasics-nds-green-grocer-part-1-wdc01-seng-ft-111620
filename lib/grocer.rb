def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    if hash[:item] == name
      return hash
    end
  end
  nil

  #
  # Consult README for inputs and outputs

end

def consolidate_cart(cart)
  new_hash = Hash.new(0)
  cart.each {|hash| new_hash[hash[:item]] += 1}
  cart.uniq.map {|hash| hash[:count] = new_hash[hash[:item]] }
  cart
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end
  