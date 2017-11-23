class AddPhotoToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :photo, :string, default_url:'http://blog.desafiolatam.com/wp-content/uploads/2015/03/logo_latam_mini.png'
  end
end
