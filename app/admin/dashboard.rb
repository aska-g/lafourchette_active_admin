ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Users ##{User.count}" do
          ul do
            User.limit(5).map do |user|
              li user.email
              # li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel "Recent Restaurants" do
          ul do
            Restaurant.limit(5).map do |r|
              li r.name
              # li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel "Recent Reviews" do
          ul do
            Review.limit(5).map do |r|
              li r.content
              # li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end
    end
  end # content
end
