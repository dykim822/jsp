package codingTest;

public class Sum4 {
	public static void main(String[] args) {
		int[] a = {30,50,10,60,40,100,90,20,100};
		int max = 0, sum = 0, k = 0;
		for (int i =0; i < a.length; i++) {
			if (a[i] > max) {
				max = a[i];
			}
		}
		for (int i = 0; i < a.length; i++) {
			if (a[i] != max && k == 0) {
				k++;
			} else {
				sum += a[i];
			}
		}
		System.out.printf("합계 : " + sum);
	}
}
