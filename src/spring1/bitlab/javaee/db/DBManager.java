package spring1.bitlab.javaee.db;

import java.util.ArrayList;

public class DBManager {
    private static final ArrayList<Task> tasks = new ArrayList<>();

    private static Long id = 4L;

    static {
        tasks.add(new Task(1L, "Create Java EE", "You should create Java EE Project", "2023-04-08", "YES"));
        tasks.add(new Task(2L, "Create Spring Boot", "You should create Spring Boot Project", "2023-04-10", "YES"));
        tasks.add(new Task(3L, "Create CRUD Operation", "You should create CRUD Operation", "2023-04-12", "NO"));
    }

    public static ArrayList<Task> getTasks(){return tasks;}

    public static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTask(Long id){
        return tasks
                .stream()
                .filter(task -> task.getId()==id)
                .findFirst()
                .orElse(null);
    }

    public static void updateTask(Task zadacha){
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId()==zadacha.getId()){
                tasks.set(i, zadacha);
                break;
            }
        }
    }

    public static void deleteTask(Long id){
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId()==id){
                tasks.remove(i);
                break;
            }
        }
    }
}
