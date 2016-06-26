package com.mycompany.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.mycompany.model.Skill;

@Component
public class SkillConverter implements Converter<String,Skill> {

	@Override
	public Skill convert(String arg0) {
		return new Skill("IT","ITALIA");
	}

}
