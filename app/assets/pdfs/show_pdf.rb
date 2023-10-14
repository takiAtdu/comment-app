class ShowPdf < Prawn::Document
  def initialize
    super(page_size: 'A4') #A4サイズのPDFを新規作成
    stroke_axis # 座標を表示（これがあると便利）

    # ↓追記（日本語フォントの読み込み）
    font_families.update('JP' => { 
                            normal: 'app/assets/fonts/ipaexm.ttf', 
                            bold: 'app/assets/fonts/ipaexg.ttf' 
                        })
    font 'JP'

  end
end