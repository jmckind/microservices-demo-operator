package controller

import (
	"github.com/jmckind/microservices-demo-operator/pkg/controller/microservicesdemo"
)

func init() {
	// AddToManagerFuncs is a list of functions to create controllers and add them to a manager.
	AddToManagerFuncs = append(AddToManagerFuncs, microservicesdemo.Add)
}
