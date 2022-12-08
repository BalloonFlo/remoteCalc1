package test;

public class PrintThread3 extends Thread {
	
	@Override
	public void run() {
		for (int i = 1; i <= 500; i++) {
			System.out.println("프린트3: " + i);
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

}
