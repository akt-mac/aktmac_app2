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
      "直行"
    end
  end

  def plan_2_text(plan_i)
    if plan_i == 1
      "展示会"
    end
  end

  def plan_3_text(plan_i)
    if plan_i == 1
      "会議"
    end
  end

  def plan_4_text(plan_i)
    if plan_i == 1
      "出張"
    end
  end

  def plan_5_text(plan_i)
    if plan_i == 1
      "代休"
    end
  end

  def plan_6_text(plan_i)
    if plan_i == 1
      "有給"
    end
  end

  def plan_7_text(plan_i)
    if plan_i == 1
      "その他"
    end
  end
end
