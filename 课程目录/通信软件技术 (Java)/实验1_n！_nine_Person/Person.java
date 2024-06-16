package person;

public class Person {
public String name;     //姓名，实例成员变量，保护成员
public int birthYear;  //出生年份

//(代码结构参考了课本P75-76）
public Person(String name,int birthYear) //构造方法
{
	this.name = name;
	this.birthYear = birthYear;  //引用赋值
}
public int getAge(int year)  //设置年份值
{
	return year-birthYear;  //返回某年时某人的年龄
}
public int getAge()  //获得年龄
{
	int thisYear = 2023; // 今年是2023年 
	return thisYear - birthYear; //返回今年时某人的年龄
}
public int olderThan(Person per) //比较年龄
{
	return this.birthYear - per.birthYear; //返回年龄差值
}
public boolean equals(Person per) //比较相等
{
    return this.name.equals(per.name) && this.birthYear == per.birthYear; //返回当前对象和引用实例对应成员变量值是否相等
}
public static void main(String[] args) {
		// TODO Auto-generated method stub
	}
}
