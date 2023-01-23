package nmcnpm.web_datphong.utility;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

@Component
public class Validator {
	private static final String EMAIL_PATTERN = "^[a-zA-Z0-9][\\w.]{5,29}+@([\\w]+\\.[\\w]+|[\\w]+\\.[\\w]{2,}\\.[\\w]{2,})$";
	private static final String UPPERCASE_NAME_PATTERN= "^[A-Z][A-Z]*";
	private static final String NAME_PATTERN ="(^[A-Z][a-z]+[\\s]+)";
	private static final String PHONE_PATTERN = "[0-9]{7,11}+";
	
	
	public boolean isEmailValid(String email) {
		Pattern pattern = Pattern.compile(EMAIL_PATTERN);
		Matcher matcher = pattern.matcher(email);
		return matcher.matches();
	}
	public boolean isNameValid(String name) {
		Pattern pattern = Pattern.compile(NAME_PATTERN);
		Matcher matcher = pattern.matcher(name);
		return matcher.matches();
	}
	public boolean isPhoneValid(String number) {
		Pattern pattern = Pattern.compile(PHONE_PATTERN);
		Matcher matcher = pattern.matcher(number);
		return matcher.matches();
	}
	
	public static void main(String[] args) {
		Validator v = new Validator();
		//System.out.println(v.isEmailValid("nguyen.kevin@gmail.com"));
		//System.out.println(v.isNameValid("Dasfaf  "));
		System.out.println(v.isPhoneValid("0981754134"));
	}

	

}
