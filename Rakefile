require 'erb'
require 'rake'
require 'yaml'

task :default => :install

task :cp_example_conf => [ :setup ]  do
  system("cp ./personal.yml.example ./.personal.yml")
end

task :setup do
  system("mkdir -p ./work")
end

task :install_static_files do
  Dir[ '*rc', 'bash_profile' ].each do |file|
    fname = File::basename(file)
    system("cp #{file} ./work/.#{fname}")
    system("ln -fs #{Dir.pwd}/work/.#{fname} ~/.#{fname}")
  end
end

task :install_generated_files do 
  Dir[ '*.erb' ].each do |template|
    fname = File::basename(template, ".erb")
    system("touch ./work/.#{fname}")
    @config = OpenStruct.new(YAML.load_file("./.personal.yml"))
    File.open("./work/.#{fname}", "w") do |out|
      out.write ERB.new(File.read(template)).result(binding)
    end
    system("ln -fs #{Dir.pwd}/work/.#{fname} ~/.#{fname}")
  end
end

task :install_janus_overrides do
  Dir[ 'vimrc.*' ].each do |file|
    fname = File::basename(file)
    system("cp #{file} ./work/.#{fname}")
    system("ln -fs #{Dir.pwd}/work/.#{fname} ~/.#{fname}")
  end
end

desc "generate and link files to home directory"
task :install => %w{ setup install_static_files install_generated_files install_janus_overrides }
