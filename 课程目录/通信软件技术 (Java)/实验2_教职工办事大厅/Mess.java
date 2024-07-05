package mess;

import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.event.CaretEvent;
import javax.swing.event.CaretListener;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

//public class Mess extends JPanel implements ActionListener,CaretListener, MouseListener
//
//{
//	public JComboBox<String> combox;//消息组合框
//	private JTextField text_keyword;//"请输入关键字"文本
//	protected JButton delete,delete_all;//删除、删除全部按钮
//	protected JList<String> jlist;//列表框
//	protected DefaultListModel<String> listmodel;//列表框模型
//	String[] str={
//			"关于开展常态化核酸检测工作的通知",
//			"关于体育馆周边路段临时交通管制的通知",
//			"花溪校区学生返校温馨提示",
//			"关于花溪校区二号门临时交通管制的通知",
//			"关于加强花溪校区进出管理的通知"
//		};
//	
//	public Mess()
//	{
//		this.setLayout(new BorderLayout());//面板边布局
//		this.setBorder(new TitledBorder("消息中心"));//设置面板具有带标题边框
//		
//		this.listmodel=new DefaultListModel<String>();//创建空的列表框模型
//		if(str!=null)
//			for(int i=0;i<str.length;i++)
//				this.listmodel.addElement(str[i]);//列表框模型添加数据项
//		
//		this.jlist=new JList<String>(this.listmodel);//创建列表框，指定列表框模型
//		this.add(new JScrollPane(this.jlist));//面板添加包含列表框的滚动窗格
//		jlist.addMouseListener(this);//列表框选择事件监听器
//		
//		JPanel cmdpanel=new JPanel();//命令面板
//		this.add(cmdpanel,"North");//面板中添加命令面板
//		
//		String[][] str= {{"删除","删除全部"},{"全部","已读","未读"}};
//		cmdpanel.add(this.combox=new JComboBox<String>(str[1]));//命令面板中添加消息组合框
//		combox.addActionListener(this);//"全部","已读","未读"组合框监听动作事件
//		
//		cmdpanel.add(this.text_keyword=new JTextField("请输入关键字",8));
//		text_keyword.addCaretListener(this);//"请输入关键字"编辑事件监听器
//		
//		for(int i=0;i<str.length;i++)//命令面板中添加"删除"、"删除全部"按钮
//		{
//			JButton button=new JButton(str[0][i]);
//			button.addActionListener(this);//"删除","删除全部"按钮监听动作事件
//			cmdpanel.add(button);
//		}
//		
//		this.setVisible(true);
//	}
//	
//	//点击某条消息后，该消息变为已读
//	//以下方法实现 Mouselistener鼠标事件接口
//	public void mouseClicked(MouseEvent event)//列表框选择事件处理方法
//	{
//		String str1 = jlist.getSelectedValue();//返回选中对象
//		int j=jlist.getSelectedIndex();//返回选择项序号
//      for(int i=0;i<str.length;i++)
//		    {
//      	    if(str[i].equals(str1)==true)
//      		{
//      	    	if(!str[i].endsWith("(已读)"))
//      	    	{
//      	    		str[i]+="(已读)";
//      	            listmodel.removeElementAt(j);//删除第j项
//      	            listmodel.insertElementAt(str[i], j);
//      	            this.jlist.setSelectedIndex(j);
//      	    	}
//      	    }
//          }
//	}
//	public void mousePressed( MouseEvent event) {}
//	public void mouseReleased(MouseEvent event) {}
//	public void mouseEntered( MouseEvent event) {}
//	public void mouseExited ( MouseEvent event) {}
//	
//	//查找含有关键字的消息
//	public void caretUpdate(CaretEvent event)//文本编辑处理事件
//	{
//		this.listmodel.removeAllElements(); //删除所有数据项
//		String shuru=this.text_keyword.getText();
//	    for(int i=0;i<str.length;i++)
//		    {
//		    	if(str[i].indexOf(shuru)!=-1)
//				this.listmodel.addElement(str[i]);
//			}
//	}
//
//	public void actionPerformed(ActionEvent event)//动作事件处理方法
//	{
//		//"删除"，"删除全部"
//		if(event.getSource()instanceof JButton)
//		{
//			switch(event.getActionCommand())
//		    {
//		        case "删除":
//			        removeSelected(this.jlist,this.listmodel);break;
//	            case "删除全部":
//			        remove(this.listmodel);break;
//		    }
//		}
//		
//		//显示"全部"，"已读"，"未读"
//		else if(event.getSource()instanceof JComboBox)
//		{
//			if(combox.getSelectedItem()=="全部")
//			{
//				listmodel.removeAllElements();
//				for(int i=0;i<str.length;i++)
//					this.listmodel.addElement(str[i]);
//			}
//			else if(combox.getSelectedItem()=="已读")
//	        {
//	        	listmodel.removeAllElements();
//	        	for(int i=0;i<str.length;i++)
//					{
//	        		if(str[i].indexOf("(已读)")!=-1)
//	        		this.listmodel.addElement(str[i]);
//	        		}
//	        }
//			else if(combox.getSelectedItem()=="未读")
//	        {
//	        	listmodel.removeAllElements();
//	        	for(int i=0;i<str.length;i++)
//				    {
//      		    if(str[i].indexOf("(已读)")==-1)
//      		    this.listmodel.addElement(str[i]);
//      		    }
//	        }
//		}
// }

