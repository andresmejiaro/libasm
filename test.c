#include <stdio.h>
#include <string.h>

extern int ft_strlen(unsigned char *);

int main() {

    char *pollo = "";

    int result = ft_strlen(pollo);
    printf("The function returned: %d\n", result);  // Expected output: 42
    return 0;

    
}