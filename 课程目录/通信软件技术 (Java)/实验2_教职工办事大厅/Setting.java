package setting;

import java.awt.*;
import java.awt.event.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.event.CaretEvent;
import javax.swing.event.CaretListener;
public class Setting extends JPanel implements ActionListener
{
	protected JButton modify,reset;//修改密码、重置密码按钮
	protected JLabel name,old,new_password,confirm;//姓名、旧密码、新密码、确认新密码标签
	private JTextField text_name;//姓名单行文本编辑框
	private JPasswordField text_old,text_new,text_confirm;//旧密码、新密码、确认新密码
	
	File file=new File("C:\\Users\\admin\\Desktop\\java课程作业\\java\\账号密码.txt ");//账号密码文件
	JTextField text;//单行文本编辑框
	
	public Setting()
	{	
		this.setLayout(new GridLayout(5,2));//面板网格布局，5行2列
		this.setBorder(new TitledBorder("个性设置"));//设置面板具有带标题边框
		JPanel panel1=new JPanel(new BorderLayout());//panel1面板，边布局
		this.add(panel1);
		panel1.add(this.modify=new JButton("修改密码"));
		panel1.add(this.modify,"East");//panel1面板东边添加"修改密码"按钮4
		this.modify.addActionListener(this);//"修改密码"按钮监听动作事件
		JPanel panel2=new JPanel(new BorderLayout());//panel2面板，边布局
		this.add(panel2);
		panel2.add(this.reset=new JButton("重置密码"));
		panel2.add(this.reset,"West");//panel2面板西边添加"重置密码"按钮
		this.reset.addActionListener(this);//"重置密码"按钮监听动作事件
		this.add(this.name=new JLabel("姓名",JLabel.LEFT));
		this.add(this.text_name=new JTextField());
		this.add(this.old=new JLabel("旧密码",JLabel.LEFT));
		this.add(this.text_old=new JPasswordField());
		this.add(this.new_password=new JLabel("新密码",JLabel.LEFT));
		this.add(this.text_new=new JPasswordField());
		this.add(this.confirm=new JLabel("确认新密码",JLabel.LEFT));
		this.add(this.text_confirm=new JPasswordField());
		this.text=new JTextField("321");
		this.setVisible(true);
	}
	