public class Mess extends JPanel {
    private ArrayList<Message> messages; // 存储所有的消息
    private JList<Message> messageList; // 显示消息的列表框
    private DefaultListModel<Message> listModel; // 列表框的数据模型
    private JButton readButton; // 标记为已读按钮
    private JButton deleteButton; // 删除选中按钮
    private JButton deleteAllButton; // 删除全部按钮
    private JTextField filterField; // 过滤文本框

    public Mess() {
        messages = new ArrayList<Message>();
        listModel = new DefaultListModel<Message>();
        messageList = new JList<Message>(listModel);
        JScrollPane scrollPane = new JScrollPane(messageList);
        
        // 初始化控件
        readButton = new JButton("标记为已读");
        readButton.setEnabled(false);
        deleteButton = new JButton("删除选中");
        deleteButton.setEnabled(false);
        deleteAllButton = new JButton("删除全部");
        filterField = new JTextField();
        
        // 设置布局管理器
        setLayout(new BorderLayout());
        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        buttonPanel.add(readButton);
        buttonPanel.add(deleteButton);
        buttonPanel.add(deleteAllButton);
        add(buttonPanel, BorderLayout.NORTH);
        add(scrollPane, BorderLayout.CENTER);
        add(filterField, BorderLayout.SOUTH);
        
        // 添加事件监听器
        messageList.addListSelectionListener(new ListSelectionListener() {
            public void valueChanged(ListSelectionEvent e) { // 选中消息时，启用标记为已读和删除选中按钮   
                if (!messageList.isSelectionEmpty()) {
                    readButton.setEnabled(true);
                    deleteButton.setEnabled(true);
                } else 
                {readButton.setEnabled(false);
                 deleteButton.setEnabled(false);}
            }
        });
        readButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                for (Message selected : messageList.getSelectedValuesList()) {// 标记选中的消息为已读
                    selected.setRead(true);
                }
                messageList.repaint(); // 刷新列表框
            }
        });
        deleteButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
            	
                // 删除选中的消息
                for (Message selected : messageList.getSelectedValuesList())
                {messages.remove(selected);}
                listModel.removeRange(messageList.getMinSelectionIndex(), messageList.getMaxSelectionIndex());
            }
        });
        deleteAllButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
            	
                // 删除全部消息
                messages.clear();
                listModel.removeAllElements();
            }
        });
        filterField.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
            	
                // 过滤消息
                String text = filterField.getText().toLowerCase();
                DefaultListModel<Message> filteredModel = new DefaultListModel<Message>();
                for (Message message : messages) {
                    if (message.getContent().toLowerCase().contains(text)) {
                        filteredModel.addElement(message);
                    }
                }
                messageList.setModel(filteredModel);
            }
        });
    }
    
    //添加消息到消息中心
    public void addMessage(Message message) {
        messages.add(message);
        listModel.addElement(message);
    }
    private static class Message {
        private String content; // 内容
        private boolean read; // 是否已读
        
        public Message(String content) 
        {
        	this.content = content;
         this.read = false;
        }
        public String getContent() 
        {
        	return content;
        }
        public boolean isRead() 
        {
        	return read;
        }
        public void setRead(boolean read) 
        {
        	this.read = read;
        }

        @Override
        public String toString() {
            return content + (read ? " [已读]" : "");
        }
    }
}

