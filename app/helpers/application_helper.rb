module ApplicationHelper
  def default_meta_tags
    {
      site: 'コドラ',
      title: 'ドライブをサポートしたりより楽しくしてくれるアプリです',
      reverse: true,
      charset: 'utf-8',
      description: '道の駅スタンプラリー、おすすめスポット検索、ルート検索、イベント投稿一覧という4つの機能で、ドライブをサポートします。',
      keywords: 'コドラ, kodora-co-driver, 車, ドライブ',
      canonical: 'https://www.kodora-co-driver.com/',
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png', host: 'https://www.kodora-co-driver.com'),
        locale: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@johnny1_ryo',
        image: image_url('ogp.png', host: 'https://www.kodora-co-driver.com')
      }
    }
  end
end
