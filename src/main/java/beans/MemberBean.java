package beans;

import java.io.Serializable;

/*
 * [javabeans 규약]
 * 1. [필수]public class 
 * 2. [선택] java.io.Serializable 인터페이스를 구현 (네크워크에서 객체를 직렬화)
 * 3. [필수]private member variable
 * 4. [필수]public 기본생성자
 * 5. [필수]public getter, setter
 * 6. [선택] toString, equals 메소드를 오버라이딩
 */

public class MemberBean implements Serializable {
	private String name;
	private int age;
	private String telnum;
	
	public MemberBean() {
		
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

	public String getTelnum() {
		return telnum;
	}

	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}
	
	@Override
		public boolean equals(Object obj) {
			// TODO Auto-generated method stub
			return super.equals(obj);
		}

	@Override
	public String toString() {
		return "MemberBean [name=" + name + ", age=" + age + ", telnum=" + telnum + "]";
	}
	

	
}// class
