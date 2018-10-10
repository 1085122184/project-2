package utils;
import java.util.List;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
public class JsonUtil {
	public static String toString(Object o)
	{
		ObjectMapper mapper=new ObjectMapper();
		try {
			return mapper.writeValueAsString(o);
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	public static <T> T toObject(String str,TypeReference<List<T>> typeReference) {
		ObjectMapper mapper=new ObjectMapper();
		try {
			return mapper.readValue(str, typeReference); 
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public static String returnvalue(int status,String text) {
		return toString(new JsonInfo(status,text));
	}
	public static class JsonInfo{
		int status;String text;
		
		public JsonInfo(int status, String text) {
			super();
			this.status = status;
			this.text = text;
		}

		public int getStatus() {
			return status;
		}

		public void setStatus(int status) {
			this.status = status;
		}

		public String getText() {
			return text;
		}

		public void setText(String text) {
			this.text = text;
		}
		
	}
}
