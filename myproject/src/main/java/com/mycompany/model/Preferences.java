package com.mycompany.model;

import java.util.ArrayList;
import java.util.List;

public class Preferences {
	private boolean receiveNewsletter;
	private String[] interests;
	private String favouriteWord;
	private String sex;
	private List<Skill> skills;
	private List<Country> country;
	
	public Preferences() {
		// TODO Auto-generated constructor stub
		addSkill();
	}
	
	public boolean isReceiveNewsletter() {
		return receiveNewsletter;
	}
	public void setReceiveNewsletter(boolean receiveNewsletter) {
		this.receiveNewsletter = receiveNewsletter;
	}
	public String[] getInterests() {
		return interests;
	}
	public void setInterests(String[] interests) {
		this.interests = interests;
	}
	public String getFavouriteWord() {
		return favouriteWord;
	}
	public void setFavouriteWord(String favouriteWord) {
		this.favouriteWord = favouriteWord;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public List<Skill> getSkills() {
		return skills;
	}
	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}
	
	public List<Country> getCountry() {
		return country;
	}

	public void setCountry(List<Country> country) {
		this.country = country;
	}

	public void addSkill(){
		Skill skill = new Skill("1","sk1");
		if (skills == null) {
			skills = new ArrayList<Skill>();
		}
		skills.add(skill);
	}
	
	
	

	
	
	
}