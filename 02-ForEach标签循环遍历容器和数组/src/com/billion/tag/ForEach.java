package com.billion.tag;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.*;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ForEach extends SimpleTagSupport {
	private Object items;
	private String var;

	public void setItems(Object items) {
		this.items = items;
	}

	public void setVar(String var) {
		this.var = var;
	}
	
	public Collection getCollection() {
		if(items instanceof List) {
			return (List)items;
		}else if(items instanceof Set){
			return (Set)items;
		}else if(items instanceof Map) {
			return ((Map)items).entrySet();
		}else if(items instanceof Object[]) {
			Arrays.asList(items);
		}else if(items.getClass().isArray()) {
			List newItems = new ArrayList();
			for(int i = 0; i < Array.getLength(items); i++) {
				newItems.add(Array.get(items, i));
			}
			return newItems;
		}
		return null;
	}
	@Override
	public void doTag() throws JspException, IOException {
		for(Object obj: getCollection()) {
			this.getJspContext().setAttribute(var, obj);
			this.getJspBody().invoke(null);
		}
	}
	
}
