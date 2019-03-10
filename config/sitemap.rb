# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.medplus.jp/"
SitemapGenerator::Sitemap.sitemaps_host = "https://s3-ap-northeast-1.amazonaws.com/#{ENV['AMAZON_S3_BUCKET_NAME']}"
  # サイトマップの出力先を指定
  # 出力先のパスを変更したい場合は以下を有効化
  SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

  #http://vdeep.net/rubyonrails-heroku-sitemap-s3 このサイトを参考
  SitemapGenerator::Sitemap.adapter = SitemapGenerator::AwsSdkAdapter.new(
  ENV['AMAZON_S3_BUCKET_NAME'],
  aws_access_key_id: ENV['AMAZON_ACCESS_KEY_ID'],
  aws_secret_access_key: ENV['AMAZON_SECRET_ACCESS_KEY'],
  aws_region: ENV['AMAZON_S3_REGION'],
)


SitemapGenerator::Sitemap.create do

  #下記を追加
  add root_path, priority: 0.7, changefreq: 'weekly'


  Post.all.find_each do |post|
    add post_path(post), priority: 1.0, lastmod: post.updated_at, changefreq: 'daily'
  end
 
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
