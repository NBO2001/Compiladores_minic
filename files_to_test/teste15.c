
int max_number = 15846;

int sum(int a, int b){
    a = a+1;
    return a;   
}

int sum_vector(){

    int n = 15;
    int i = 0;

    while(i < n){
        i += 1;
    }

}

int is_odd(int a){

    if(a%2!=1){
        return 0;
    }else{
        return 1;
    }

}

int only_if(){
    int c = 1;

    if(c == 1){
        return c;
    }

    return 0;
}

int test_operators(){
    int a = 15;

    a += 1;
    a -= 2;
    a *= 5;
    a /= 2;
    a %= 2;

    if(a == 5){

        while(a < 15){

            if(a <= 2){
                continue;
            }
            else{
                break;
            }

        }

    }

    if(a >= 78){
        a = a * a;
        a = a + a;
        a = a - a;
        a = a / a;
        a = a % a;
    }

}


int factorial(int n) {
    if (n <= 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int factorial_sec(int n) {
    if (n <= 1) return 1;
    else return n * factorial(n - 1);
}
