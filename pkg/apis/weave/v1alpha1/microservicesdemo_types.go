package v1alpha1

import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// EDIT THIS FILE!  THIS IS SCAFFOLDING FOR YOU TO OWN!
// NOTE: json tags are required.  Any new fields you add must have json tags for the fields to be serialized.

// MicroservicesDemoSpec defines the desired state of MicroservicesDemo
type MicroservicesDemoSpec struct {
	// INSERT ADDITIONAL SPEC FIELDS - desired state of cluster
	// Important: Run "operator-sdk generate k8s" to regenerate code after modifying this file
	// Add custom validation using kubebuilder tags: https://book-v1.book.kubebuilder.io/beyond_basics/generating_crd.html
}

// MicroservicesDemoStatus defines the observed state of MicroservicesDemo
type MicroservicesDemoStatus struct {
	// INSERT ADDITIONAL STATUS FIELD - define observed state of cluster
	// Important: Run "operator-sdk generate k8s" to regenerate code after modifying this file
	// Add custom validation using kubebuilder tags: https://book-v1.book.kubebuilder.io/beyond_basics/generating_crd.html
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object

// MicroservicesDemo is the Schema for the microservicesdemos API
// +kubebuilder:subresource:status
// +kubebuilder:resource:path=microservicesdemos,scope=Namespaced
type MicroservicesDemo struct {
	metav1.TypeMeta   `json:",inline"`
	metav1.ObjectMeta `json:"metadata,omitempty"`

	Spec   MicroservicesDemoSpec   `json:"spec,omitempty"`
	Status MicroservicesDemoStatus `json:"status,omitempty"`
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object

// MicroservicesDemoList contains a list of MicroservicesDemo
type MicroservicesDemoList struct {
	metav1.TypeMeta `json:",inline"`
	metav1.ListMeta `json:"metadata,omitempty"`
	Items           []MicroservicesDemo `json:"items"`
}

func init() {
	SchemeBuilder.Register(&MicroservicesDemo{}, &MicroservicesDemoList{})
}
