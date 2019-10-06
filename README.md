# Simple **stack buffer overflow** server

This simple C program (`main.c`) expose a stack injection vulnerablity. This program can also be run as a TCP server using the `make serve_vulnerability` command.

## Goal
The main goal of this challenge is to run arbitrary code (a shellcode f.e) on the server's host machine exploiting the stack buffer overflow vulnerability. 

A further goal is to write a Metasploit exploit to automate the vulnerability exploitation.

## Useful ressources
- [Stack buffer overflow (Wikipedia)](https://en.wikipedia.org/wiki/Stack_buffer_overflow)
- [Buffer overflow exploit](https://dhavalkapil.com/blogs/Buffer-Overflow-Exploit/)
- [Classic Buffer overflow exploits on Linux x64](http://www.madhur.co.in/blog/2011/08/04/exploitdevlinux.html)
- [Protections against buffer overflow exploits in Linux](http://www.madhur.co.in/blog/2011/08/06/protbufferoverflow.html)
- [Generating Alphanumeric Shellcode with Metasploit](https://www.offensive-security.com/metasploit-unleashed/alphanumeric-shellcode/)
- [Writing an exploit for Metasploit](https://www.offensive-security.com/metasploit-unleashed/writing-an-exploit/)



### [Solution](./solution/solution.md)