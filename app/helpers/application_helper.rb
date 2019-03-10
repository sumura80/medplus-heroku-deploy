module ApplicationHelper

def default_meta_tags
  {  
  	site: "Med+", #'サイト名' 
    title:  "Life Abroad Med+", #タイトルを設定
    reverse: true, #trueを設定することで「タイトル | サイト名」の並びで出力してくれる
    description: 'Med+ is your source for information on over-the-counter medications in Japan, complete with product descriptions, ingredients, instructions, and community feedback.',
    keywords: 'medicine in Japan, medicine, allergy, pain relief, pain relievers, pain killers, cold, flu, Japan, Tokyo, digestive, topical, medication',
    icon: [
      { href: image_url('favicon.png') },
      { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
    ],
    noindex: ! Rails.env.production?, # production環境以外はnoindex
    canonical: request.original_url,  # 優先されるurl
    charset: "UTF-8",#文字コードの設定
    separator: '|', #ページ名とサイト名の区切りを設定。デフォルトは「|」


    # OGPの設定をしておくとfacebook, twitterなどの投稿を見た目よくしてくれます。
    og: {
    	site_name: :site, # もしくは site_name: :site or 'サイト名'
      title: :title, #上のtitleと同じ値とするなら「:title」とする
      description: :description, #上のdescriptionと同じ値とするなら「:description」とする
      type: "website", #[‘website’, ‘article’, ‘blog’, …]などからひとつ設定
      url: request.original_url, #URLを設定
      image: image_url('favicon.png'), #シェア用の画像を設定
      locale: "ja_JP" #リソースの言語を設定
    },
    twitter: {
      site: '@lifeabroadjpn', #'@ツイッターのアカウント名',
      card: 'summary',
      image: image_url('favicon.png')# ツイッター専用にイメージを設定する場合
  },
  #   fb: {
  #     app_id: '***************'    #ご自身のfacebookのapplication IDを設定
  #   }
  }
end



end
