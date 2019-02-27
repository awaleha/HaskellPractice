#Awale Hassan - 500704868
#Michael Gorokhovsky - 500681974
#Cassandra Ferworn - 500687062

defmodule Ass3 do
  def serverId do
    receive do 
      {:clientRequest, senderId, n} -> # receives client request
        IO.puts ('Server Received: Client Req') #outputs
        send senderId, {:serverResponse, self, n} #sends back response, server pid and n
        serverId # calls serverId so process is listening for next call
    end 
  end

  def clientId do
    receive do
      {server, n} ->  #receives server pid. n represents number of messages passed
        if n<4 do  #if messages less than 4
          send server, {:clientRequest, self, n} #sends server pid a request, client pid and n
          clientId
        end

        if n>=4 do #if 4 messages have been sent and received 
        IO.puts "Server received: Client Req complete" #outputs
        IO.puts "From Server: Req complete"
        end
        
      {:serverResponse, server, n} -> #Receives server presonse, server pid and n
          IO.puts ('Client received: Server Res')
          send self, {server, n+1} #recursivley calls self, sends server pid and n+1
          clientId #calls client ID to process is listening for next call
    end
  end
end


server = spawn(Ass3, :serverId, []) #spawns a server process
c1 = spawn(Ass3, :clientId, []) #spawns a client process
send c1, {server, 0} #sends client process server pid