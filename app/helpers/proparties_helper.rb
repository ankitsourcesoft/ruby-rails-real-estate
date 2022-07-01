module PropartiesHelper
     
  def proparty_thumbnail proparty
     img = proparty.photo.present? ? proparty.photo.thumb.url : "download.jpeg"
     image_tag img, class: "proparty-thumb"
  end

  def proparty_photo_url proparty
    proparty.photo.present? ? proparty.photo.url : asset_url("download.jpeg")
   

 end
end
