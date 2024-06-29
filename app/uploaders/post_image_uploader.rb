class PostImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:



  # 画像の保存場所を指定
  # AWS S3に本番環境で保存させて、ローカルではfileで保存
  if Rails.env.production?
    storage :fog # 本番環境ではfogを使用
  else
    storage :file # 開発環境とテスト環境ではfileを使用
  end

  # アップロードされたファイルの保存先ディレクトリ
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # デフォルト画像の設定
  def default_url
    'default.png'
  end

  # 許可する拡張子を設定
  def extension_allowlist
    %w[gif png jpg jpeg]
  end

  # アップロードされた画像のアスペクト比は保持されながらリサイズ
  process resize_to_fit: [500, 500]

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add an allowlist of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_allowlist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg"
  # end
end
