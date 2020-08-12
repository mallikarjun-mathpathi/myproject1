package com.examdtl;

public class examdtlBean {
	 
	    private String examid,examtype, examdate, coursename, Semsectype, nonesemse;
	 
	    public examdtlBean( String examid,String examtype,String examdate,String coursename,String Semsectype,String nonesemse) {
	        super();
	        
}

		public String getExamid() {
			return examid;
		}

		public void setExamid(String examid) {
			this.examid = examid;
		}

		public String getExamtype() {
			return examtype;
		}

		public void setExamtype(String examtype) {
			this.examtype = examtype;
		}

		public String getExamdate() {
			return examdate;
		}

		public void setExamdate(String examdate) {
			this.examdate = examdate;
		}

		public String getCoursename() {
			return coursename;
		}

		public void setCoursename(String coursename) {
			this.coursename = coursename;
		}

		public String getSemsectype() {
			return Semsectype;
		}

		public void setSemsectype(String semsectype) {
			Semsectype = semsectype;
		}

		public String getNonesemse() {
			return nonesemse;
		}

		public void setNonesemse(String nonesemse) {
			this.nonesemse = nonesemse;
		}
	    
	    
}