package codingTest;

import java.util.Scanner;

public class Sum3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while (true) {
			System.out.println("자릿수 합계를 구할 숫자를 입력하세요");
			int num = sc.nextInt();
			if(num == 0) {
				break;
			}
			int result = sum(num);
			System.out.println("자릿수 합계 : " + result);
		}
		System.out.println("프로그램 종료");
		sc.close();
	}

	private static int sum(int num) {
		int result = 0;
		while (true) {
			if(num / 10 < 1) {	// 10으로 나눈 몫이 1보다 작으면 한자리 수 
				result += num % 10;
				break;
			} else {
				result += num % 10;
			}
			num = num / 10;
		}
		return result;
	}
}
