package data.dao;

import data.dto.DogDto;
import db.Common.MySqlCnnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class DogDao {
    MySqlCnnect db = new MySqlCnnect();

    public List<DogDto> getAllDog(){
        List<DogDto> list = new Vector<>();
        Connection conn = db.getConnection();
        String sql = "select * from dog";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps= conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while(rs.next()){
                DogDto dto = new DogDto();

                dto.setIDX(rs.getInt("IDX"));
                dto.setDogName(rs.getString("dogName"));
                dto.setDogImg(rs.getString("dogImg"));
                dto.setDogChar(rs.getString("dogChar"));

                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            db.dbclose(rs,ps,conn);
        }

        return list;
    }
    public DogDto getData(int IDX){
        DogDto dto = new DogDto();
        String sql = "select * from dog where IDX=?";
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        conn = db.getConnection();

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,IDX);

            rs = ps.executeQuery();
            if(rs.next()){
                dto.setIDX(rs.getInt("IDX"));
                dto.setDogName(rs.getString("dogName"));
                dto.setDogImg(rs.getString("dogImg"));
                dto.setDogChar(rs.getString("dogChar"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            db.dbclose(rs,ps,conn);
        }
        return dto;
    }

}
