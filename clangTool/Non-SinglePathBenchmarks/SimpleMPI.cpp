# include "mpi.h"

using namespace std;

int main(int argc, char** argv) 
{
  // Initialize the MPI environment
  MPI_Request handle1, handle2;
  MPI_Init(&argc, &argv);int my_rank; 
  MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);

  // Find out rank, size
  int world_rank=-1;
  MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
  int world_size=-1;
  MPI_Comm_size(MPI_COMM_WORLD, &world_size);

  int x, y;

  MPI_Barrier(MPI_COMM_WORLD);

  if (world_rank == 1)
  {
    x = 10;
    MPI_Send(&x, 1, MPI_INT, 0, 10, MPI_COMM_WORLD);
    cout << "\nProcess 1 sending " << x << " to Process 0\n";
    MPI_Recv(&y, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    MPI_Wait(&handle2, MPI_STATUS_IGNORE);
  }

  else if (world_rank == 0)
  {
  	y = 20;
    MPI_Recv(&x, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    if(x == 10)
    {
    	MPI_Send(&y, 1, MPI_INT, 1, 10, MPI_COMM_WORLD);
   		MPI_Wait(&handle2, MPI_STATUS_IGNORE); 	
    }
    else
    {

    }
    MPI_Wait(&handle1, MPI_STATUS_IGNORE);
    cout << "\nProcess 0 receiving " << x << " from Process 1\n";
  }

  MPI_Finalize();
  return 0;
}