module SetDefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  protected

  def set_page_defaults
    @page_title = "Rails App | My portolio"
    @seo_description = "Cedric D. ANIDIE portfolio"
  end
end
