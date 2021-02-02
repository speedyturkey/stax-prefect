module Stax
  module Prefect

    class Cmd < Base
      class_option :recon, aliases: '--just-print', type: :boolean, default: false, desc: 'print command that would be run'

        no_commands do

          ## location of prefect binary
          def prefect_bin
            'prefect'
          end

          ## run prefect with args
          def prefect_run(*args)
            cmd = [prefect_bin, *args].join(' ')
            options[:recon] ? puts(cmd) : system(cmd)
          end

          def prefect_run_args
            [].tap do |args|
              args.push("--project #{project_name}")
              args.push("--logs") if options[:logs]
              args.push("--watch") if options[:watch]
            end.flatten
          end

        end

        desc 'create', 'create prefect project'
        def create
          debug("Creating prefect project #{project_name}")
          prefect_run(:create, project_name)
        end

        desc 'run_flow', 'runs prefect flow'
        method_option :logs, type: :boolean, default: false, desc: 'get logs of the flow run, stream output to to stdout'
        method_option :watch, type: :boolean, default: false, desc: 'watch current state of the flow run, stream output to stdout'
        def run_flow(flow_name)
          debug("Running #{project_name}/#{flow_name}")
          prefect_run(:run, :flow, "--name #{flow_name}", prefect_run_args)
        end

    end

  end
end