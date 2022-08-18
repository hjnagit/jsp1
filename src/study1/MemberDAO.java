package study1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.javafx.geom.transform.GeneralTransform3D;

public class MemberDAO {
	//공통으로 사용되는 객체를 선언
	Connection con = null; // 디비 연결 정보를 저장, 처리
	PreparedStatement pstmt = null; // sql 쿼리 실행, 처리
	ResultSet rs = null; // select 구문 결과 저장 
	String sql = ""; // sql 쿼리 저장
	
	// 디비 연결 메서드
	private Connection getCon() throws Exception{
		String DRIVER = "com.mysql.cj.jdbc.Driver";
		String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		String DBID = "root";
		String DBPW = "1234";
		
		Class.forName(DRIVER);
		System.out.println("드라이버로드 성공");
		
		con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("디비 성공");
		System.out.println("con : " + con);
		
		return con;
		
	}// 디비 연결 메서드
	
	
	// 디비 자원 해제 메서드
	public void closeDB(){
		
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		
	}// 디비 자원 해제 메서드
	
	
	
	//회원가입
	public int insertMember(MemberBean mb){
		int result = -1;
		try {
			//디비 연결
			con = getCon();
			
			
			//sql&pstmt
			sql = "insert into itwill_member(id, pw, name, age, gender, email, regdate) "
					+ "values(?,?,?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mb.getId());
			pstmt.setString(2, mb.getPw());
			pstmt.setString(3, mb.getName());
			pstmt.setInt(4, mb.getAge());
			pstmt.setString(5, mb.getGender());
			pstmt.setString(6, mb.getEmail());
			pstmt.setTimestamp(7, mb.getRegdate());
			
			// sql 실행
			result = pstmt.executeUpdate();
			
			System.out.println("DAO : 회원가입 성공");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return result;
		
	}//회원가입
	
	//로그인
	public int loginMember(MemberBean mb){
		
		int result = -1;
		
		try {
			//디비 연결
			con = getCon();
			
			//sql pstmt
			sql = "select pw from itwill_member where id = ?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mb.getId());
			
			//실행
			rs = pstmt.executeQuery();
			
			//데이터 처리
			if(rs.next()){
				if(mb.getPw().equals(rs.getString("pw"))){
					result = 1;
				} else{
					result = 0;
				}
			} else{
				result = -1;
			}
			
			System.out.println("DAO : 로그인 체크 완료 " + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		
		
		
		return result;
		
	}//로그인
	
	
	//개인정보 조회
	public MemberBean getMember(String id){
		MemberBean mb = new MemberBean();
		
		try {
			con = getCon();
			
			sql = "select * from itwill_member where id = ?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				mb.setId(rs.getString("id"));
				mb.setPw(rs.getString("pw"));
				mb.setName(rs.getString("name"));
				mb.setAge(rs.getInt("age"));
				mb.setGender(rs.getString("gender"));
				mb.setEmail(rs.getString("email"));
				mb.setRegdate(rs.getTimestamp("regdate"));				
				
				System.out.println("DAO : 회원정보 저장 완료");
				
			}
			
			System.out.println("DAO : 조회된 회원 정보");
			
			System.out.println("DAO : " + mb);
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return mb;
		
		
	}//개인정보 조회
	
	//개인정보 수정하기
	public int updateMember(MemberBean mb){
		
		int result = -1;
		
		try {
			con = getCon();
			
			sql = "select pw from itwill_member where id=? ";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mb.getId());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(mb.getPw().equals(rs.getString("pw"))){
					
					sql = "update itwill_member set name=?, age=?, gender=?, email=? where id=?";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1, mb.getName());
					pstmt.setInt(2, mb.getAge());
					pstmt.setString(3, mb.getGender());
					pstmt.setString(4, mb.getEmail());
					pstmt.setString(5, mb.getId());
					
					pstmt.executeUpdate();
					result = 1;
					
					System.out.println("DAO : 회원정보 수정 완료");
				} else{
					result = 0;
				}
				
			}else{
				result = -1;
			}
			
			System.out.println("DAO : 디비동작 처리 끝" + result);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return result;
		
	}//개인정보 수정하기
	
	
	
	//개인정보 삭제하기
	public int deleteMember(String id, String pw){
		int result = -1;
		
		try {
			con = getCon();
			
			sql = "select pw from itwill_member where id=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(pw.equals(rs.getString("pw"))){
					sql = "delete from itwill_member where id=? and pw=?";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1, id);
					pstmt.setString(2, pw);
					
					result = pstmt.executeUpdate();
					
					System.out.println("DAO : 정보 삭제 완료");
					
				}else{
					result = 0;
				}
			}else{
				result=-1; 
			}
			
			System.out.println("DAO : 디비동작 처리 끝" + result);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB();
		}
		
		
		return result;
		
		
	}//회원삭제
	
	
	
	
	
	
	
	
	
	
}
