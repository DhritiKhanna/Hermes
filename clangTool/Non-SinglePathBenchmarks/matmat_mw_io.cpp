/* FEVS: A Functional Equivalence Verification Suite for High-Performance
 * Scientific Computing
 *
 * Copyright (C) 2010, Stephen F. Siegel, Timothy K. Zirkel,
 * University of Delaware
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 */


#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <mpi.h>

#define comm MPI_COMM_WORLD

using namespace std;

int N, L, M;

void printMatrix(int numRows, int numCols, int *m) 
{
  int i, j;
  for (i = 0; i < numRows; i++) 
  {
    for (j = 0; j < numCols; j++)
      printf("%d ", m[i*numCols + j]);
    printf("\n");
  }
  fflush(stdout);
}

/*void vecmat(int vector[L], int matrix[L][M], int result[M]) {
  int j, k;
  for (j = 0; j < M; j++)
    for (k = 0, result[j] = 0.0; k < L; k++)
      result[j] += vector[k]*matrix[k][j];
}*/

int main(int argc, char **argv) 
{
  int rank, nprocs, i, j;
  MPI_Status status;
  
  //N = atoi(argv[1]);
  //L = atoi(argv[2]);
  //M = atoi(argv[3]);
  N=L=M=2;
  
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(comm, &rank);
  MPI_Comm_size(comm, &nprocs);

  if (rank == 0) 
  {
    int a[N][L], b[L][M], c[N][M], tmp[M];
    int count;
    
    FILE *fp =fopen("/home/dhriti/Dropbox/mopperExtension/clangTool/Non-SinglePathBenchmarks/data", "r");
    for (i = 0; i < N; i++)
      for (j = 0; j < L; j++)
        fscanf(fp,"%d", &a[i][j]);
      
    for (i = 0; i < L; i++)
      for (j = 0; j < M; j++)
        fscanf(fp,"%d",&b[i][j]);

    MPI_Bcast(b, L*M, MPI_INT, 0, comm);
    for (count = 0; count < nprocs-1 && count < N; count++) 
    {
      std::cout << "\nProcess " << rank << " sending " << a[count][0] << " to process " << count+1 << "\n";
      //MPI_Send(&a[count][0], L, MPI_INT, count+1, count+1, comm);
      MPI_Send(&a[count][0], L, MPI_INT, count+1, 1, comm);
    }
    for (i = 0; i < N; i++) 
    {
      MPI_Recv(tmp, M, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, comm, &status);
      std::cout << "\nProcess " << rank << " receiving " << *tmp << " from process " << status.MPI_SOURCE << "\n";

      for (j = 0; j < M; j++) 
        c[status.MPI_TAG-1][j] = tmp[j];

      if (count < N) 
      {
        //MPI_Send(&a[count][0], L, MPI_INT, status.MPI_SOURCE, count+1, comm);
        MPI_Send(&a[count][0], L, MPI_INT, status.MPI_SOURCE, 1, comm);
        std::cout << "\nProcess " << rank << " sending " << a[count][0] << " to process " << status.MPI_SOURCE << "\n";
        count++;
      }
    }
    for (i = 1; i < nprocs; i++) 
    {
      std::cout << "\nProcess " << rank << " sending " << 0 << " to process " << i << "\n";
      MPI_Send(NULL, 0, MPI_INT, i, 0, comm);
    }

    printMatrix(N, M, &c[0][0]);
    fclose(fp);
  } 
  else 
  {
    int b[L][M], in[L], out[M];

    MPI_Bcast(b, L*M, MPI_INT, 0, comm);
    while (1) 
    {
      MPI_Recv(in, L, MPI_INT, MPI_ANY_SOURCE, MPI_ANY_TAG, comm, &status);
      if (status.MPI_TAG == 0) 
      {
        break;
      }
      else
      {
        //vecmat(in, b, out);
        int j, k;
        for (j = 0; j < M; j++)
          for (k = 0, out[j] = 0; k < L; k++)
            out[j] += in[k]*b[k][j];
        MPI_Send(out, M, MPI_INT, 0, status.MPI_TAG, comm);
      }
    }
  }
  MPI_Finalize(); 
  return 0;
}
