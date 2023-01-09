#include<stdio.h>
#include<stdlib.h>
int main()
{
   int n1,n2;
   printf("Enter 1st array\n");
   scanf("%d",&n1);
   printf("Enter 2nd array\n");
   scanf("%d",&n2);
   int x[300],h[300]; 
  for(int i=0;i<n1;i++)
  {
    scanf("%d",&x[i]);
  }
  for(int i=0;i<n2;i++)
  {
    scanf("%d",&h[i]);
  }
  if(n1>n2)
  {
    for(int i=n2;i<n1;i++)
    {
       h[i]=0;
       n2=n1;
    }
    
  }
  else{
    for(int i=n1;i<n2;i++)
    {
       x[i]=0;
       n1=n2;
    }
  }
  int mat[n1][n2];
  for(int i=0;i<n1;i++)
  {
     for(int j=0;j<n1;j++)
     {
        mat[j][i]=x[j];
     }
     int t=x[n1-1];
     for(int k=n1-1;k>0;k--)
     {
        x[k]=x[k-1];
     }
     x[0]=t;
  }
  for(int i=0;i<n1;i++)
  {
    for(int j=0;j<n1;j++)
    {
        printf("%d  ",mat[i][j]);
    }
    printf("\n");
  }
  
  int m2[n1][1];
  for(int i=0;i<n1;i++)
  {
    for(int j=0;j<1;j++)
    {
        m2[i][j]=h[i];
    }
  }
 int ans[n1][1];
 for(int i=0;i<n1;i++)
 {
    for(int j=0;j<1;j++)
    {
        ans[i][j]=0;
        for(int k=0;k<n1;k++)
        {
            ans[i][j]+=(mat[i][k]*m2[j][k]);
        }
    }
 }
 for(int i=0;i<n1;i++)
 {
    for(int j=0;j<1;j++)
    {
        printf("%d ",ans[i][j]);
    }
    printf("\n");
 }
  return 0;
}
