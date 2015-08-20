package com.greatwall.ideas;

public class StringTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String ss = "WHERE orderby createTime DESC";
		System.out.println(ss.indexOf("order by"));
		System.out.println(ss.substring(0, ss.indexOf("order by")));
	}

}
