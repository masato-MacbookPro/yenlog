module Category::ReportsHelper
  def sum_money(category, month, kind)
    category.flows.where(date: month.in_time_zone.all_month, kind: kind).sum(:money)
  end
end
