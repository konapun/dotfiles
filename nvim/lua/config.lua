local fs = require('filesystem')

for file in fs.list('./config') do
  if not fs.isDirectory(file) then
    require(file)
  end
end

