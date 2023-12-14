class SK1 
{
	public static void main(String[] args)
	{
		int number = 5;
		for (int i = 1; i <= number; i++) 
        {
			for (int j = 1; j <= number - i; j++) 
            {
				System.out.print(" ");
			}
			for (int k = 1; k <= i * 2 - 1; k++) 
            {
				System.out.print("*");
			}
			System.out.println();
		}
		for (int i = number - 1; i > 0; i--) 
        {
			for (int j = 1; j <= number - i; j++) 
            {
				System.out.print(" ");
			}
			for (int k = 1; k <= i * 2 - 1; k++) 
            {
				System.out.print("*");
			}
			System.out.println();
		}
	}
}
