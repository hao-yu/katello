namespace :katello do
  namespace :upgrades do
    namespace '3.3' do
      task :import_subscriptions => ["environment"] do
        User.current = User.anonymous_api_admin
        puts _("Importing Subscriptions")
        Katello::Subscription.import_all
        Katello::Pool.import_all
      end
    end
  end
end
