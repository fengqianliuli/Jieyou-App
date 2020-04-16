
package com.qdu.controller;

import com.qdu.dao.UserDAO;
import com.qdu.pojo.Answer;
import com.qdu.pojo.Problem;
import com.qdu.pojo.Remark;
import com.qdu.pojo.Secret;
import com.qdu.pojo.User;
import com.qdu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;
    private UserDAO userDAO;
    
//    跳转到注册页
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "userRegister";
    }
    
    
    
    
//    请求
    
//    登录验证
    @PostMapping("/login")
    public String volidateLogin(String username,String userpassword,Model model){
        User u = userService.validateLogin(username, userpassword);
        if(u==null){
            return "fail";
        }else{
            model.addAttribute("user", u);
            return "userBackpage";
        }
    }
    
//    用户注册
    @PostMapping("/userRegister")
    public String register(User user){
        userService.insertUser(user);
        return "redirect:/index";
    }
    
//    添加秘密
    @PostMapping("/addSecret")
    public String addSecret(Secret s,Model model){
        userService.insertSecret(s);
        model.addAttribute("user", s);
        return "userBackpage";
    }
    
    //添加问题
    @PostMapping("/addProblem")
    public String addProblem(Problem p,Model model){
        userService.insertProblem(p);
        model.addAttribute("user", p);
        return "userBackpage";
    }
    
    //添加回答
    @PostMapping("/addAnswer")
    public String addAnswer(Answer a, Model model){
        userService.insertAnswer(a);
        model.addAttribute("user", a);
        return"userBackpage";
    }
    
    //添加评论
    @PostMapping("/addRemark")
    public String addRemark(Remark r, Model model){
        userService.insertRemark(r);
        model.addAttribute("user", r);
        return "userBackpage";
    }
    
    
    /**************************************************/
    
    //更新用户信息
    @GetMapping("/selectUser/{username}")
    public String selectUser(@PathVariable String username, Model model){
        model.addAttribute("user", userService.getOneUserByName(username));
        return "UpdateUser";
    }
    
    //用户更新
    @PostMapping("/updateUser")
    public String updateUser(User user,Model model){
        userService.updateUser(user);
        model.addAttribute("user", user);
        return "userBackpage";
    }
    
    
    /*************************************************/
    
    //删除一个用户
    @GetMapping("/deleteUser/{username}")
    public String deleteUser(@PathVariable String username){
        userService.deleteUser(username);
        return "redirect:/index";
    }
    
    //删除一条秘密
    @PostMapping("/deleteSecret")
    @ResponseBody
    public void deleteSecret(int sid) {
        userService.deleteSecret(sid);
    }
    
    //删除一条评价
    @PostMapping("/deleteRemark")
    @ResponseBody
    public void deleteRemark(int rid) {
        userService.deleteRemark(rid);
    }
    
    //删除一条问题
    @PostMapping("/deleteProblem")
    @ResponseBody
    public void deleteProblem(int pid) {
        userService.deleteProblem(pid);
    }
    
    //删除一条回答
    @PostMapping("/deleteAnswer")
    @ResponseBody
    public void deleteAnswer(int aid) {
        userService.deleteAnswer(aid);
    }
    

    
    /**********************************************/
    
    //根据用户名查询一个用户的所有记录
    @GetMapping("/selectOneselfAll/{username}")
    public String selectSecretOneself(@PathVariable String username, Model model){
        model.addAttribute("secretList", userService.selectSecretByName(username));
        model.addAttribute("problemList", userService.selectAllProblemByUsername(username));
        model.addAttribute("answerList", userService.selectAllAnswerForUsername(username));
        model.addAttribute("remarkList", userService.selectRemarkByUsername(username));
        model.addAttribute("user", new User(username));
        //System.out.println(username);
        return "oneselfAll";
    }
    
    //查询所有问题记录(无用户登录可用)
    @GetMapping("/selectAllProblem")
    public String selectAllProblem(Model model){
        model.addAttribute("problemList", userService.selectAllProblem());
        return "OpenProblem";
    }
    
    //查询所有公开的秘密（无登录可用）
    @GetMapping("/selectAllSecret")
    public String selectAllSecret(Model model){
        model.addAttribute("secretList", userService.selectSecret());
        return "OpenSecret";
    }
    
    //查询所有问题记录(用户登录可用)
    @GetMapping("/selectAllProblemWithUsername/{username}")
    public String selectAllProblemWithUsername(@PathVariable String username, Model model){
        model.addAttribute("problemList", userService.selectAllProblem());
        model.addAttribute("user", new User(username));
        return "ProblemUsername";
    }
   
    //查询所有公开秘密(用户登录可用)
    @GetMapping("/selectAllSecretWithUsername/{username}")
    public String selectAllSecretWithUsername(@PathVariable String username, Model model){
        model.addAttribute("secretList", userService.selectSecret());
        model.addAttribute("user", new User(username));
        return "SecretUsername";
    }
    
    //查询问题详情
    @GetMapping("/{pid}/{username}/selectProblemDetail")
    public String selectProblemDetail(@PathVariable int pid,
                                      @PathVariable String username, 
                                      Model model){
        model.addAttribute("Problem", userService.selectOneProblemById(pid));
        model.addAttribute("AnswerList", userService.selectAllAnswerForOneProblem(pid));
        model.addAttribute("user", new User(username));
        return "ProblemDetail";
    }
    
    //查询秘密详情
    @GetMapping("/{sid}/{username}/selectSecretDetail")
    public String selectSecretDetail(@PathVariable int sid,
                                      @PathVariable String username, 
                                      Model model){
        model.addAttribute("Secret", userService.selectSecretById(sid));
        model.addAttribute("RemarkList", userService.selectRemarkBySid(sid));
        model.addAttribute("user", new User(username));
        return "SecretDetail";
    }
}
