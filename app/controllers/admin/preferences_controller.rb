class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.last
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preferences_params)
    redirect_to admin_preferences_path
  end

  private

  def preferences_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end
end
