 class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #https://fuchiaz.com/rails-rmagic-resize/
  #例process 〜　のほうが先に処理されるのでこちらにより大きいサイズを、
  #例version の方により小さいサイズを指定するとよい。
  #例  process resize_to_limit: [800,800]
  #例  version :thumb do
  #例     process resize_to_limit: [300,300]
  #例 end

  #process resize_to_limit: [200, 300]
   process resize_to_limit: [1200,1200]
  # resize_to_fitはファイルのサイズを変更します
  # アップロードされたファイルを200〜200以下に変換する
   # process :resize_to_fit => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end



 
  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_whitelist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
