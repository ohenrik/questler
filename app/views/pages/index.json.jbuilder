json.array!(@pages) do |page|
  json.partial! 'pages/page', page: page
end
