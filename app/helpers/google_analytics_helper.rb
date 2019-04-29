module GoogleAnalyticsHelper
	#viewに処理をベタベタ書きたくなかったのでhelper記述
	#pageオプションを追加しないとpageの情報が与えられていないのでルート/で処理される
	#https://github.com/bgarret/google-analytics-rails/blob/master/lib/google-analytics/rails/view_helpers.rb#L128
	#でpageオプションを渡してpage viewのtrackerインスタンスを生成している
	def track_page
	  return unless Rails.env.production?
	  analytics_init(page: request.fullpath)
	end
end