require 'rake/testtask'

task :default => :test

### This iterates through all files, running all tests in the same run.
###   NOTE: I sure would like to find a way to define a non-default task
###   NOTE:  that runs all tests from multiple files all in the same run.
Rake::TestTask.new do |t|
  t.libs << ["lib"]
  t.warning = true
  t.verbose = true
  t.test_files = FileList['test/*_test.rb']
end

### This iterates through each file, where each file is a different run.
task :example do
  test_files = FileList['test/*_test.rb']
  test_files.each do |f|
    ruby f
  end
end
