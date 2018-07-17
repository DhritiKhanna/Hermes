#include <stdio.h>
#include <mpi.h>
#include <stdlib.h>

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
  MPI_Barrier(MPI_COMM_WORLD);

  if (world_rank == 0)
  {
    int token1, token2;
    MPI_Request request1, request2;
    MPI_Status status1, status2;
    
    MPI_Irecv(&token1, 1, MPI_INT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &request1);
    MPI_Irecv(&token2, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &request2);
    
    MPI_Wait(&request1, &status1);
    MPI_Wait(&request2, &status2);
  }

  else if (world_rank == 1)
  {
    int token1, token2;
    token1 = 10;
    token2 = 11;
    MPI_Send(&token1, 1, MPI_INT, 2, 10, MPI_COMM_WORLD);
    MPI_Send(&token2, 1, MPI_INT, 0, 11, MPI_COMM_WORLD);
  }

  else if (world_rank == 2)
  {
    MPI_Status status1, status2;
    int token1, token2;
    MPI_Recv(&token1, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status1);
    MPI_Recv(&token2, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status2);
  }

  else if (world_rank == 3)
  {
    int token1 = 30;
    int token2 = 31;
    MPI_Send(&token1, 1, MPI_INT, 2, 30, MPI_COMM_WORLD);
    MPI_Send(&token2, 1, MPI_INT, 0, 31, MPI_COMM_WORLD);
  }
  MPI_Finalize();
}