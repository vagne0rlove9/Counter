
require 'socket'

server = TCPServer.new(9999)
c=0
c1="GET / HTTP/1.1"
if(c1==="GET / HTTP/1.1\n")
  puts c
end
SERVER_ROOT='C:\Users\Кирилл\Documents\GitHub\Counter\ulab\index.html'
while (session = server.accept)
  request = session.gets
  c=c+1

  if (request.to_s.eql?(c1))
    puts request
  end
  puts request
  method, full_path = request.split(' ')
  file_path="#{SERVER_ROOT}"
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