require 'json'
require 'set'
require 'fileutils'

def initial_checks
  if system('git &> /dev/null').nil?
    raise('git must be installed')
  end
end

def generate_install_list
  fonts = JSON.load File.open "fonts.json"

  STDOUT.puts "Checking installed fonts..."
  installed_fonts = Set.new
  %x[fc-list].each_line do |font|
    aux = font.split(':')[1]
    aux[0] = ''
    installed_fonts.add aux
  end

  install_list = Array.new
  fonts.each do |font|
    unless installed_fonts.include? font["name"]
      install_list.push font
    end
  end

  install_list
end

def install_font(font,temp_folder_path)
  STDOUT.puts "Downloading #{font['name']}"

  github_base_url = "https://github.com"
  github_url = github_base_url + '/' +font['github']
  local_font_path = temp_folder_path + '/' + font['name']
  user_font_path = Dir.home + '/.local/share/fonts'

  %x[git clone #{github_url} #{local_font_path}]

  font['path'].each do |p|
    puts local_font_path + '/' + p
    FileUtils.cp( local_font_path + '/' + p, user_font_path)
  end
end

def install_fonts(install_list)
  if install_list.empty?
    STDOUT.puts "No fonts to install"
    exit
  end

  STDOUT.puts "Cloning git repos to installing fonts..."

  temp_folder_name = "temp" + Time.now.strftime("%Y%m%d%H%M%S%N")
  temp_folder_path = Dir.home + '/' + temp_folder_name

  Dir.mkdir temp_folder_path

  install_list.each do |font|
    install_font(font,temp_folder_path)
  end

  FileUtils.rm_rf temp_folder_path

  STDOUT.puts "Updating font cache"
  system('fc-cache')

  STDOUT.puts "Done!"
end


initial_checks
install_fonts generate_install_list
