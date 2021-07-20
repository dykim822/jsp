package codingTest;
public class Arr1 {
	public static void main(String[] args) {
//		String[] a = {"a","b","c","d","e"};
//		String[] b = {"x","y"};
		String[] a = {"a","b","c","d"};
		String[] b = {"x","y","z"};
		String[] result = new String[a.length*2]; // 사이 사이 b값 추가
		int j = 0, k = 0;
		for (int i = 0; i < a.length; i++, k++) {
			result[j] = a[i];
			j++;
			if (k >= b.length) k = 0;
			result[j] = b[k];
			j++;
		}
		for(int i = 0; i < result.length; i++) {
			System.out.println(result[i]);
		}
	}
}