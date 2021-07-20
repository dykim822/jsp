package codingTest;
public class Mean1 {
	public static void main(String[] args) {
		int[] a = {30,50,10,60,40,100,90,20};
		int max = 0, min = 100, sum = 0;
		for (int i =0; i < a.length; i++) {
			if (a[i] > max) max = a[i];
			if (a[i] < min) min = a[i];
		}
		for (int i = 0; i < a.length; i++) {
			if (a[i] != max && a[i] != min) {
				sum += a[i];
			}					
		}
		double avg = (double)sum / (a.length - 2);
		System.out.printf("평점 : %.1f", avg);	
	}
}