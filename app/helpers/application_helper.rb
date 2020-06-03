module ApplicationHelper
  def full_title(page_name = "")
    base_title = "簡易予定表"
    if page_name.empty?
      base_title
    else
      page_name + " | " + base_title
    end
  end

  def plan_1_text(plan_i)
    if plan_i == 1
      "&nbsp;直&nbsp;行&nbsp;".html_safe
    end
  end

  def plan_2_text(plan_i)
    if plan_i == 1
      "展示会"
    end
  end

  def plan_3_text(plan_i)
    if plan_i == 1
      "&nbsp;会&nbsp;議&nbsp;".html_safe
    end
  end

  def plan_4_text(plan_i)
    if plan_i == 1
      "&nbsp;出&nbsp;張&nbsp;".html_safe
    end
  end

  def plan_5_text(plan_i)
    if plan_i == 1
      "&nbsp;代&nbsp;休&nbsp;".html_safe
    end
  end

  def plan_6_text(plan_i)
    if plan_i == 1
      "&nbsp;有&nbsp;給&nbsp;".html_safe
    end
  end

  def plan_7_text(plan_i)
    if plan_i == 1
      "その他"
    end
  end

  def plan_8_text(plan_i)
    if plan_i == 1
      "&nbsp;社&nbsp;内&nbsp;".html_safe
    end
  end
end
