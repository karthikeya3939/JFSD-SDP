	package com.klef.jfsd.springboot.model;
	
	import jakarta.persistence.Column;
	import jakarta.persistence.Entity;
	import jakarta.persistence.GeneratedValue;
	import jakarta.persistence.GenerationType;
	import jakarta.persistence.Id;
	import jakarta.persistence.Table;
	
	@Entity
	@Table(name = "course_table")
	public class Course 
	{	
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		
		@Column(name = "course_name",nullable=false,length = 100)
		private String name;
	
		@Column(name = "course_code",nullable=false,length = 100,unique = true)
		private String code;
		
		@Column(name = "course_type",nullable=false,length = 100)
		private String type;
		
		@Column(name = "course_desc",nullable=false,length = 300)
		private String desc;
		
		@Column(name = "course_start_date",nullable=false,length = 30)
		private String start_date;
		
		@Column(name = "course_end_date",nullable=false,length = 30)
		private String end_date;
		
		@Column(name = "course_seats",nullable=false)
		private int seats;
	
		@Override
		public String toString() {
			return "Course [id=" + id + ", name=" + name + ", code=" + code + ", type=" + type + ", desc=" + desc
					+ ", start_date=" + start_date + ", end_date=" + end_date + ", seats=" + seats + "]";
		}
	
		public int getId() {
			return id;
		}
	
		public void setId(int id) {
			this.id = id;
		}
	
		public String getName() {
			return name;
		}
	
		public void setName(String name) {
			this.name = name;
		}
	
		public String getCode() {
			return code;
		}
	
		public void setCode(String code) {
			this.code = code;
		}
	
		public String getType() {
			return type;
		}
	
		public void setType(String type) {
			this.type = type;
		}
	
		public String getDesc() {
			return desc;
		}
	
		public void setDesc(String desc) {
			this.desc = desc;
		}
	
		public String getStart_date() {
			return start_date;
		}
	
		public void setStart_date(String start_date) {
			this.start_date = start_date;
		}
	
		public String getEnd_date() {
			return end_date;
		}
	
		public void setEnd_date(String end_date) {
			this.end_date = end_date;
		}
	
		public int getSeats() {
			return seats;
		}
	
		public void setSeats(int seats) {
			this.seats = seats;
		}
		
		
		
		
	
	}
