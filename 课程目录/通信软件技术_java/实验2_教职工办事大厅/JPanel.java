package jPanel;

import java.awt.*;
import java.awt.event.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.swing.*;
import javax.swing.event.*;
import mess.Mess;
import setting.Setting;
import stud.Stud;
import work.Work;
public class JPanel extends JFrame implements ActionListener
{
	protected JButton message_center,student_information,work_log,personality_settings;//消息中心、学生信息、工作日志、个性设置按钮
	JSplitPane split=new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);//以下创建添加在分割窗格左边的面板
	File file=new File("C:\\Users\\admin\\Desktop\\java课程作业\\java\\账号密码.txt ");
	JTextField text;//单行文本编辑框
	private JLabel name;
	public JPanel()
	{
		super("教职工办事大厅");
		this.setSize(990,180);//设置窗口大小
		this.setLocationRelativeTo(null);//将窗口置于屏幕中央
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);//单击窗口的关闭按钮，结束程序运行
		this.getContentPane().add(split);//框架内容窗格中添加分隔窗格
		split.setDividerLocation(137);//设置水平分割条的位置
		split.setOneTouchExpandable(true);
	    JPanel leftpanel=new JPanel();//左面板网格布局，6行1列
	    split.add(leftpanel);//窗格左边添加left面板
	    this.text=new JTextField("456");
		this.readFrom(this.file,this.text);
		String name=text.getText();
		leftpanel.add(this.name=new JLabel("老师 工作愉快！"));
//		leftpanel.add(new RollbyJPanel(n.substring(0,n.indexOf("#"))+" 工作愉快!"));
		leftpanel.add(this.message_center=new JButton("消息中心"));
		leftpanel.add(this.student_information=new JButton("学生信息"));
		leftpanel.add(this.work_log=new JButton("工作日志"));
		leftpanel.add(this.personality_settings=new JButton("个性设置"));
		split.add(new Mess());//窗格边添加Message面板
		this.message_center.setSelected(true);
		this.message_center.addActionListener(this);//消息中心按钮监听动作事件
		this.student_information.addActionListener(this);//学生信息按钮监听动作事件
		this.work_log.addActionListener(this);//工作日志按钮监听动作事件
		this.personality_settings.addActionListener(this);//个性设置按钮监听动作事件
		this.setVisible(true);
	}
	public void actionPerformed(ActionEvent event)//动作事件处理方法
	{
		if(event.getSource()==message_center)//单击"消息中心"按钮
		{
			this.split.setRightComponent(new Mess());
		}
		else if(event.getSource()==student_information)//单击"学生信息"按钮
		{
			this.split.setRightComponent(new Stud());
		}
		else if(event.getSource()==work_log)//单击"工作日志"按钮
		{
			this.split.setRightComponent(new Work());
		}
		else if(event.getSource()==personality_settings)//单击"个性设置"按钮
		{
			this.split.setRightComponent(new Setting());
		}
	}
	//读取账号密码文件的字符串，添加到text文本行中
		public void readFrom(File filename,JTextField text)
		{
			try{
				Reader reader = new FileReader(filename);//文件字符输入流
				BufferedReader bufrd = new BufferedReader(reader);//缓冲字符输入流
				text.setText("");//清空文本行
				String line;
				while((line=bufrd.readLine()) != null)//读取字符串，缓冲字符输入流结束返回null
				text.setText(line);//文本行添加line字符串
				bufrd.close();
				reader.close();}
			catch(FileNotFoundException ex)//若文件不存在，则忽略文件
			{
				if(!filename. equals(""))
					JOptionPane.showMessageDialog(null,"\""+filename+"\"文件不存在.");
			}
			catch(IOException ex){}
		}
	public static void main(String[] arg)
	{new JPanel();}
}