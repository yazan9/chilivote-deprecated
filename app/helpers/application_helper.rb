module ApplicationHelper
  def user_avatar(user)
    @avatar = "<div class='avatar_box'>"
    @avatar += cl_image_tag user.profile_image ? (user.profile_image) : Chilivote::Application.config.default_profile_image , :width=>40, :height => 40, :crop => :thumb
    @avatar += "<span class='user_name_in_avatar'>"
    @avatar += link_to user.first_name + " " + user.last_name, {:controller => 'users', :action => 'show', :id => user.id}
    @avatar += "</span>"
    @avatar += "</div>"
  end
  
  def user_avatar_one_line(user)
    @avatar = "<span class='avatar_box'>"
    @avatar += cl_image_tag user.profile_image ? (user.profile_image) : Chilivote::Application.config.default_profile_image , :width=>40, :height => 40, :crop => :thumb
    @avatar += "<span class='user_name_in_avatar'>"
    @avatar += link_to user.first_name + " " + user.last_name, {:controller => 'users', :action => 'show', :id => user.id}
    @avatar += "</span>"
    @avatar += "</span>"
  end
  
  def user_avatar_one_line_small(user)
    @avatar = "<span class='avatar_box'>"
    @avatar += cl_image_tag user.profile_image ? (user.profile_image) : Chilivote::Application.config.default_profile_image , :width=>25, :height => 25, :crop => :thumb
    @avatar += "<span class='user_name_in_avatar'>"
    @avatar += link_to user.first_name + " " + user.last_name, {:controller => 'users', :action => 'show', :id => user.id}
    @avatar += "</span>"
    @avatar += "</span>"
  end
  
  def user_avatar_one_line_small_photo(user)
    @avatar = "<span class='avatar_box pull-left'>"
    @avatar += cl_image_tag user.profile_image ? (user.profile_image) : Chilivote::Application.config.default_profile_image , :width=>25, :height => 25, :crop => :thumb
    @avatar += "</span>"
  end
  
  def user_avatar_one_line_no_link(user)
    @avatar = "<span class='avatar_box'>"
    @avatar += cl_image_tag user.profile_image ? (user.profile_image) : Chilivote::Application.config.default_profile_image , :width=>40, :height => 40, :crop => :thumb
    @avatar += "<span class='user_name_in_avatar'>"
    @avatar += user.first_name + " " + user.last_name
    @avatar += "</span>"
    @avatar += "</span>"
  end
  
  def avatar_image_big(user)
    cl_image_tag user.profile_image ? user.profile_image : Chilivote::Application.config.default_profile_image , :width=>168, :height => 168, :crop => :fit, :class => "img-polaroid"
  end
end
