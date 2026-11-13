#include <iostream>

void process_data(float* a, float* b, float* c, int n) {
    for (int i = 0; i < n; i++) {
        c[i] = a[i] * b[i] + (a[i] / 2.5f) - (b[i] * 1.1f);
    }
}

int main() {
    int n = 100000000;
    
    float* a = new float[n];
    float* b = new float[n];
    float* c = new float[n];

    for (int i = 0; i < n; i++) {
        a[i] = i * 0.1f;
        b[i] = i * 0.2f;
    }

    for (int iter = 0; iter < 10; iter++) {
        process_data(a, b, c, n);
    }

    std::cout << c[n / 2] << "\n";

    delete[] a;
    delete[] b;
    delete[] c;
    
    return 0;
}
