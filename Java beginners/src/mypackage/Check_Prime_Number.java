package mypackage;
import java.util.Scanner;
public class Check_Prime_Number {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n,i;
		boolean flag=false;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Number to check Prime or not");
		n = sc.nextInt();
		for(i=2;i<n;i++) {
			if(n%i==0) {
				flag=true;
				break;
			}
		}
		if(flag)
			System.out.println(n+" is divisible by "+i+" hence it is not a prime number");
		else
			System.out.println(n+" is a prime number");
	}
}