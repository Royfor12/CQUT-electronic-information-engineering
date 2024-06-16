package sign;

import java.awt.*;
import java.awt.event.*;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;
import javax.print.ServiceUI;
import javax.swing.*;
import javax.swing.event.*;
public class Sign extends JFrame implements ActionListener
{
	private JTextField number;//账号文本
	private JPasswordField password;//密码文本
	private JCheckBox[] checkbox;//"自动登录","记住密码"复选框
	protected JButton register,sign_in;//注册、登录按钮
	File file1=new File("C:\\Users\\admin\\Desktop\\java课程作业\\java\\账号密码.txt ");//账号密码文件
	File file2=new File("C:\\Users\\admin\\Desktop\\java课程作业\\java\\自动登录.txt ");//自动登录文件
	File file3=new File("C:\\Users\\admin\\Desktop\\java课程作业\\java\\记住密码.txt ");//记住密码文件
	JTextField text;//单行文本编辑框
	public Sign()
	{
		super("教职工办事大厅");
		this.setSize(350,185);//设置窗口大小
		this.setLocationRelativeTo(null);//将窗口置于屏幕中央
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);//单击窗口的关闭按钮，结束程序运行
		this.setLayout(new GridLayout(4,1));//面板网格布局，4行1列
		JPanel panel1=new JPanel();
		this.add(panel1);
		panel1.add(this.number=new JTextField("账号",20));
		panel1.add(this.number,"Center");
		JPanel panel2=new JPanel(new FlowLayout());
		this.add(panel2);
		panel2.add(this.password=new JPasswordField("",20));
		panel2.add(this.password,"Center");
		JPanel panel3=new JPanel();
		this.add(panel3);
		String[] str1= {"自动登录","记住密码"};
		this.checkbox=new JCheckBox[str1.length];//复选框数组
		for(int i=0;i<str1.length;i++)
		{
			panel3.add(this.checkbox[i]=new JCheckBox(str1[i]));
			this.checkbox[i].addActionListener(this);//复选框监听动作事件
		}
		
		JPanel panel4=new JPanel();
		this.add(panel4); 
		panel4.add(this.register=new JButton("注册"));
		this.register.addActionListener(this);//注册按钮监听动作事件
		panel4.add(this.sign_in=new JButton("登录"));
		this.sign_in.addActionListener(this);//登录按钮监听动作事件
		this.text=new JTextField("123");
		this.setVisible(true);
		this.readFrom(this.file1,this.text);//读取账号密码文件内容到文本区
		String c=text.getText();//字符串c获得文本行字符串
		this.readFrom(this.file2,this.text);//读取自动登录文件内容到文本区
		String a=text.getText();
		this.readFrom(this.file3,this.text);//读取记住密码文件内容到文本区
		String b=text.getText();
		//当“自动登录”按钮为选中状态时
		if(a.equals("true"))
		{
			number.setText(c.substring(0,c.indexOf("#")));
			password.setText(c.substring(c.indexOf("#")+1));
			new JPanel();
    	    this.setVisible(false);
    	    checkbox[0].setSelected(true);
		}
		else ;
		//当“记住密码”按钮为选中状态时
		if(b.equals("true"))
		{
			number.setText(c.substring(0,c.indexOf("#")));
			password.setText(c.substring(c.indexOf("#")+1));
			checkbox[1].setSelected(true);
		}
		else ;
	}
	public void actionPerformed(ActionEvent event)//动作事件处理方法
	{
		this.readFrom(this.file1,this.text);//读取账号密码文件内容到文本行
		String n=text.getText();//字符串n获得文本行字符串
		String str1=number.getText();
		String str2=password.getText();
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
		//注册
		if(event.getSource()==register)
		{
			{
				if(JOptionPane. showConfirmDialog(this,"注册新账户?","确认",
						JOptionPane.YES_NO_OPTION) ==0)
				    {
				        if(str2.length()<8)//密码长度小于8位
					    {
				        	password.setText("");
					    	JOptionPane.showMessageDialog(this, "密码格式错误，密码应大于8位数且包含英文字母和数字！");
					    }
					    else if(isDigit==false)//判断新密码中是否含有数字
						{
							password.setText("");
						    JOptionPane.showMessageDialog(this, "密码格式错误，密码应包含英文字母和数字！");
						}
					    else if(isLetter==false)//判断新密码中是否含有字母
						{
					    	password.setText("");
					    	JOptionPane.showMessageDialog(this, "密码格式错误，密码应包含英文字母和数字！");
					    }	
					    else
					    {
					    	text.setText(str1+"#"+str2);//设定文本行字符串为账号和密码
					    	this.writeTo(this.file1,text);//保存新的账号和密码
		    	            JOptionPane.showMessageDialog(this,"注册成功！");
					    }
				   }
		     }
		}
		//登录
		if(event.getSource()==sign_in)
		{
			if(str1.equals(n.substring(0,n.indexOf("#")))==false)
				{
				    number.setText("");
			    	JOptionPane.showMessageDialog(this,"请输入正确的账户名！");
			    }
			else if(str2.equals(n.substring(n.indexOf("#")+1))==false)
		        {
				    password.setText("");
				    JOptionPane.showMessageDialog(this,"请输入正确的密码！");
		        }	
		    else
				{
		    	    new ServiceUI();
		    	    this.setVisible(false);
				}
		 }
		//勾选自动登录
		if(event.getSource()==checkbox[0]) 
		{
		    if(checkbox[0].isSelected()==true)//自动登录为选中状态
			{
				text.setText("true");
				this.writeTo(this.file2,text);//文本内容写入自动登录文件
				new ServiceUI();
	            this.setVisible(false);
			}
			else
			{
				text.setText("false");
				this.writeTo(this.file2,text);
			}
		}
		//勾选记住密码
		if(event.getSource()==checkbox[1])
		{
			if(checkbox[1].isSelected()==true)//记住密码为选中状态
			{
				text.setText("true");
				this.writeTo(this.file3,text);//文本内容写入记住密码文件
			}
			else
			{
				text.setText("false");
				this.writeTo(this.file3,text);
			}
		}
	}
	//读取账号密码文件的字符串，添加到text文本行中
	public void readFrom(File filename,JTextField text)
	{
		try
		{
			Reader reader = new FileReader(filename);//文件字符输入流
			BufferedReader bufrd = new BufferedReader(reader);//缓冲字符输入流
			text.setText("");//清空文本行
			String line;
			while((line=bufrd.readLine()) != null)//读取字符串，缓冲字符输入流结束返回null
			text.setText(line);//文本行添加line字符串
			bufrd.close();
			reader.close();
		}
		catch(FileNotFoundException ex)//若文件不存在，则忽略文件
		{
			if(!filename. equals(""))
				JOptionPane.showMessageDialog(null,"\""+filename+"\"文件不存在.");
		}
		catch(IOException ex){}
	}
	//将text文本行中的字符串写入到账号密码文件
	public void writeTo(File filename,JTextField text)
	{
		try
		{
			Writer wr = new FileWriter(filename);//文件字符输出流
			wr.write(text.getText());//写入文本行中的字符串
			wr.close();
		}
		catch(FileNotFoundException ex)//文件不存在异常
		{
			JOptionPane.showMessageDialog(null,"\""+filename+"\"文件不存在.");
		}
		catch(IOException ex){}
	}
	
	public static void main(String[] arg)
	{
		new Sign();
	}
}