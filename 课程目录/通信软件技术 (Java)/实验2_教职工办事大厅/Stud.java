package stud;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.DefaultTableModel;

public class Stud extends JPanel implements TableModelListener
{
	private DefaultTableModel tablemodel;//表格模型
	String[][] students= {{"roy","20210106","男","20030208","电子信息工程","2021级"},
			{"zero","20210102","女","20030607","通信工程","2021级"},
			{"pezing","20210121","男","20031204","土木工程","2021级"},
			{"fish","20210402","男","20010518","软件工程","2021级"}};
	
	public Stud()
	{
		this.setLayout(new BorderLayout());//面板边布局
		this.setBorder(new TitledBorder("学生信息"));//设置面板具有带标题边框
		String[] titles= {"姓名","学号","性别","出生日期","专业","年级"};
		this.tablemodel=new DefaultTableModel(students,titles);//默认表格模型，titles指定列标题
		JTable jtable=new JTable(this.tablemodel);//创建表格，指定表格模型
		jtable.setAutoCreateRowSorter(true);
		this.add(new JScrollPane(jtable));//添加滚动窗格
		this.tablemodel.addTableModelListener(this);//表格模型监听事件
		this.setVisible(true);
	}
	
	public void tableChanged(TableModelEvent event)//表格模型监听事件处理方法
	{
		int row=event.getFirstRow();//返回表格模型中第一个被更改的行
		String newnum=(String)tablemodel.getValueAt(row, 1);//返回row行1列单元的值
		if(newnum.length()==8&&newnum.substring(0,4).equals("2021"))
		{
			JOptionPane.showMessageDialog(this,"修改成功！");
		}
		else
		{
			JOptionPane.showMessageDialog(this,"学号不符合要求，修改失败！");
		}
	}
}