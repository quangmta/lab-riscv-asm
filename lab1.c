#include <stdio.h>

#define N 4
#define M 4

int process(int n, int m, int c, int matrix [M][N])
{
    int result =0;
    for (int i = 0; i < m; i++)
    {
        result += matrix[i][c];
    }
    return result;
}

int main(int argc, char** argv)
{
    int matrix[M][N];
    int col,result;
    
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            scanf("%d", &matrix[i][j]);
        }
    }

    scanf("%d",&col);

    result = process(N, M,col, matrix);
    
    printf("%d",result);

    return 0;
}
