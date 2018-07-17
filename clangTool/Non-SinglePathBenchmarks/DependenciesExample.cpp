#include <stdio.h>
#include <mpi.h>
#include <stdlib.h>
#include <iostream>

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

  int token, token1;

  MPI_Barrier(MPI_COMM_WORLD);

  if (world_rank == 0)
  {
    token = 10;
    MPI_Send(&token, 1, MPI_INT, 3, 10, MPI_COMM_WORLD);
    std::cout << "\nProcess 0 sending " << token << " to Process 3\n";

    MPI_Status status;
    MPI_Recv(&token1, 1, MPI_INT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
    std::cout << "\nProcess 0 recieved " << token1 << "\n";
  }

  else if (world_rank == 1)
  {
    MPI_Status status;
    MPI_Recv(&token1, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
    std::cout << "\nProcess 1 recieved " << token1 << "\n";
    if(token1 == 3)
    {
      token = 5;
      MPI_Send(&token, 1, MPI_INT, 0, 20, MPI_COMM_WORLD);
      std::cout << "\nProcess 1 sending " << token << " to Process 0\n";
    }
    else
    {
      token = 6;
      MPI_Send(&token, 1, MPI_INT, 0, 20, MPI_COMM_WORLD);
      std::cout << "\nProcess 1 sending " << token << " to Process 0\n";
    }
  }

  else if (world_rank == 2)
  {
    MPI_Status status;
    MPI_Recv(&token, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
    std::cout << "\nProcess 2 recieved " << token << "\n";
    if(token == 1)
    {
      token1 = 3;
      MPI_Send(&token1, 1, MPI_INT, 1, 3, MPI_COMM_WORLD);
      std::cout << "\nProcess 2 sending " << token1 << " to Process 1\n";
    }
    else
    {
      token1 = 4;
      MPI_Send(&token1, 1, MPI_INT, 1, 4, MPI_COMM_WORLD);
      std::cout << "\nProcess 2 sending " << token1 << " to Process 1\n";
    }
  }

  else if (world_rank == 3)
  {
    MPI_Status status;
    MPI_Recv(&token, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
    std::cout << "\nProcess 3 recieved " << token << "\n";
    if(token == 10)
    {
      token1 = 1;
      MPI_Send(&token1, 1, MPI_INT, 2, 1, MPI_COMM_WORLD);
      std::cout << "\nProcess 3 sending " << token1 << " to Process 2\n";
    }
    else 
    {
      token1 = 2;
      MPI_Send(&token1, 1, MPI_INT, 2, 2, MPI_COMM_WORLD);
      std::cout << "\nProcess 3 sending " << token1 << " to Process 2\n";
    }

    MPI_Recv(&token, 1, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
    std::cout << "\nProcess 3 recieved " << token << "\n";
  }

  else if(world_rank == 4)
  {
    token = 20;
    MPI_Send(&token, 1, MPI_INT, 3, 20, MPI_COMM_WORLD);
    std::cout << "\nProcess 4 sending " << token << " to Process 3\n";
  }

  MPI_Finalize();
}