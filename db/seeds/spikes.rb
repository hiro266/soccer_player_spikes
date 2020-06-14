spike = Spike.new(
  maker: 'プーマ',
  name: 'フューチャー 4.1',
  price: 22000,
  characteristic: '圧迫せずにフィット感を実現する靴下の様なevoKNITアッパーと、足に合わせてシューレースの通し方をカスタマイズできるNETFIT機能によってどのような足にもぴったりフィット。急な動きに対応できるアウトソールとスタッズを持ち、ピッチでのベストパフォーマンスを発揮できます。',
  images: [Rails.root.join("db/fixtures/フューチャー4.1_1.jpg").open,
           Rails.root.join("db/fixtures/フューチャー4.1_2.jpg").open,
           Rails.root.join("db/fixtures/フューチャー4.1_3.jpg").open,
           Rails.root.join("db/fixtures/フューチャー4.1_4.jpg").open
  ]
)
spike.save_tags_for_spike('','シルバー×オレンジ,イエロー×ブラック') if spike.save

spike = Spike.new(
  maker: 'ミズノ',
  name: 'モレリアII',
  price: 18000,
  characteristic: '一枚のカンガルー革でつま先部分を構成。ボールの感触が足指にダイレクトに伝わり、ボールコントロールの精度を高められます。足裏の形状に沿ったラウンドをつけることで、特に足裏から土踏まず部分のフィット感を向上させました。前モデルと比較して、27.0cm片方で45g、両方で90gもの軽量化を達成。ソールは水に浮くほどです。',
  images: [Rails.root.join("db/fixtures/モレリアII_1.jpg").open,
           Rails.root.join("db/fixtures/モレリアII_2.jpg").open,
           Rails.root.join("db/fixtures/モレリアII_3.jpg").open,
           Rails.root.join("db/fixtures/モレリアII_4.jpg").open,
  ]
)
spike.save_tags_for_spike('','ブラック×ホワイト,ホワイト×ブラック') if spike.save

spike = Spike.new(
  maker: 'ナイキ',
  name: 'マーキュリアルヴェイパー13',
  price: 25000,
  characteristic: '360度のFlyknit構造の下には、スピード感のある履き心地とスタイルを演出するスパイクを配置。トラクションも強化しました。硬いシャーシの上の軽量なAerotrakプレートと角度のあるスタッズが、足を踏み出すたびに反発力を発揮します。',
  images: [Rails.root.join("db/fixtures/マーキュリアルヴェイパー13_1.jpg").open,
           Rails.root.join("db/fixtures/マーキュリアルヴェイパー13_2.jpg").open
  ]
)
spike.save_tags_for_spike('','ブラック×ライトブルー') if spike.save

spike = Spike.new(
  maker: 'ミズノ',
  name: 'レビュラ3',
  price: 25000,
  characteristic: 'スピードを最大限解放する新ソール設計。スピードを活かすボールタッチ新アッパー設計。',
  images: [Rails.root.join("db/fixtures/レビュラ3_1.jpg").open,
           Rails.root.join("db/fixtures/レビュラ3_2.jpg").open,
           Rails.root.join("db/fixtures/レビュラ3_3.jpg").open,
           Rails.root.join("db/fixtures/レビュラ3_4.jpg").open
  ]
)
spike.save_tags_for_spike('','ゴールド×ネイビー,ゴールド×イエロー,レッド×ネイビー,ブルー×ホワイト') if spike.save

