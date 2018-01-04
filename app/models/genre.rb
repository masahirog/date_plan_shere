class Genre < ActiveHash::Base
  include ActiveHash::Associations
  has_one :plan

  self.data = [
    {:id => 1 , :name => "飲食"},
    {:id => 2 , :name => "ショッピング"},
    {:id => 3 , :name => "アクティブ"},
    {:id => 4 , :name => "展望・テーマパーク"},
    {:id => 5 , :name => "見学・鑑賞"},
    {:id => 6 , :name => "観劇・観賞"},
    {:id => 7 , :name => "ファッション"},
    {:id => 8 , :name => "体験"},
    {:id => 9 , :name => "娯楽"},
    {:id => 10, :name => "社会学習・ボランティア"},
    {:id => 11, :name => "その他"}
  ]
end
