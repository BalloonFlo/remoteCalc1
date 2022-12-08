package test;

public class ThreadMain {

	public static void main(String[] args) {
		
		//스레드 객체 3개 만들어주기
		CounterThread counter = new CounterThread();
		ImgThread img = new ImgThread();
		TimerThread timer = new TimerThread();
		
		//cpu한테 실행할 대기줄에 넣어주기
//		counter.start();
//		img.start();
//		timer.start();
		
		PrintThread1 print1 = new PrintThread1();
		PrintThread2 print2 = new PrintThread2();
		PrintThread3 print3 = new PrintThread3();
		
		print1.start();
		print2.start();
		print3.start();
		
	}

}
