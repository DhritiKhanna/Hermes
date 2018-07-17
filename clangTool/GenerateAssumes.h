#ifndef GENERATEASSUMES_H
#define GENERATEASSUMES_H
#include <stdio.h>
#include <iostream>
#include <string.h>
#include <vector>
#include "IfInfo.h"
#include "../profiler/Client.h"

using namespace std;

class ProcessIfs
{
	private:
		int connectionFd;
	public: 
		ProcessIfs();
		vector<IfInfo*> ifs;
		void storeInfo(std::string, Operator, int, int, int, int, int);
		void displayInfo();
		int transferInfoToScheduler(int);
		int connectToScheduler(int);
};

#endif
