proc_name = "headline-logo"

if @headline_logo_image.nil?
  theme_exit("must specify @headline_logo_image!!")
end

match("**", HeadLine) do |heads|

  loader = ImageLoader.new(find_file(@headline_logo_image))

  heads.each do |head|
    head.delete_pre_draw_proc_by_name(proc_name)
    head.delete_post_draw_proc_by_name(proc_name)

    head.add_pre_draw_proc(proc_name) do |canvas, x, y, w, h, simulation|
      if simulation
        loader.resize(nil, head.height)
      else
        loader.draw(canvas, x + w - loader.width, y)
      end
      [x, y, w, h]
    end
  end
end
