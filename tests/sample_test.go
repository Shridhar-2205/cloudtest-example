package sample

import (
	"fmt"
	"os"
	"testing"
)

func Add(x, y int) int {
	return x + y
}
func TestAdd(t *testing.T) {
	fmt.Println("Kubeconfig for first cluster:", os.Getenv("KUBECONFIG1"))
	fmt.Println("Kubeconfig for second cluster:", os.Getenv("KUBECONFIG2"))
	sum := Add(2, 3)
	if sum != 5 {
		t.Errorf("Sum, got: %d, want: %d.", sum, 5)
	}
}
