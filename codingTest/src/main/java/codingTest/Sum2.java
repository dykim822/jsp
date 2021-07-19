package codingTest;

public class Sum2 {
	public static void main(String[] args) {
		// 1부터 1000까지 자연수 중 3또는 5로 나눠 떨어지는 수들의 합
		int sum = 0;
		for (int i = 1; i <= 1000; i++) {
			if(i % 3 == 0 || i % 5 == 0) {
				sum += i;
			}
		}
		System.out.println("3의 배수, 5의 배수의 합 = " + sum);
	}
}
