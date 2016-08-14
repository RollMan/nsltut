#include <stdio.h>
#include <iostream>

#include <verilated.h>
#include "debug/obj_dir/Vmodule.h" //RESET INTO YOUR VALUE

using namespace std;

Vmodule *addr_i;//RESET INTO YOUR VALUE

unsigned long int pc;

double sc_time_stamp(){
	return pc;
}

void init(){
	addr_i->m_clock=0;
	addr_i->p_reset=0;
	addr_i->eval();
	addr_i->m_clock=1;
	addr_i->p_reset=1;
	addr_i->eval();
	addr_i->m_clock=0;
	addr_i->p_reset=0;
	addr_i->eval();
	pc=0;
}

void falling_clock(){
	addr_i->m_clock=0;
	addr_i->p_reset=1;
	addr_i->eval();
}

void rising_clock(){
	addr_i->m_clock=1;
	pc++;
	addr_i->eval();
}

int lineidx = 0;

void runclk(int dd, int timerj){
  printf("****** dd = %d ******\n", dd);
  lineidx = 0;
  falling_clock();
  addr_i->dnum = dd;
  addr_i->setduty = 1;
  rising_clock();

  falling_clock();
  addr_i->setduty = 0;
  rising_clock();

  for(int i = 0; i < 1<<7; i++){
    for(int j = 0; j < timerj; j++){
      falling_clock();
      rising_clock();
    }

    printf("%5d: ", lineidx++);
    printf("V0 = %d, setduty = %x, dnum = %x, exec = %x\n", addr_i->V0, addr_i->setduty, addr_i->dnum, addr_i->exec);
    addr_i->exec = 1;
    falling_clock();
    rising_clock();
    addr_i->exec = 0;
  }
}


int main(int argv,char *argc[]){

	addr_i = new Vmodule();

	init();
	return 0;
}

