scripts = []

Dir.foreach('.') do |file_name|
 if File.directory?(file_name) and not file_name =~ /^\./
   scripts << file_name

   update_script = File.join(file_name, 'update.rb')

   if File.exist?(update_script)
     task file_name do
       require update_script

       module_name = file_name.gsub!(/^[a-z]|_+[a-z]/) { |a| a.upcase }.gsub('_', '')
       eval "#{module_name}.update!"
     end
   end

 end
end

task :update => scripts do; end