	public void actionPerformed(ActionEvent event)//动作事件处理方法
	{
		this.readFrom(this.file,this.text);//读取账号密码文件内容到文本行
		String n=text.getText();//字符串n获得文本行字符串
		String str1=text_old.getText();
		String str2=text_new.getText();
		String str3=text_confirm.getText();
		boolean isDigit=false;  //没有数字
		boolean isLetter=false;//没有字母
		for(int i=0;i<str2.length();i++) 
		{
			if(Character.isDigit(str2.charAt(i)))  
			{
				isDigit=true;
			}
			if(Character.isLetter(str2.charAt(i)))
			{
				isLetter=true;
			}
		}
		//修改密码
		if(event.getSource()==modify)
		    {
			  if(JOptionPane. showConfirmDialog(this,"修改密码?","确认",
					JOptionPane.YES_NO_OPTION) ==0)
			    {
				   
			        if(text_name.getText().equals(n.substring(0,n.indexOf("#")))==false)
				    {
			            text_name.setText("");
			    	    JOptionPane.showMessageDialog(this,"请输入正确的姓名！");
			    	}
			        else if(str1.equals(n.substring(n.indexOf("#")+1))==false)
		            {
				        text_old.setText("");
				    	JOptionPane.showMessageDialog(this,"请输入正确的旧密码！");
		            }
				    else if(str2.equals(str3)==false)
				    {
			        	text_confirm.setText("");
			    	    JOptionPane.showMessageDialog(this,"确认新密码！");
				    }
				    else if(str2.length()<8)//密码长度小于8位
				    {
				    	text_new.setText("");
			            text_confirm.setText("");
				    	JOptionPane.showMessageDialog(this, "密码格式错误，密码应大于8位数且包含英文字母和数字！");
				    }
				    else if(isDigit==false)//判断新密码中是否含有数字
					{
					    text_new.setText("");
					    text_confirm.setText("");
					    JOptionPane.showMessageDialog(this, "密码格式错误，密码应包含英文字母和数字！");
					}
				    else if(isLetter==false)//判断新密码中是否含有字母
					{
						text_new.setText("");
						text_confirm.setText("");
						JOptionPane.showMessageDialog(this, "密码格式错误，密码应包含英文字母和数字！");
				    }	
				    else
				    {
				    	text.setText(text_name.getText()+"#"+str2);//设定文本行字符串为姓名和新密码
				    	this.writeTo(this.file,text);//保存新的姓名和密码
	    	            JOptionPane.showMessageDialog(this,"修改成功！");
				    }
			    }
		    }
		//重置密码
		if(event.getSource()==reset)
		    {
			  if(JOptionPane. showConfirmDialog(this,"重置密码?","确认",
						JOptionPane.YES_NO_OPTION) ==0)
			   {
				   if(text_name.getText().equals(n.substring(0,n.indexOf("#")))
						   &&str1.equals(n.substring(n.indexOf("#")+1))
						   &&str2.equals(str3))
		               {
		    	          text_old.setText("aaaa1111");//设定旧密码为"aaaa1111"
					      text.setText(text_name.getText()+"#"+text_old.getText());
					      this.writeTo(this.file,text);//保存旧密码
		    	          JOptionPane.showMessageDialog(this,"重置成功,新密码为aaaa1111");
		    	       }
		          else
			           {
		        	      text_name.setText("");
		        	      text_old.setText("");
		        	      text_new.setText("");
			        	  text_confirm.setText("");
		    	          JOptionPane.showMessageDialog(this,"请输入正确的姓名及旧密码");
		    	       }
			   }
		    }
	}

	private void writeTo(File file2, JTextField text2) {
		// TODO Auto-generated method stub
		
	}

	private void readFrom(File file2, JTextField text2) {
		// TODO Auto-generated method stub
		
	}
}

//public class Setting extends JPanel {
//private JPasswordField oldPasswordField;
//private JPasswordField newPasswordField;
//private JPasswordField confirmPasswordField;
//
//public SettingsPanel() {
//  // 初始化面板布局和组件
//
//  // 添加“重置密码”按钮的监听器
//  resetButton.addActionListener(new ActionListener() {
//      @Override
//      public void actionPerformed(ActionEvent e) {
//          // 将密码设置为默认值
//          newPasswordField.setText("aaaa1111");
//          confirmPasswordField.setText("aaaa1111");
//      }
//  });
//
//  // 添加“修改密码”按钮的监听器
//  changeButton.addActionListener(new ActionListener() {
//      @Override
//      public void actionPerformed(ActionEvent e) {
//          // 验证旧密码是否正确
//          char[] oldPassword = oldPasswordField.getPassword();
//          if (!Arrays.equals(oldPassword, "aaaa1111".toCharArray())) {
//              JOptionPane.showMessageDialog(SettingsPanel.this, "旧密码不正确，请重新输入");
//              oldPasswordField.setText("");
//              newPasswordField.setText("");
//              confirmPasswordField.setText("");
//              return;
//          }
//
//          // 验证新密码是否符合规则
//          char[] newPassword = newPasswordField.getPassword();
//          char[] confirmPassword = confirmPasswordField.getPassword();
//          if (newPassword.length < 8 || !hasDigit(newPassword) || !hasLetter(newPassword) || !Arrays.equals(newPassword, confirmPassword)) {
//              JOptionPane.showMessageDialog(SettingsPanel.this, "新密码不符合规则，请重新输入");
//              newPasswordField.setText("");
//              confirmPasswordField.setText("");
//              return;
//          }
//
//          // 如果验证通过，更新密码
//          // TODO: 更新密码的代码
//      }
//  });
//}