

ActiveRecord::Schema.define(version: 2019_01_30_170210) do

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id"
    t.integer "pin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pin_id"], name: "index_comments_on_pin_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "pins", force: :cascade do |t|
    t.text "pins_name"
    t.text "url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pins_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
