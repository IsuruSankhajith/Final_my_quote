

ActiveRecord::Schema[7.0].define(version: 2023_09_26_162649) do
  create_table "categories", force: :cascade do |t|
    t.string "category_name", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "philosophers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "birth_year", null: false
    t.date "death_year"
    t.string "short_biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotecategories", force: :cascade do |t|
    t.integer "quotes_id"
    t.integer "categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_quotecategories_on_categories_id"
    t.index ["quotes_id"], name: "index_quotecategories_on_quotes_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.text "text", null: false
    t.text "user_comment"
    t.integer "publication_year"
    t.boolean "ispublic", null: false
    t.integer "users_id"
    t.integer "philosophers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["philosophers_id"], name: "index_quotes_on_philosophers_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
    t.index ["users_id"], name: "index_quotes_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "isadmin", null: false
    t.string "status", null: false
    t.boolean "user_role", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "quotecategories", "categories", column: "categories_id"
  add_foreign_key "quotecategories", "quotes", column: "quotes_id"
  add_foreign_key "quotes", "philosophers", column: "philosophers_id"
  add_foreign_key "quotes", "users", column: "users_id"
end
