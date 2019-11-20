
require 'socket'

server = TCPServer.new(9999)
SERVER_ROOT='/home/user1/Документы/html/Counter/webserv'
while (session = server.accept)
  request = session.gets
  method, full_path = request.split(' ')
  file_path="#{SERVER_ROOT}#{full_path}"
  response = "HTTP/1.1 200\r\n"
  response << "Content-Type : text/html\r\n"
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