spike = Spike.new(
  maker: 'ナイキ',
  name: 'ティエンポレジェンド8',
  price: 23000,
  characteristic: 'アッパーに適度な厚み・凹凸、柔軟性を持たせることでトラップ時の細やかなボールタッチやパス、シュート時の正確なボールコントロールをサポートします。縦と横、そして斜め2方向の合計4層に編まれているため強度が強く、別の素材を足さなくても十分なホールド性が得られます。メッシュ自体が強いため、レザー部分への縫い付けや接着がない分、柔軟で包み込まれるような極上のフィット感が生まれました。さらにこれまでのモデルと比較しても軽量で屈曲性も高く、蹴り出しや切り返しで”アジリティ”も発揮できるような作りとなっています。',
  images: [Rails.root.join("db/fixtures/ティエンポレジェンド8_1.jpg").open,
           Rails.root.join("db/fixtures/ティエンポレジェンド8_2.jpg").open,
           Rails.root.join("db/fixtures/ティエンポレジェンド8_3.jpg").open,
           Rails.root.join("db/fixtures/ティエンポレジェンド8_4.jpg").open,
           Rails.root.join("db/fixtures/ティエンポレジェンド8_5.jpg").open,
           Rails.root.join("db/fixtures/ティエンポレジェンド8_6.jpg").open
  ]
)
spike.save_tags_for_spike('','シルバー×オレンジ,ブラック×オレンジ,レッド×ホワイト') if spike.save

spike = Spike.new(
  maker: 'ニューバランス',
  name: '442',
  price: 15800,
  characteristic: 'メッシュを挟み込んだショートタイプのタン形状、あらゆる角度への動作をスムーズに行えるマルチスタッドをソール全面に配置したHGソール、シューズと足の一体感を高める起毛スエードを採用した履き口がストレスフリーな履き心地を提供し、練習から試合までパフォーマンスアップを約束。Dと2Eの2種類のウイズで展開し、最良のフィット感を提供します。',
  images: [Rails.root.join("db/fixtures/442_1.jpg").open,
           Rails.root.join("db/fixtures/442_1.jpg").open
  ]
)
spike.save_tags_for_spike('','ホワイト×オレンジ') if spike.save

spike = Spike.new(
  maker: 'ナイキ',
  name: 'ファントムヴィジョン',
  price: 27500,
  characteristic: 'クワッドフィットが繊維が4方向に伸縮することでプレイヤーの足に馴染み、全方向へのサポートを提供。足との接触点を最低限に減らし、一度紐を引くことで前足部まで均等にシューレースの圧が分散するゴーストレースシステムを採用。ニットを編む前の糸に浸透させた新しいAll Conditions Control (ACC) テクノロジーにより、マットな仕上がりで手触りも優しく、しかし悪天候にも対応する。必要な部分のサポートを高めた軽量で反発性に優れた新たなFGプレートが、スタッドを支えるとともに、シューズ自体の軽量化にも貢献。',
  images: [Rails.root.join("db/fixtures/ファントムヴィジョン_1.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴィジョン_2.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴィジョン_3.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴィジョン_4.jpg").open
  ]
)
spike.save_tags_for_spike('','イエロー×ホワイト,ブラック×オレンジ,ブラック×ブルー,ブルー×シルバー') if spike.save

spike = Spike.new(
  maker: 'アディダス',
  name: 'エックス 19.1',
  price: 21000,
  characteristic: '薄いメッシュアッパーが軽量化とボールタッチの向上に貢献する、サッカースパイク。ローカットのシルエットと成型ヒールにより、足をしっかりと固定。アウトソールにはパーフォレーションを施し、その軽さが天然芝グラウンドで稲妻のようなスピードのプレーを促す。',
  images: [Rails.root.join("db/fixtures/エックス19.1_1.jpg").open,
           Rails.root.join("db/fixtures/エックス19.1_2.jpg").open,
           Rails.root.join("db/fixtures/エックス19.1_3.jpg").open,
           Rails.root.join("db/fixtures/エックス19.1_4.jpg").open,
           Rails.root.join("db/fixtures/エックス19.1_5.jpg").open,
           Rails.root.join("db/fixtures/エックス19.1_6.jpg").open,
           Rails.root.join("db/fixtures/エックス19.1_7.jpg").open
  ]
)
spike.save_tags_for_spike('','ホワイト×ピンク,ブルー×ブラック,ブラック×シルバー') if spike.save

