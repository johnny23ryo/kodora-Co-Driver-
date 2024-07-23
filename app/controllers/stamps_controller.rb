class StampsController < ApplicationController
  before_action :require_login

  def index
    # 現在ログインしているユーザーのすべてのスタンプを取得
    stamps = current_user.stamps

    # スタンプのIDと画像URLをJSON形式で返
    render json: stamps.map { |stamp| { id: stamp.michi_no_eki_id, image_url: stamp.image_url } }
  end

  def create
    # # find_michi_no_eki_from_geojsonメソッドを使用して、GeoJSONファイルから指定された道の駅の情報を取得する
    michi_no_eki = find_michi_no_eki_from_geojson(params[:michi_no_eki_id])

    # # 道の駅が見つかった場合の処理
    if michi_no_eki
      # ランダムな画像を選択
      images = [
        view_context.asset_path("911.png"),
        view_context.asset_path("civic.png"),
        view_context.asset_path("diablo .png"),
        view_context.asset_path("e_type.png"),
        view_context.asset_path("figaro.png"),
        view_context.asset_path("mini.png"),
        view_context.asset_path("nsx.png"),
        view_context.asset_path("rx-7.png"),
        view_context.asset_path("volkswagen_bus_1.png"),
        view_context.asset_path("wrangler.png")
      ]

      # 配列からランダムに1つの画像URLを選択し、変数に保存
      random_image_url = images.sample

      # 現在ログインしているユーザーのスタンプを、指定された道の駅のIDで検索し、存在しない場合は新しいスタンプを作成
      stamp = current_user.stamps.find_or_create_by(michi_no_eki_id: params[:michi_no_eki_id]) do |s|
        s.image_url = random_image_url # 新しく作成するスタンプに画像URLを設定
      end

      # スタンプが正常に作成された場合の処理
      if stamp.persisted?

        # 成功メッセージと画像のURLをJSON形式で返す
        render json: { success: true, image_url: stamp.image_url }
      else
        render json: { success: false, message: "スタンプは既に存在します。" }
      end
    else
      render json: { success: false, message: "道の駅が見つかりません。" }
    end
  end

  private

  def find_michi_no_eki_from_geojson(id)
    file_path = Rails.root.join('public', 'michinoeki.geojson')
    @geojson_data ||= JSON.parse(File.read(file_path))
    @geojson_data['features'].find { |feature| feature['properties']['id'] == id.to_i }
  end
end
