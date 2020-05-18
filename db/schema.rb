# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_18_093746) do

  create_table "authentications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "provider", null: false
    t.string "uid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider", "uid"], name: "index_authentications_on_provider_and_uid"
    t.index ["user_id"], name: "index_authentications_on_user_id"
  end

  create_table "genre_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre"], name: "index_genre_tags_on_genre", unique: true
  end

  create_table "ground_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ground"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ground"], name: "index_ground_tags_on_ground", unique: true
  end

  create_table "player_genre_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "genre_tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_tag_id"], name: "index_player_genre_tags_on_genre_tag_id"
    t.index ["player_id"], name: "index_player_genre_tags_on_player_id"
  end

  create_table "player_position_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "position_tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_position_tags_on_player_id"
    t.index ["position_tag_id"], name: "index_player_position_tags_on_position_tag_id"
  end

  create_table "player_strength_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "strength_tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_strength_tags_on_player_id"
    t.index ["strength_tag_id"], name: "index_player_strength_tags_on_strength_tag_id"
  end

  create_table "players", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "spike_id", null: false
    t.index ["spike_id"], name: "index_players_on_spike_id"
  end

  create_table "position_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position"], name: "index_position_tags_on_position", unique: true
  end

  create_table "spike_ground_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "spike_id", null: false
    t.bigint "ground_tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ground_tag_id"], name: "index_spike_ground_tags_on_ground_tag_id"
    t.index ["spike_id"], name: "index_spike_ground_tags_on_spike_id"
  end

  create_table "spikes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "maker", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.string "color", null: false
    t.text "slogan", null: false
    t.text "characteristic", null: false
    t.string "images", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strength_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strength"], name: "index_strength_tags_on_strength", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "twitter_id", null: false
    t.string "email"
    t.string "crypted_password"
    t.string "salt"
    t.string "screen_name", null: false
    t.string "avatar"
    t.integer "role", default: 0, null: false
    t.integer "notification", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["twitter_id"], name: "index_users_on_twitter_id", unique: true
  end

  add_foreign_key "player_genre_tags", "genre_tags"
  add_foreign_key "player_genre_tags", "players"
  add_foreign_key "player_position_tags", "players"
  add_foreign_key "player_position_tags", "position_tags"
  add_foreign_key "player_strength_tags", "players"
  add_foreign_key "player_strength_tags", "strength_tags"
  add_foreign_key "players", "spikes"
  add_foreign_key "spike_ground_tags", "ground_tags"
  add_foreign_key "spike_ground_tags", "spikes"
end
