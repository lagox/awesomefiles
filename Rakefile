scripts = []

BASE_DIR = File.expand_path('.')
TMP_DIR  = File.expand_path('tmp')

Dir.foreach('.') do |file_name|
 if File.directory?(file_name) and not file_name =~ /^\./
   scripts << file_name

   update_dir    = File.join(BASE_DIR, file_name)
   update_script = File.join(update_dir, 'update.rb')

   if File.exist?(update_script)
     task file_name do
       require update_script

       Dir.chdir update_dir

       module_name = file_name.gsub!(/^[a-z]|_+[a-z]/) { |a| a.upcase }.gsub('_', '')
       eval "#{module_name}.update!"
     end
   end

 end
end

# Create tmp dir
Dir.mkdir('tmp') unless File.exists?('tmp')

# `rake update` will update all
task :update => scripts do; end
