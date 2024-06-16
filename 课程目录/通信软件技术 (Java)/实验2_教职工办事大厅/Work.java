package work;
	import java.awt.*;
	import java.awt.event.*;
	import java.awt.font.TextAttribute;
	import java.io.BufferedReader;
	import java.io.File;
	import java.io.FileNotFoundException;
	import java.io.FileReader;
	import java.io.FileWriter;
	import java.io.IOException;
	import java.io.Reader;
	import java.io.Writer;
	import java.util.HashMap;
	import javax.swing.*;
	import javax.swing.border.TitledBorder;

	public class Work extends JPanel implements ActionListener
	{
		private JComboBox<String> combox_typeface;//字体名组合框，数据项类型为String
		protected JComboBox<Integer> combox_size;//字号组合框，数据项类型为Integer
		private JCheckBox[] checkbox;///字形复选框数组
		private JRadioButton[] radios;///颜色单选按钮数组
		protected Color[] colors= {Color.red,Color.green,Color.blue};//颜色常量对象数组
		private String[] colorname= {"red","green","blue"};//颜色常量名字符串数组
		protected JTextArea text;//文本区
		protected JToolBar toolbar;//工具栏
		private File file;
		protected JFileChooser fchooser;//文件选择对话框
		private JButton bopen;
		private JButton bsave;
		
		public Work()
		{
			this.setLayout(new BorderLayout());//面板边布局
			this.setBorder(new TitledBorder("工作日志"));//设置面板具有带标题边框
			this.toolbar=new JToolBar();//工具栏，默认水平方向
			this.add(this.toolbar,"North");//框架内客窗格北边添加工具栏
			
			GraphicsEnvironment ge =GraphicsEnvironment.getLocalGraphicsEnvironment();
			String[] fontsName=ge.getAvailableFontFamilyNames();//获得所有系统字体名的字符串
			this.combox_typeface=new JComboBox<String>(fontsName);//组合框显示系统字体
			this.combox_typeface.addActionListener(this);//字体组合框监听动作事件
			this.toolbar.add(this.combox_typeface);//工具栏添加字体名组合框
			
			Integer[] sizes= {12,22,32,42,52};//字号
			this.combox_size=new JComboBox<Integer>(sizes);//字号组合框
			this.combox_size.setEditable(true);// 设置组合框可编辑
			this.combox_size.addActionListener(this);
			this.toolbar.add(this.combox_size);//字号组合监听动作事件
			
			String[] stylestr= {"粗体","斜体","下划线"};//字形
			this.checkbox=new JCheckBox[stylestr.length];//字形复选框数组
			for(int i=0;i<stylestr.length;i++)
			{
				this.toolbar.add(this.checkbox[i]=new JCheckBox(stylestr[i]));
				this.checkbox[i].addActionListener(this);//复选框监听动作事件
			}
			
			ButtonGroup bgroup_color=new ButtonGroup();//按钮组
			this.radios=new JRadioButton[this.colorname.length];//颜色单选按钮数组
			for(int i=0;i<this.radios.length;i++)
			{
				this.radios[i]=new JRadioButton(this.colorname[i]);//颜色单选按钮数组
				this.radios[i].setForeground(this.colors[i]);//设置单选按钮的文本颜色
				this.radios[i].addActionListener(this);//颜色单选按钮数组监听动作事件
				bgroup_color.add(this.radios[i]);//按钮组添加单选按钮
				this.toolbar.add(this.radios[i]);//工具栏添加单选按钮
			}
			this.radios[0].setSelected(true);//设置单选按钮为选中状态
			bopen=new JButton("打开",new ImageIcon("C:/Users/Pictures/打开.gif"));//按钮包含图标
			bopen.addActionListener(this);
			this.toolbar.add(bopen);//工具栏添加按钮
			bsave=new JButton("保存",new ImageIcon("C:/Users/Pictures/保存.gif"));
			bsave.addActionListener(this);
			this.toolbar.add(bsave);
			this.text=new JTextArea("祝您每天工作愉快!");
			this.add(new JScrollPane(this.text));//面板添加包含文本区的滚动窗格
			this.text.setForeground(colors[0]);//设置文本区颜色
			this.fchooser=new JFileChooser(new File("C:\\Users\\admin\\Desktop\\java课程作业\\java",""));//创建文件对话框，指定起始路径
			this.setVisible(true);
		}
		public void actionPerformed(ActionEvent event)//动作事件处理方法
		{
			//颜色
			if(event.getSource()instanceof JRadioButton)//单击颜色按钮
			    this.text.setForeground(((JComponent)event.getSource()).getForeground());//设置文本区的文本颜色同选中按钮
			//以下单击与字体有关的组合框、复选框时，修改文本区的字体
			else if(event.getSource() instanceof JComboBox<?>||event.getSource() instanceof JCheckBox)
			{
				int size = 0;
				//字体
				String fontname = (String)this.combox_typeface.getSelectedItem();//获得字体名
				Object obj =this.combox_size.getSelectedItem();//获得字号组合框选中项，或输入值
				if(obj != null)//执行combox.removeAllItems()方法将导致obj==null
				{
					try
					{
						if(obj instanceof Integer)//判断obj是否引用Integer实例
							size = ((Integer)obj).intValue();//获得整数值
						else if(obj instanceof String)//字号组合框输入字符串
							size = Integer.parseInt((String)obj);//获得字号
						if(size<20||size>200)//若字号超出范围，抛出异常
							throw new Exception(size+"字号超出20~20B范围。");
						java.awt.Font font = this.text.getFont();//获得文本区的当前字体对象	
						//字形
						int style =font.getStyle();//获得字形
						switch(event.getActionCommand())//复选框
						{case "粗体":style ^= 1; break;
						case "斜体":style ^= 2; break;}	
						//设置文本区字体、字形、字号
						this.text.setFont(new Font(fontname,style, size));
						//下划线
						if(event.getSource()==checkbox[2])
						{
							HashMap<TextAttribute,Object> hm=new HashMap<TextAttribute,Object>();
						    hm.put(TextAttribute.UNDERLINE,TextAttribute.UNDERLINE_ON);
						    hm.put(TextAttribute.SIZE,size);//下划线长度
						    if(checkbox[2].isSelected()==true)
						    	this.text.setFont(new Font(hm));
						}
						insert(this.combox_size,size);//将输入字号插入到字号组合框，不插入重复项
					}
					catch(NumberFormatException ex)//捕获数值格式异常
					{
						JOptionPane.showMessageDialog(this,ex.getMessage()+"不能转换成整数。");
					}
					catch(Exception ex)//捕获所有类型的异常
					{
						JOptionPane.showMessageDialog(this, ex.toString());
					}
				}
			}
			//打开
			else if(event.getSource()==bopen&&fchooser.showOpenDialog(this)==0)
			{
				this.file=fchooser.getSelectedFile();//获取文件对话框的选中文件
				this.readFrom(this.file,this.text);//读取文件到文本区
				return;
			}
			//保存
			else if(event.getSource()== bsave&&fchooser.showSaveDialog(this)==0)
			{
				this.file=fchooser.getSelectedFile();//获取文件对话框的选中文件
				if(!file.getName().endsWith(".txt"))
				    this.file=new File(this.file.getAbsolutePath()+".txt");//添加文件扩展名
				this.writeTo(this.file, this.text);//保存文件内容
			}
		}
		private void insert(JComboBox<Integer> combox_size2, int size) {
			// TODO Auto-generated method stub
		}
		//读取文件的字符串，添加到text文本区中
		public void readFrom(File filename,JTextArea text)
		{
			try
			{Reader reader = new FileReader(filename);//文件字符输入流
			BufferedReader bufrd = new BufferedReader(reader);//缓冲字符输入流
			text.setText("");//清空文本行
			String line;
			while((line=bufrd.readLine()) != null)//读取字符串，缓冲字符输入流结束返回null
				text.append(line+"\r\n");//文本区添加line字符串
			bufrd.close();
			reader.close();}
			catch(FileNotFoundException ex)//若文件不存在，则忽略文件
			{
				if(!filename. equals(""))
					JOptionPane.showMessageDialog(null,"\""+filename+"\"文件不存在.");
			}
			catch(IOException ex){}
		}
		//将文本区中的字符串写入到文件
		public void writeTo(File filename,JTextArea text)
		{
			try
			{Writer wr = new FileWriter(filename);//文件字符输出流
				wr.write(text.getText());//写入文本区中的字符串
				wr.close();}
			catch(FileNotFoundException ex)//文件不存在异常
			{JOptionPane.showMessageDialog(null,"\""+filename+"\"文件不存在.");}
			catch(IOException ex){}
		}
}