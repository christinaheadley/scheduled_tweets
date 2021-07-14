class OmniauthCallbacksController < ApplicationController
  def twitter
    Rails.logger.info auth #to see returned hash items

    twitter_account = Current.user.twitter_accounts.where(username: auth.info.nickname).first_or_initialize
    twitter_account.update(
      name: auth.info.name,
      username: auth.info.nickname,
      image: auth.info.image,
      token: auth.credentials.token,
      secret: auth.credentials.secret,
      #method names determined by omniauth
    ) 

    redirect_to twitter_accounts_path, notice: "Successfully connected account."
  end

  def auth
    request.env['omniauth.auth'] #omniauth method which return hash of credentials from twitter
  end
end