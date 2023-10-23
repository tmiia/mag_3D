class LegalController < ApplicationController
  def legal
    add_breadcrumb "mentions-légales", :legal_path
  end
  def rgpd
    add_breadcrumb "rgpd", :legal_rgpd_path
  end
  def cgu
    add_breadcrumb "cgu", :legal_cgu_path
  end
end
