/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.Answer;
import com.qdu.pojo.Problem;
import com.qdu.pojo.Remark;
import com.qdu.pojo.Secret;
import com.qdu.pojo.User;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void insertUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.save(user);
    }

    @Override
    public void updateUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
    }
    
    @Override
    public void deleteUser(String username) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new User(username));
    }

    @Override
    public User getOneUserByName(String username) {
        Session session = sessionFactory.getCurrentSession();
        User u = session.get(User.class, username);
        return u;
//        Query query = session.createQuery("from User where username=:username");
//        query.setParameter("username", username);
//        return (User)query.getSingleResult();
    }
    

    
    /************************************************************/
    
    
    @Override
    public void insertSecret(Secret s) {
        Session session = sessionFactory.getCurrentSession();
        session.save(s);
    }
    
    @Override
    public void updateSecret(Secret s) {
        Session session = sessionFactory.getCurrentSession();
        session.update(s);
    }

    @Override
    public void deleteSecret(int sid) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Secret(sid));
    }

    @Override
    public Secret selectSecretById(int sid) {
        return sessionFactory.getCurrentSession().get(Secret.class, sid);
    }
    
    @Override
    public List<Secret> selectSecret() {
        return sessionFactory.getCurrentSession().createQuery("from Secret where stype=:sType")
                .setParameter("sType", "公开")
                .list();
    }

    @Override
    public List<Secret> selectSecretByName(String username) {
        return sessionFactory.getCurrentSession().createQuery("from Secret where username=:username")
                .setParameter("username", username)
                .list();
    }
    
    /****************************************************************/

    @Override
    public void insertProblem(Problem p) {
        Session session = sessionFactory.getCurrentSession();
        session.save(p);
    }
    
    @Override
    public void updateProblem(Problem p) {
        Session session = sessionFactory.getCurrentSession();
        session.update(p);
    }
    
    @Override
    public void deleteProblem(int pid) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Problem(pid));
    }
    
    @Override
    public Problem selectOneProblemById(int pid) {
        return sessionFactory.getCurrentSession().get(Problem.class, pid);
    }

    @Override
    public List<Problem> selectAllProblem() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Problem");
        List list = query.list();
        return list;
    }
    
    @Override
    public List<Problem> selectAllProblemByUsername(String username) {
        return sessionFactory.getCurrentSession().createQuery("from Problem where username=:username")
                .setParameter("username", username)
                .list();
    }  
    
    /*******************************************************/
    
    @Override
    public void insertAnswer(Answer a) {
        Session session = sessionFactory.getCurrentSession();
        session.save(a);
    }
    
    @Override
    public void updateAnswer(Answer a) {
        Session session = sessionFactory.getCurrentSession();
        session.update(a);
    }

    @Override
    public void deleteAnswer(int aid) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Answer(aid));
    }

    @Override
    public List<Answer> selectAllAnswerForOneProblem(int pid) {
        return sessionFactory.getCurrentSession().createQuery("from Answer where pid=:pid")
                .setParameter("pid", pid)
                .list();
    }

    @Override
    public List<Answer> selectAllAnswerForUsername(String username) {
        return sessionFactory.getCurrentSession().createQuery("from Answer where username=:username")
                .setParameter("username", username)
                .list();
    }
    
    /***********************************************************/

    @Override
    public void insertRemark(Remark r) {
        Session session = sessionFactory.getCurrentSession();
        session.save(r);
    }

    @Override
    public void updateRemark(Remark r) {
        Session session = sessionFactory.getCurrentSession();
        session.update(r);
    }

    @Override
    public void deleteRemark(int rid) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Remark(rid));
    }

    @Override
    public List<Remark> selectRemarkByUsername(String username) {
        return sessionFactory.getCurrentSession().createQuery("from Remark where username=:username")
                .setParameter("username", username)
                .list();
    }

    @Override
    public List<Remark> selectRemarkBySid(int sid) {
        return sessionFactory.getCurrentSession().createQuery("from Remark where sid=:sid")
                .setParameter("sid", sid)
                .list();
    }

    

    

    
  
}
