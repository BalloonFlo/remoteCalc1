package test;

import java.net.ServerSocket;
import java.net.Socket;

public class TCPServer {
	
	//톰킷은 자바로 만들어진 커다란 서버 프로그램
	//web02는 톰킷 자바프로그램 안에 패키지로 들어감
	public static void main(String[] args) throws Exception {
		
		//승인용 서버 소켓 필요
		//네트워크 프로그램은 외부자원연결(예외처리)
		ServerSocket server = new ServerSocket(9100); //ip+port
		System.out.println("승인용 서버 소켓 시작");
		System.out.println("클라이언트의 요청 기다리는 중");
		
		//승인이 떨어지면 통신용 소켓 만들어짐
		while (true) {
			Socket socket = server.accept(); //Socket
			System.out.println("클라이언트와 통신가능한 통신용 소켓 만들어짐");
		}
		
	}

}
