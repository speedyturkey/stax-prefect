module Stax
  class Base < Thor

    no_commands do
      def project_name
        @_project_name ||= prefect_safe("#{app_name}-#{branch_name}")
      end

      ## make string safe to use in naming prefect stuff
      ## prefect allows spaces and capitals in project names,
      ## but these don't play nicely in flow names, since
      ## docker image names/tags/repos are frequently based
      ## on flow name.
      def prefect_safe(string)
        string.slice(0, 50).gsub(/[\W_\s]/, '-').downcase
      end
    end

  end
end