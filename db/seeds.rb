# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

basic_income_categories = BasicIncomeCategory.create([
    {name: "ボーナス"},{name: "臨時収入"},{name: "副業"} ])

basic_expense_categories = BasicExpenseCategory.create([
    {name: "食費"},{name: "交際費"},{name: "住居費"},{name: "光熱費"},{name: "通信費"},{name: "日用品"},{name: "クレジットカード"} ])    