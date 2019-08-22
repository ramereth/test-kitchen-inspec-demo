describe ini('ini_file.ini') do
  its('port') { should eq '123' }
  its('server') { should eq '192.168.1.10' }
  its('section.setting_name') { should cmp 123 }
end
