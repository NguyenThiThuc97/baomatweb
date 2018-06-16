package servlets;

public class TranBoDem {
	public static boolean TBD50(String st)
	{
		if(st.length()>50)
			return false;
		else
			return true;
	}
	public static boolean TBD100(String st)
	{
		if(st.length()>100)
			return false;
		else
			return true;
	}
	public static boolean TBD10(String st)
	{
		if(st.length()>10)
			return false;
		else
			return true;
	}
}
