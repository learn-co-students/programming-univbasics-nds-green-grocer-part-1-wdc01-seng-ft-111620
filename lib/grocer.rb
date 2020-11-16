def find_item_by_name_in_collection(name, collection)
 counter = 0
   while counter < collection.length
     if collection[counter][:item] == name
       return collection[counter]
     end
     counter += 1
   end

end

def consolidate_cart(cart)
 consolidated_cart = []
   i = 0                                # This represents each item ("i") in cart, starting qty at zero
   while i < cart.length do             # While we scan each item ("i") in entire cart (cart.length) do 
     new_item = find_item_by_name_in_collection(cart[i][:item], consolidated_cart)   # add item ("item", "i" for each 1 qty) from old cart, to new "collection" or new cart "consolidated cart"
     if new_item
       new_item[:count] += 1               # if new item, add 1 to new item's ":count"
     else cart[i][:count] = 1              # otherwise if same item, which is cart/i/count at 1 qty
       consolidated_cart << cart[i]        # add same cart item to new consolidated cart 
     end
     i += 1
   end
   return consolidated_cart
 end



  