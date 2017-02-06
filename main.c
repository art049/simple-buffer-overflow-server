#include <stdio.h>

void secretFunction()
{
    printf("Congratulations!\n");
    printf("You have entered in the secret function!\n");
}
void echo()
{
    char buffer[20];
    while(1){
      printf("Enter some text:\n");
      fflush(stdout);
      scanf("%s", buffer);
      printf("You entered: %s\n", buffer);
      fflush(stdout);
    }
}

int main()
{
    echo();

    return 0;
}
