package db_connect;

public class Movie1VO {
	
	private String id;
	private String title;
	private String content;
	private String img;
	private String url1;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getUrl() {
		return url1;
	}
	public void setUrl(String url) {
		this.url1 = url;
	}
	
	@Override
	public String toString() {
		return "Movie1VO [id=" + id + ", title=" + title + ", content=" + content + ", img=" + img + ", url=" + url1
				+ "]";
	}
	
}