spike = Spike.new(
  maker: 'アンブロ',
  name: 'アクセレイター',
  price: 19000,
  characteristic: 'インステップ部分に入る横向きのステッチ間隔を広げ、ボールへの接地面を広げることにより、よりボールコントロールがしやすい仕様に。
                   横向きに入るステッチの間隔を広げた分、皮の伸びすぎを防ぐため、縦方向に入るステッチは直線ではなく、ジグザグとした縫い方となっています。プレミアム パフ］を搭載することにより、中足部のホールド感がアップし、より足にフィットする感覚となりました。',
  images: [Rails.root.join("db/fixtures/アクセレイター_1.jpg").open,
           Rails.root.join("db/fixtures/アクセレイター_2.jpg").open,
           Rails.root.join("db/fixtures/アクセレイター_3.jpg").open
  ]
)
spike.save_tags_for_spike('','ホワイト×ブルー,レッド×ダークレッド,ブラック') if spike.save

spike = Spike.new(
  maker: 'プーマ',
  name: 'ワン5.1',
  price: 22000,
  characteristic: '足にぴったりフィットし、スピードとタッチをサポートするようデザインされたスパイクです。evoKNITソック構造と薄いカンガルーレザーは圧迫感なくフィットしボールコントロール力を上げ、最高のパフォーマンスを引き出します。',
  images: [Rails.root.join("db/fixtures/ワン5.1_1.jpg").open,
           Rails.root.join("db/fixtures/ワン5.1_2.jpg").open,
           Rails.root.join("db/fixtures/ワン5.1_3.jpg").open
  ]
)
spike.save_tags_for_spike('','レッド×ブラック,イエロー×ブラック×ホワイト,ブラック×ライトブルー') if spike.save

spike = Spike.new(
  maker: 'ナイキ',
  name: 'ファントムヴェノム',
  price: 25000,
  characteristic: '甲周りのブレードがスピンを生み､ボールの軌道をコントロール。Flywireケーブルと柔軟なHyperReactiveプレーとが､いつでも抜群の安定感とトラクションを発揮します。',
  images: [Rails.root.join("db/fixtures/ファントムヴェノム_1.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴェノム_2.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴェノム_3.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴェノム_4.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴェノム_5.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴェノム_6.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴェノム_7.jpg").open,
           Rails.root.join("db/fixtures/ファントムヴェノム_8.jpg").open
  ]
)
spike.save_tags_for_spike('','イエロー×ブラック,レッド×ブラック,シルバー×オレンジ,オレンジ×ホワイト,ブルー×ホワイト,ブラック×ホワイト,ブラック,ゴールド×ネイビー') if spike.save

spike = Spike.new(
  maker: 'アディダス',
  name: 'ネメシス19.1',
  price: 23000,
  characteristic: '伸縮性に優れるテンションテープを組み合わせることで、激しく俊敏な動きの中で足全体をサポート。V字型の履き口構造が足首周りを頑丈に固定。柔らかなテンションテープがソフトなボールタッチに貢献。スプリットツーリングと新スタッド構造が俊敏且つ軽快なステップワークをもたらす。',
  images: [Rails.root.join("db/fixtures/ネメシス19.1_1.jpg").open,
           Rails.root.join("db/fixtures/ネメシス19.1_2.jpg").open,
           Rails.root.join("db/fixtures/ネメシス19.1_3.jpg").open,
           Rails.root.join("db/fixtures/ネメシス19.1_4.jpg").open
  ]
)
spike.save_tags_for_spike('','ピンク×ネイビー,オレンジ×ホワイト,シルバー×オレンジ,ブルー×ホワイト') if spike.save

spike = Spike.new(
  maker: 'ミズノ',
  name: 'モレリアネオ2',
  price: 20000,
  characteristic: '軽量・柔軟・素足感覚をさらに研ぎ澄ました新生モレリアネオ。アッパー前足部には軽量かつ柔軟性に優れたスコッチガードカンガルーレザー、中・後足部にはマイクロファイバー人工皮革を採用。',
  images: [Rails.root.join("db/fixtures/モレリアネオ2_1.jpg").open,
           Rails.root.join("db/fixtures/モレリアネオ2_2.jpg").open,
           Rails.root.join("db/fixtures/モレリアネオ2_3.jpg").open,
           Rails.root.join("db/fixtures/モレリアネオ2_4.jpg").open
  ]
)
spike.save_tags_for_spike('','ホワイト×ゴールド,ライトブルー×ホワイト,レッド×ブラック,イエロー×ネイビー') if spike.save
