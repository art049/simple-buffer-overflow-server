#include <stdio.h>
#include <string.h>
void my_memcpy(char * dst,const char * src,int len){
  for(int i = 0;i < len; i++)
    *dst++ = *src++;
}

int main(int argc, char *argv[])
{
  char buf[256];
  my_memcpy(buf, argv[1],strlen(argv[1]));
  printf("%s",buf);
  return 0;  
}
