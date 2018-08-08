package ems.action;

import java.io.ByteArrayInputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import ems.util.SecurityCode;
import ems.util.SecurityImage;

public class ValidCodeAction extends ActionSupport {

	private static final long serialVersionUID = 5633780176793520460L;
	// ͼƬ��
	private ByteArrayInputStream imageStream;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			String securityCode = SecurityCode.getSecurityCode();
			imageStream = SecurityImage.getImageAsInputStream(securityCode);
			// ����session��
			// session.put("securityCode", securityCode);
			System.out.println("securityCode = " + securityCode);
			request.getSession().setAttribute("checkCode", securityCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public ByteArrayInputStream getImageStream() {
		return imageStream;
	}

	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}

}
