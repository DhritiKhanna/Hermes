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

  int token, token1, token2;

  MPI_Barrier(MPI_COMM_WORLD);

  if (world_rank == 0)
  {
    token = 0;
    MPI_Send(&token, 1, MPI_INT, 2, 0, MPI_COMM_WORLD);
    MPI_Recv(&token, 1, MPI_INT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    MPI_Recv(&token, 1, MPI_INT, 2, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
  }

  if (world_rank == 1)
  {
    token1 = 10;
    token2 = 20;
    MPI_Send(&token, 1, MPI_INT, 0, 10, MPI_COMM_WORLD);
    MPI_Send(&token, 1, MPI_INT, 2, 20, MPI_COMM_WORLD);
  }

  else if (world_rank == 2)
  {
    token = 10;
    MPI_Recv(&token1, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    MPI_Send(&token,  1, MPI_INT, 0, 20, MPI_COMM_WORLD);
    MPI_Recv(&token2, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
  }

  MPI_Finalize();
}