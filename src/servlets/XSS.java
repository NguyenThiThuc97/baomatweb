package servlets;

public class XSS {
	public static boolean XSSkt(String st)
	{
		String regex = "[\\s?&//%^#!_+;><=w,]*";
		for(int i=0; i<st.length();i++)
		{
			for(int j=0; j<regex.length();j++)
			{
				if(st.charAt(i)==regex.charAt(j))
					return false;
			}
		}
		return true;
	}
	public static boolean XSSkttk(String st)
	{
		String regex = "[\\s?&//%^#!_+;><=w(),]*";
		for(int i=0; i<st.length();i++)
		{
			for(int j=0; j<regex.length();j++)
			{
				if(st.charAt(i)==regex.charAt(j))
					return false;
			}
		}
		return true;
	}
}
