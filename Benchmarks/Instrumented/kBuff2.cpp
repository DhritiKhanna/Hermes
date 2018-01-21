#include "/home/dhriti/Dropbox/mopperExtension/clangTool/GenerateAssumes.h"
ProcessIfs* ifs = new ProcessIfs();
#include <stdio.h>
#include <mpi.h>
#include <stdlib.h>

using namespace std;

int main(int argc, char** argv) 
{
  // Initialize the MPI environment
  MPI_Init(&argc, &argv);int my_rank; MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
  // Find out rank, size
  int world_rank=-1;
  MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
  int world_size=-1;
  MPI_Comm_size(MPI_COMM_WORLD, &world_size);

  int token, token1, token2, token3, token4;

  MPI_Barrier(MPI_COMM_WORLD);

  if (world_rank == 0)
  {
    token1 = token2 = token3 = 0;
    MPI_Send(&token1, 1, MPI_INT, 1, 10, MPI_COMM_WORLD);
    MPI_Send(&token2, 1, MPI_INT, 2, 20, MPI_COMM_WORLD);
    MPI_Send(&token3, 1, MPI_INT, 2, 30, MPI_COMM_WORLD);
    MPI_Recv(&token4, 1, MPI_INT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

  }

  else if (world_rank == 1)
  {
    token1 = 10;
    token4 = 20;
    MPI_Send(&token1, 1, MPI_INT, 2, 20, MPI_COMM_WORLD);
    MPI_Recv(&token2, 1, MPI_INT, 0, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    MPI_Recv(&token3, 1, MPI_INT, 2, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    MPI_Send(&token4, 1, MPI_INT, 0, 40, MPI_COMM_WORLD);
  }

  else if (world_rank == 2)
  {
    token = 10;
    MPI_Recv(&token1, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    MPI_Recv(&token2, 1, MPI_INT, 0, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    MPI_Send(&token, 1, MPI_INT, 1, 10, MPI_COMM_WORLD);
    MPI_Recv(&token3, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
  }

  MPI_Finalize();ifs->transferInfoToScheduler(my_rank);
}