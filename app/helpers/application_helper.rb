module ApplicationHelper
  def user_avatar(user)
    if user.avatar.attached?
      user.avatar.variant(resize_to_fit: [200, 250])
    else
      asset_path('cat.jpg')
    end
  end

  def user_avatar_thumb(user)
    if user.avatar.attached?
      user.avatar.variant(resize_to_fill: [50, 50])
    else
      asset_path('cat_thumb.jpg')
    end
  end

  def bi_icon(icon_class)
    content_tag 'span', '', class: "bi bi-#{icon_class}"
  end
end
