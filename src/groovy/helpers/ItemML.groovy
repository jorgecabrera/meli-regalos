package helpers
import com.google.gson.JsonObject


class ItemML {
	String descripcion;
	String imagen;
	String url;
	public ItemML(JsonObject json){
		descripcion=json.getAsString("title");
		imagen=json.getAsString("thumbnail");
		url=json.getAsString("permalink");
	}
}
