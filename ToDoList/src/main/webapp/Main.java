class Parent{
    int a;
    static int b;
    void print (){
        System.out.println("I am parent class instance method");
    }
    static void write(){
        System.out.println("I am write static method");
    }
}
class Child extends Parent{
    int c;
    void run(){
        System.out.println("I am child class instance method");
    }
}
public class Main {
    public static void main(String[] args) {
        Child obj = new Child();
        obj.print();
    }
}