package 'httpd' do
  action :install
end

template node['webapp']['index_path'] do
  source "index.html.erb"
  action :create
  variables ({
    :myTitle => node['webapp']['title']
  })
end

service 'httpd' do
  action [:start,:enable]
end
