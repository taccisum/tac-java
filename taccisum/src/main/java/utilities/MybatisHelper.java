package utilities;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.Dao;

public class MybatisHelper {
	private static InputStream _is;
	
	public static SqlSession getSession(){
		try{
			if (_is == null) {
				// 1. 加载MyBatis的配置文件：mybatis.xml（它也加载关联的映射文件，也就是mappers结点下的映射文件）
				_is = Resources.getResourceAsStream("mybatis.xml");		//TODO::
			}
			
			// 2. SqlSessionFactoryBuidler实例将通过输入流调用build方法来构建 SqlSession 工厂
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(_is);
			// 3. 通过工厂获取 SqlSession 实例，SqlSession 完全包含了面向数据库执行 SQL 命令所需的所有方法。
			SqlSession session = sqlSessionFactory.openSession();
			return session;
		}catch(IOException e){
			e.printStackTrace(System.err);			
		}
		
		return null;
	}
	
	public static <T extends Dao> T getMapper(Class<T> cls){
		SqlSession session = getSession();
		if(session==null){
			return null;
		}
		
		return session.getMapper(cls);
	}
}
