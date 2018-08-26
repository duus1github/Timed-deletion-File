package delete;

import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream.GetField;
import java.lang.reflect.Executable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/**
 * Timed delete file
 * @author Administrator
 *
 */
public class FileDelete {
	public static void main(String[] args) {
		String path = "/G:/z";
		DeleteFile(path);
	}
	/*
	 * file is directory delete
	 * else delete
	 */
	private static void DeleteFile(String path) {
		File file = new File(path);
		if(!file.isDirectory()){
			System.out.println(file.getAbsolutePath()); // get file's path
			file.delete();
			System.out.println(file.getAbsolutePath()+"file delete success ");
		}else if(file.isDirectory()){
			String [] files = file.list();
			for(int i=0;i<files.length;i++){
				File delfile = new File(path +"\\" +files[i]);
				if(!delfile.isDirectory()){
					delfile.delete();
					System.out.println(delfile.getAbsolutePath()+"direction delete success");
				}else if(delfile.isDirectory()){
				//DeleteFile(path+"\\"+files[i]);
				System.out.println(1);
				}
			}
		}
	}
	}
	
	
	
	
	
	
	


	

