package ems.util;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import ems.action.postAction;
import ems.vo.Reply;
import ems.vo.Post;

public class SayInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		String s="Ð¡Ñ§Éú,Éµ±Æ,²ÙÄãÂè,²Ý";
		postAction newsaction=(postAction)arg0.getAction();
		Reply c=newsaction.getC();
		if(c!=null){
			String content=c.getContent();
			String [] strs=s.split(",");
			for(String str:strs){
				content=content.replaceAll(str, "**");
			}
			c.setContent(content);
			newsaction.setC(c);
		}
		Post n=newsaction.getN();
		if(n!=null){
			String content=n.getContent();
			String [] strs=s.split(",");
			for(String str:strs){
				content=content.replaceAll(str, "**");
			}
			n.setContent(content);
			newsaction.setN(n);
		}
		return arg0.invoke();
	}

}
