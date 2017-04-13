class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # Include CarrierWave::RMagick
  #include CarrierWave::MiniMagick

  #Include the sprockets-rails helper for Rails 4+ asset pipeline compatibility
  #include Sprockets::Rails::Helper

  #Choose what kind of storage to use for this uplaoder
  storage :file
  #storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant tobe mounted
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might want to use something like this:

  def extension_white_list
    %w(jpg jpeg JPG gif png pdf)
  end

end
