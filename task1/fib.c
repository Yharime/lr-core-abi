#include<stdio.h>

long long fib_1(int num){
    if(num<=0)
    return 0;
    if(num==1)
    return 1;
    long long ans;
    ans = fib_1(num-1) + fib_1(num-2);
    return ans;
}

long long fib(int num){
    int a,b,c;
    a = 0;
    b = 1;
    if(num<=0)
    return 0;
    if(num==1)
    return 1;
    for(int i=0;i<=num-2;i++){
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}
int main(){
    int x;
    long long ans;
    scanf("%d",&x);
    //ans = fib_1(x);
    ans  = fib(x);
    printf("%lld",ans);
    return 0;
}