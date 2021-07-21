package codingTest;

import java.util.Scanner;

public class Triple1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while (true) {
			System.out.println("정수를 입력하세요");
			int num = sc.nextInt();
			if (num == 0) {
				break;
			}
			String str = num > 10 ? num+"은 10보다 크다" : num+"은 10보다 작다";
			System.out.println(str);
		}
		System.out.println("프로그램 종료");
		sc.close();
	}
}
