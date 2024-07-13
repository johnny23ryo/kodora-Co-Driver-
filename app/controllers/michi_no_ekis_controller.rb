class MichiNoEkisController < ApplicationController
  before_action :authenticate_user!, only: [:stamp]

  def index
  end

  def stamp
    michi_no_eki = MichiNoEki.find(params[:id])
    # current_user.stampsは、現在ログインしているユーザーに関連するすべてのスタンプを取得
    # find_or_create_byメソッドは、指定された条件に一致するレコードを検索し、見つからない場合は新しいレコードを作成
    # michi_no_eki: michi_no_eki  はユーザーが訪れた道の駅のスタンプをもっているか判定、持ってない場合、作成
    stamp = current_user.stamps.find_or_create_by(michi_no_eki: michi_no_eki)

    # success: true**は、スタンプの取得または作成が成功したことを示す
    # stamp_count: current_user.stamps.count**は、現在ログインしているユーザーが持っているスタンプの総数を返す
    render json: { success: true, stamp_count: current_user.stamps.count }
  end
end
