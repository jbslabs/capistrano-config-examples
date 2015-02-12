namespace :examples do
  desc 'Check if all example files for linked_files are present'
  task :check do
    fetch(:linked_files).each do |linked_file|
      example_file = example_file_for(linked_file)

      fail "Example file not found: #{example_file}" unless File.exists? example_file
    end
  end

  desc 'Copy all example files for linked_files to shared directory'
  task :copy do
    on roles(:app) do
      fetch(:linked_files).each do |linked_file|
        # make sure file can be created
        shared_file = File.join(shared_path, linked_file)
        execute :mkdir, '-pv', File.dirname(shared_file)

        # upload example file
        upload! example_file_for(linked_file), shared_file
      end
    end
  end

  def example_file_for(linked_file)
    linked_file.pathmap "%X.example%x"
  end
end

desc 'Configure example paths'
task :config do
  invoke 'examples:check'
  invoke 'examples:copy'
end
