/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;

/**
 *
 * @author wpy92
 */

import com.lab.bean.SubjectBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {
    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3307/lab7_db", "root", "");
    }

    public boolean addSubject(SubjectBean subject) {
        try (Connection conn = getConnection()) {
            String sql = "INSERT INTO registered_subjects (matric_no, subject_code, subject_name) VALUES(?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, subject.getMatricNo());
            pstmt.setString(2, subject.getSubjectCode());
            pstmt.setString(3, subject.getSubjectName());
            return pstmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<SubjectBean> getAllSubjects(String matricNo) {
        List<SubjectBean> list = new ArrayList<>();
        try (Connection conn = getConnection()) {
            String sql= "SELECT * FROM registered_subjects WHERE matric_no = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, matricNo);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                SubjectBean subject = new SubjectBean();
                subject.setId(rs.getInt("id"));
                subject.setMatricNo(rs.getString("matric_no"));
                subject.setSubjectCode(rs.getString("subject_code"));
                subject.setSubjectName(rs.getString("subject_name"));
                list.add(subject);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public SubjectBean getSubject(int id) {
        SubjectBean subject = null;
        try (Connection conn = getConnection()) {
            String sql = "SELECT * FROM registered_subjects WHERE id=?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                subject = new SubjectBean();
                subject.setId(rs.getInt("id"));
                subject.setMatricNo(rs.getString("matric_no"));
                subject.setSubjectCode(rs.getString("subject_code"));
                subject.setSubjectName(rs.getString("subject_name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return subject;
    }

    public boolean updateSubject(SubjectBean subject) {
        try (Connection conn = getConnection()) {
            String sql = "UPDATE registered_subjects SET subject_code=?, subject_name=? WHERE id=?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, subject.getSubjectCode());
            pstmt.setString(2, subject.getSubjectName());
            pstmt.setInt(3, subject.getId());
            return pstmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteSubject(int id) {
        try (Connection conn = getConnection()) {
            String sql = "DELETE FROM registered_subjects WHERE id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            return pstmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
