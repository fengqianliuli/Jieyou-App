/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.UserDAO;
import com.qdu.pojo.Answer;
import com.qdu.pojo.Problem;
import com.qdu.pojo.Remark;
import com.qdu.pojo.Secret;
import com.qdu.pojo.User;
import java.io.FileNotFoundException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Transactional(propagation = Propagation.REQUIRED,
            readOnly = false, isolation = Isolation.READ_UNCOMMITTED,timeout = 10,
            rollbackFor = {FileNotFoundException.class,RuntimeException.class})
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDAO dao;
    

    @Override
    public void insertUser(User user) {
        dao.insertUser(user);
    }

    @Override
    public void updateUser(User user) {
        dao.updateUser(user);
    }
    
    @Override
    public void deleteUser(String username) {
        dao.deleteUser(username);
    }
    
    @Override
    public User getOneUserByName(String username) {
        return dao.getOneUserByName(username);
    }

    @Override
    public User validateLogin(String username, String userpassword) {
        User u = dao.getOneUserByName(username);
        if(u!=null && u.getUserpassword().equals(userpassword)){
            return u;
        }else{
            return null;
        }
    }

    /*****************************************************************/
    
    @Override
    public void insertSecret(Secret s) {
        dao.insertSecret(s);
    }
    
    @Override
    public void updateSecret(Secret s) {
        dao.updateSecret(s);
    }

    @Override
    public void deleteSecret(int sid) {
        dao.deleteSecret(sid);
    }
    
    @Override
    public Secret selectSecretById(int sid) {
        return dao.selectSecretById(sid);
    }

    @Override
    public List<Secret> selectSecret() {
        return dao.selectSecret();
    }

    @Override
    public List<Secret> selectSecretByName(String username) {
        return dao.selectSecretByName(username);
    }
    
    /****************************************************/
    
    @Override
    public void insertProblem(Problem p) {
        dao.insertProblem(p);
    }

    @Override
    public void updateProblem(Problem p) {
        dao.updateProblem(p);
    }

    @Override
    public void deleteProblem(int pid) {
        dao.deleteProblem(pid);
    }

    @Override
    public Problem selectOneProblemById(int pid) {
        return dao.selectOneProblemById(pid);
    }

    
    @Override
    public List<Problem> selectAllProblem() {
        return dao.selectAllProblem();
    }
    
    @Override
    public List<Problem> selectAllProblemByUsername(String username) {
        return dao.selectAllProblemByUsername(username);
    }

    /******************************************************/
    
    @Override
    public void insertAnswer(Answer a) {
        dao.insertAnswer(a);
    }

    @Override
    public void updateAnswer(Answer a) {
        dao.updateAnswer(a);
    }

    @Override
    public void deleteAnswer(int aid) {
        dao.deleteAnswer(aid);
    }

    @Override
    public List<Answer> selectAllAnswerForOneProblem(int pid) {
        return dao.selectAllAnswerForOneProblem(pid);
    }

    @Override
    public List<Answer> selectAllAnswerForUsername(String username) {
        return dao.selectAllAnswerForUsername(username);
    }

    /***************************************************/
    
    @Override
    public void insertRemark(Remark r) {
        dao.insertRemark(r);
    }

    @Override
    public void updateRemark(Remark r) {
        dao.updateRemark(r);
    }

    @Override
    public void deleteRemark(int rid) {
        dao.deleteRemark(rid);
    }

    @Override
    public List<Remark> selectRemarkByUsername(String username) {
        return dao.selectRemarkByUsername(username);
    }

    @Override
    public List<Remark> selectRemarkBySid(int sid) {
        return dao.selectRemarkBySid(sid);
    }

    

    
    
     
}
