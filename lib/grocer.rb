def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
    collection_index = 0

  while collection_index < collection.size do
    current_item = collection[collection_index]
    if ( current_item[:item] == name )
      return current_item
    end
    collection_index += 1
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
 index = 0
  result = []

  while index < cart.count do
    item_name = cart[index][:item]
    sought_item = find_item_by_name_in_collection(item_name, result)
    if sought_item
      sought_item[:count] += 1
    else
      cart[index][:count] = 1
      result << cart[index]
    end
    index += 1
  end

  result
end

  