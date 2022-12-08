package test;

public class PrintThread1 extends Thread {
	
	@Override
	public void run() {
		for (int i = 1; i <= 500; i++) {
			System.out.println("프린트1: " + i);
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

}
