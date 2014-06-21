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

task :euler1 do
  ruby "test/euler_01_test.rb"
end

task :euler2 do
  ruby "test/euler_02_test.rb"
end

task :euler3 do
  ruby "test/euler_03_test.rb"
end

task :euler4 do
  ruby "test/euler_04_test.rb"
end

task :euler5 do
  ruby "test/euler_05_test.rb"
end

task :euler6 do
  ruby "test/euler_06_test.rb"
end

task :euler7 do
  ruby "test/euler_07_test.rb"
end

task :euler8 do
  ruby "test/euler_08_test.rb"
end

task :euler9 do
  ruby "test/euler_09_test.rb"
end

task :euler19 do
  ruby "test/euler_19_test.rb"
end

task :euler20 do
  ruby "test/euler_20_test.rb"
end
