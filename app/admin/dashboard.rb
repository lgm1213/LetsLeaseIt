ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    columns do
      column do
        panel "Users" do
          table_for User.all.each do
            column("Username") { |user| status_tag(user.username) }
            column("E-mail") { |user| link_to(user.email, admin_user_path(user)) }
            column("Role")   { |user| number_to_currency user.role }
          end
        end
      end
    end
  end
end
