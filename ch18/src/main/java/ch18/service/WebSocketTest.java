package ch18.service;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/websocket")
public class WebSocketTest {
	// 웹 소켓으로 연결한 정보 저장하기 위한 Map
	private static final Set<Session> clients = new HashSet<>();
	private Session session;
	@OnOpen	// 웹 소켓에 연결하면 
	public void open(Session session) {
		this.session = session;
		clients.add(session);
		String message = "connect";
		broadcast(message);
	}
	private void broadcast(String message) {
		for(Session client:clients) {	// 연결된 모두에게 메세지 전달
			try {
				client.getBasicRemote().sendText(message);
			} catch (IOException e) {
				clients.remove(client);	// 연결 끊어진 것으로 보고 제거
				try {
					client.close();
				} catch (IOException e1) { }
				message = "close";
				broadcast(message);
			}
		}
	}
	@OnMessage	// 메세지가 도착하면
	public void onmessage(String message) {
		// 메세지 내용이 없으면 이 메서드 종료
		if(message == null || message.equals("")) {
			return;
		} else {
			broadcast(message);
		}
	}
	@OnClose	// 채팅을 종료하면
	public void close() {
		clients.remove(session);	//종료한 사람의 session을 제거
		String message = "disconnect";
		broadcast(message);
	}
	@OnError	// 에러가 발생하면
	public void err(Throwable t) throws Throwable {
		System.out.println(t.getMessage());	// 콘솔에 에러메세지 출력
	}
}
