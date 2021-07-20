package codingTest;

import java.math.BigInteger;

public class Fibo {
	public static void main(String[] args) {
		int num = 8181;
		BigInteger result = fibo(num);
		System.out.println("f(8181) = " + result);
	}

	private static BigInteger fibo(int num) {
		BigInteger[] f = new BigInteger[num];
		f[0] = new BigInteger("0");
		f[1] = new BigInteger("1");
		for(int i = 2; i < num; i++) {
			f[i] = f[i-1].add(f[i-2]);
		}
		return f[num - 1];
	}
}
