package codingTest;

import java.util.Scanner;

public class Sum1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("시작 정수를 입력하세요");
		int start = sc.nextInt();
		System.out.println("끝 정수를 입력하세요");
		int end = sc.nextInt();
		int sum = 0;
		for (int i = start; i <= end; i++) {
			sum += i;
		}
		System.out.println(start+"부터 "+end+"까지 합 = "+sum);
		sc.close();
	}
}
