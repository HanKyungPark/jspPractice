package data.dao;

import data.dto.ProjectDto;
import db.Common.MySqlCnnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;





public class ProjectDao {
    MySqlCnnect db = new MySqlCnnect();
    //유저추가
    public void insertUser(ProjectDto dto){
        String sql = "insert into user values(?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement pstmt = null;
        conn = db.getConnection();

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getUserID());
            pstmt.setString(2, dto.getUserPassword());
            pstmt.setString(3, dto.getUserName());
            pstmt.setString(4,dto.getUserGender());
            pstmt.setString(5, dto.getUserEmail());
            pstmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            db.dbclose(pstmt, conn);
        }
    }



    public List<ProjectDto> selectAll(){
        List<ProjectDto> list = new Vector<>();
        String sql = "select * from user";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        conn = db.getConnection();

        try {
            pstmt = conn.prepareStatement(sql);
            //실행
            rs=pstmt.executeQuery();
            while(rs.next()){
                ProjectDto dto = new ProjectDto();

                dto.setUserID(rs.getString("userid"));
                dto.setUserPassword(rs.getString("userpassword"));
                dto.setUserName(rs.getString("username"));
                dto.setUserGender(rs.getString("usergender"));
                dto.setUserEmail(rs.getString("useremail"));
                list.add(dto);
            }
        } catch (SQLException e) {
            System.out.println("select 오류: "+e.getMessage());
        }finally {
            db.dbclose(pstmt, conn);
        }
        return list;
    }
    public ProjectDto selectUser(String userId, String userPassword) {
        String sql = "SELECT * FROM user WHERE userid = ? AND userpassword = ?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ProjectDto dto = null;

        try {
            conn = db.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, userPassword);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                dto = new ProjectDto();
                dto.setUserID(rs.getString("userid"));
                dto.setUserPassword(rs.getString("userpassword"));
                dto.setUserName(rs.getString("username"));
                dto.setUserGender(rs.getString("usergender"));
                dto.setUserEmail(rs.getString("useremail"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbclose(rs, pstmt, conn);
        }

        return dto;
    }
    public boolean login(String userId, String userPassword) {
        ProjectDto dto = selectUser(userId, userPassword);
        return dto != null;



    }

//public void insertDog(Dog dto) {
//        String sql = "insert into dog values(dogName,dogChar) VALUES(?,?)";
//        Connection conn = null;
//        PreparedStatement pstmt = null;
//        conn = db.getConnection();
//
//    try {
//        pstmt = conn.prepareStatement(sql);
//    } catch (SQLException e) {
//        throw new RuntimeException(e);
//    }
//
//}



}


