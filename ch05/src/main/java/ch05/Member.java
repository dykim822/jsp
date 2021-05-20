package ch05;

public class Member {
	private String name;
	private int age;
	public Member(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {	//객체 출력을 문자로 정의
		return "["+name+", "+age+"]";
	}
}
