package com.jtc.exampaper.dao;
import java.sql.SQLException;
import com.jtc.exampaper.model.*;
import java.util.*;
/**
 * @author Abhishek
 *
 */
public interface UserDao {
	public int addUser(User user);
	public int loginUser(User user);
	public int addQuestion(Question ques);
	public List<Question> showQuestion(Question ques);
	public List<Question> createPaperEasy(Question ques);
	public List<Question> createPaperMedium(Question ques);
	public List<Question> createPaperHard(Question ques);
}