module ApplicationHelper
  def stripe_express_path
    "https://connect.stripe.com/express/oauth/authorize?response_type=code&client_id=ca_BxMpOGL2zIiCZi04uobmFHoH2Ti71Gjf&scope=read_write"
  end
end
