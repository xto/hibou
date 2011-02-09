# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

require 'metric_fu'

MetricFu::Configuration.run do |config|
  config.rcov[:test_files] = ['spec/**/*_spec.rb']
  config.rcov[:rcov_opts] << "-Ispec" # Needed to find spec_helper
  config.metrics  = [:churn, :flog, :flay, :reek,:roodi, :rcov]
  config.graphs   = [:flog, :flay, :reek, :roodi, :rcov, :rails_best_practices]

end

Hibou::Application.load_tasks