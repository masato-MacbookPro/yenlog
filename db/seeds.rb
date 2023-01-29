Category.create!(
  [
    {name: "食費", kind: true},
    {name: "外食費", kind: true},
    {name: "交通費", kind: true},
    {name: "日用品", kind: true},
    {name: "交際費", kind: true},
    {name: "給料", kind: false},
    {name: "副業", kind: false},
    {name: "投資", kind: false}
  ]
)

r = Random.new
10.times do |n|
    start_date = Date.new(2023,1,1)
    end_date = Date.new(2023,12,31)
    Flow.create!(
        kind: true,
        date: Random.rand(start_date..end_date),
        money: r.rand(100..10000),
        memo: "支出メモテスト",
        category_id: r.rand(1..5)
    )
end

3.times do |n|
    start_date = Date.new(2023,1,1)
    end_date = Date.new(2023,12,31)
    Flow.create!(
        kind: false,
        date: Random.rand(start_date..end_date),
        money: r.rand(100..10000),
        memo: "収入メモテスト",
        category_id: r.rand(6..8)
    )
end
