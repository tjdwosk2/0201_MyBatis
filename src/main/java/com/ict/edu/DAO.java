package com.ict.edu;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate sqlSessionTemplate;

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public List<VO> getList(){
		return sqlSessionTemplate.selectList("guestbook.list");
	}
	
	public VO getOneList(String idx) {
		return sqlSessionTemplate.selectOne("guestbook.onelist", idx);
	}
	
	public int getDelete(String idx) {
		return sqlSessionTemplate.delete("guestbook.delete", idx);
	}
	
	public int getUpdate(VO vo) {
		return sqlSessionTemplate.update("guestbook.update", vo);
	}
	
	public int getInsert(VO vo) {
		return sqlSessionTemplate.insert("guestbook.insert", vo);
	}
	
}
