include_theme("default-item-mark")

add_image_path("rabbit-images")

slide_body = [Slide, Body]
item_list_item = [ItemList, ItemListItem]

match(*(slide_body + (item_list_item * 1))) do |items|
  name = "item1"
  
  items.delete_pre_draw_proc_by_name(name)
  items.delete_post_draw_proc_by_name(name)

  draw_image_mark(items, "red-item.png", name)
end

match(*(slide_body + (item_list_item * 2))) do |items|
  name = "item2"

  items.delete_pre_draw_proc_by_name(name)
  items.delete_post_draw_proc_by_name(name)

  draw_image_mark(items, "blue-item.png", name)
end

match(*(slide_body + (item_list_item * 3))) do |items|
  name = "item3"

  items.delete_pre_draw_proc_by_name(name)
  items.delete_post_draw_proc_by_name(name)

  draw_image_mark(items, "green-item.png", name)
end

enum_list_item = [EnumList, EnumListItem]

match(*(slide_body + enum_list_item + item_list_item)) do |items|
  name = "enum-item1"
  
  items.delete_pre_draw_proc_by_name(name)
  items.delete_post_draw_proc_by_name(name)

  draw_image_mark(items, "red-item2.png", name)
end

match(*(slide_body + enum_list_item + (item_list_item * 2))) do |items|
  name = "enum-item2"
  
  items.delete_pre_draw_proc_by_name(name)
  items.delete_post_draw_proc_by_name(name)

  draw_image_mark(items, "green-item.png", name)
end
