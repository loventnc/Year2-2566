class A { public int a= 80;} //End of class A
class B extends A { public int a= 80;} //End of class B
class C extends B { public int a= 60;} //End of class C
class D extends C { public int a= 40;} //End of class D
class E extends D {
    public int a= 10;
    public void show() {
        int a = 0;
    }
}

class Ex3Test {
    public static void main(String args[]) {
        new E().show();
        A a1 = new E();
        D d1 = (D) a1;
    }
}

