name = "slide-footer-info"

@slide_footer_info_line_width ||= screen_y(0.1)
@slide_footer_info_line_color ||= nil
if @slide_footer_info_line_color.nil?
  @slide_footer_info_line_params ||= {
    :pattern => {
      :base => [0, 0, canvas.width, 0],
      :type => :linear,
      :color_stops => [
                       [0.0, 1, 1, 1],
                       [0.3, 0, 0, 0],
                       [0.7, 0, 0, 0],
                       [1.0, 1, 1, 1],
                      ],
    }
  }
else
  @slide_footer_info_line_color = "#666"
end
@slide_footer_info_text_size ||= screen_size(1.5 * Pango::SCALE)
@slide_footer_info_x_margin ||= screen_x(1)
@slide_footer_info_text_color ||= "#666"
@slide_footer_info_text_over_line ||= false
@slide_footer_info_base_y ||= canvas.height - @margin_bottom

@slide_footer_info_left_text ||= nil
@slide_footer_info_center_text ||= nil
@slide_footer_info_right_text ||= nil

include_theme("edge-info-toolkit")

match(SlideElement) do
  delete_pre_draw_proc_by_name(name)

  break if @slide_footer_info_uninstall

  draw_edge_info(:name => name,
                 :line_width => @slide_footer_info_line_width,
                 :line_color => @slide_footer_info_line_color,
                 :line_params => @slide_footer_info_line_params,
                 :left_text => @slide_footer_info_left_text,
                 :center_text => @slide_footer_info_center_text,
                 :right_text => @slide_footer_info_right_text,
                 :text_position => :lower,
                 :text_over_line => @slide_footer_info_text_over_line,
                 :text_size => @slide_footer_info_text_size,
                 :text_color => @slide_footer_info_text_color,
                 :x_margin => @slide_footer_info_x_margin,
                 :y => @slide_footer_info_base_y)
end
