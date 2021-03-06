# frozen_string_literal: true

module Decidim
  module Admin
    class AuthorizationWorkflowsController < Decidim::Admin::ApplicationController
      layout "decidim/admin/users"

      def index
        enforce_permission_to :index, :authorization_workflows

        @workflows = Decidim::Verifications.admin_workflows
      end
    end
  end
end
