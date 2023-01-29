module Category::ReportsHelper
  def sum_money(category, month)
    category.flows.where(date: month.in_time_zone.all_month, kind: true).sum(:money)
  end
end
