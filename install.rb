#! /usr/bin/env ruby

# Get the distro.
# Returns a hash with:
#     distro    =>  Distro name
#     version   =>  Distro version
# If can't find the file, returns nil.

def get_distro
  distro = { 'distro' => nil , 'version' => nil}
  if File.exists? '/etc/os-release'
    puts 'File exists!'
    File.readlines('/etc/os-release').each do |line|
      distro['distro'] = line.split('=')[1].tr("\n",'') if (line.split('=')[0] == 'ID')
      distro['version'] = line.split('=')[1] if (line.split('=')[0] == 'VERSION_ID')
    end
  else
    distro = nil
  end
  return distro
end
