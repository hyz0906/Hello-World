objects = Main.o Error.o PollReactor.o DiagnosticsClient.o DiagnosticsServer.o TcpServer.o

main : $(objects)
	cc -o main $(objects)

$(objects) : Error.h EventHandler.h Handle.h ReactorEventLoop.h Reactor.h DiagnosticsServer.h DiagnosticsClient.h TcpServer.h ServerEventNotifier.h

.PHONY : clean
clean :
	rm main $(objects)
