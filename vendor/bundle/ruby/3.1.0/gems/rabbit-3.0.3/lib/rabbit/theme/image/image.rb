proc_name = "image"

@image_frame_width ||= 1
@image_caption_color ||= nil
@image_caption_font_size ||= @normal_font_size

match("**", Image) do |images|

  images.delete_pre_draw_proc_by_name(proc_name)
  images.delete_post_draw_proc_by_name(proc_name)

  images.horizontal_centering = true

  params = {
    :proc_name => proc_name,
    :frame_color => @image_frame_color,
    :shadow_color => @image_frame_shadow_color,
    :shadow_width => @image_frame_shadow_width,
    :shadow_offset => @image_frame_shadow_offset,
  }

  padding_left = 0
  padding_right = 0
  padding_top = 0
  padding_bottom = 0

  if @image_with_frame
    padding_left += @image_frame_padding + @image_frame_shadow_width
    padding_right += @image_frame_padding + @image_frame_shadow_width
    padding_top += @image_frame_padding + @image_frame_width
    padding_bottom += @image_frame_padding + @image_frame_width
    padding_bottom += @image_frame_shadow_width
  end

  images.padding_left = padding_left
  images.padding_right = padding_right
  images.padding_top = padding_top
  images.padding_bottom = padding_bottom

  draw_frame(images, params) if @image_with_frame

  images.each do |image|
    image.margin_bottom = @space

    caption_text = image.caption
    if caption_text.nil? or caption_text.empty?
      next
    end

    layout = nil
    caption_height = 0

    image.add_post_draw_proc(proc_name) do |canvas, x, y, w, h, simulation|
      # TODO: Should we move this to Image#draw and unify this and
      # similar code in
      # lib/rabbit/theme/background-image-toolkit/background-image-toolkit.rb?
      if simulation
        caption = Text.new(caption_text)
        caption.prop_set("size", @image_caption_font_size)
        set_font_family(caption)
        if image.horizontal_centering
          caption.do_horizontal_centering(canvas, x, y, w, h)
        end
        caption.compile(canvas, image.ox || x, y, image.ow || w, h)
        layout = caption.layout
        caption_height = caption.height
      end
      if !simulation and layout
        base_x = image.ox || x
        base_y = y
        caption_color = image["caption-color"] || @image_caption_color
        canvas.draw_layout(layout,
                           base_x,
                           base_y + image.margin_bottom,
                           caption_color)
      end
      [x, y + caption_height, w, h - caption_height]
    end
  end
end
