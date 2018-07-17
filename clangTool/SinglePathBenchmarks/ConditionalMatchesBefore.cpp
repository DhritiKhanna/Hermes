// Conditional matches before

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include "mpi.h"
#include <unistd.h>

using namespace std;

int main(int argc, char** argv) 
{
  // Initialize the MPI environment
  MPI_Init(&argc, &argv);
  // Find out rank, size
  int world_rank=-1;
  MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
  int world_size=-1;
  MPI_Comm_size(MPI_COMM_WORLD, &world_size);

  int token, token1, token2;

  MPI_Barrier(MPI_COMM_WORLD);

  // Processes 1, 2, and 3 will send some data to process 0
  if (world_rank == 1)
  {
  	MPI_Status status;
    MPI_Recv(&token, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);

    //unsigned int microseconds = 1000000;
    //usleep(microseconds);

    token = 10;
    MPI_Send(&token, 1, MPI_INT, 0, 10, MPI_COMM_WORLD);
    cout << "\nProcess 1 sending " << token << " to Process 0\n";
  }

  else if (world_rank == 2)
  {
    token = 20;
    MPI_Send(&token, 1, MPI_INT, 0, 20, MPI_COMM_WORLD);
    cout << "\nProcess 2 sending " << token << " to Process 0\n";
  }

  else if (world_rank == 3)
  {
    token = 30;
    MPI_Send(&token, 1, MPI_INT, 1, 30, MPI_COMM_WORLD);
    cout << "\nProcess 3 sending " << token << " to Process 1\n";
  }

  else if (world_rank == 0)
  {
    MPI_Request r1, r2;
    MPI_Status s;

    MPI_Irecv(&token1, 1, MPI_INT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &r1);
    MPI_Irecv(&token2, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &r2);
    MPI_Wait(&r2, &s);
    MPI_Wait(&r1, &s);
    cout << "Received: " << token1 << "\t" << token2 << "\n";
  }
  MPI_Finalize();
}
