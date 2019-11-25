
require 'socket'

server = TCPServer.new(9999)
c=0
c1="GET /script.js HTTP/1.1\r\n"
ct="Content-Type : text/html\r\n"
SERVER_ROOT='/home/user1/Загрузки/Counter/ulab/index.html'
while (session = server.accept)
  request = session.gets
  c=c+1

  if (request==c1)
    #puts request
    ct="Content-Type : application/javascript\r\n"
  end
  puts request
  method, full_path = request.split(' ')
  file_path="#{SERVER_ROOT}"
  response = "HTTP/1.1 200\r\n"
  response << ct
  response << "\r\n"
  body =
      if File.file?(file_path)
        File.read(file_path)
      else
        '404'
      end

  response << body
  session.print response
  session.close
end