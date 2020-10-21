package com.example.model;

import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class Job {

	int id;
	int idLeader;
	@NotBlank(message = "Not Null Title!")
	@Length(max = 20, message = "Title Should <20!")
	String title;
	@NotBlank(message = "Not Null Description!")
	@Length(max = 255)
	String des;
	String img;

	String timeCreate;
	String timeEnd;
	String status;

	@Min(value = 1, message = "Id Person 1 Should >0!")
	int id1;
	@Min(value = 1, message = "Id Person 2 Should >0!")
	int id2;
	@Min(value = 1, message = "Id Person 3 Should >0!")
	int id3;
	@Min(value = 1, message = "Id Person 4 Should >0!")
	int id4;

	public Job() {
	}

	public Job(int id, int idLeader, String title, String des, String img, String timeCreate, String timeEnd,
			String status) {
		super();
		this.id = id;
		this.idLeader = idLeader;
		this.title = title;
		this.des = des;
		this.img = img;
		this.timeCreate = timeCreate;
		this.timeEnd = timeEnd;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdLeader() {
		return idLeader;
	}

	public void setIdLeader(int idLeader) {
		this.idLeader = idLeader;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTimeCreate() {
		return timeCreate;
	}

	public void setTimeCreate(String timeCreate) {
		this.timeCreate = timeCreate;
	}

	public String getTimeEnd() {
		return timeEnd;
	}

	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getId1() {
		return id1;
	}

	public void setId1(int id1) {
		this.id1 = id1;
	}

	public int getId2() {
		return id2;
	}

	public void setId2(int id2) {
		this.id2 = id2;
	}

	public int getId3() {
		return id3;
	}

	public void setId3(int id3) {
		this.id3 = id3;
	}

	public int getId4() {
		return id4;
	}

	public void setId4(int id4) {
		this.id4 = id4;
	}

}