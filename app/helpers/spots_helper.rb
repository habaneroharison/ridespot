module SpotsHelper
  def region_color(region_name)
    case region_name
    when "北海道・東北"
      "#3CB371"  
    when "関東"
      "#1E90FF"  
    when "中部"
      "#FFA500"  
    when "近畿"
      "#DA70D6"  
    when "中国"
      "#20B2AA"  
    when "四国"
      "#FFD700"  
    when "九州・沖縄"
      "#FF6347"  
    else
      "#cccccc"  
    end
  end
end
