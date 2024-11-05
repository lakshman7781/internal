#include <stdio.h>
#include <stdlib.h>

// Node structure for the circular linked list
typedef struct Node {
    int data;
    struct Node* next;
} Node;

// Function to create a new node
Node* createNode(int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

// Function to reverse the nodes in a circular linked list
Node* reverseList(Node* head) {
    if (head == NULL || head->next == head) {
        return head; // Empty list or single node, no need to reverse
    }

    Node* prev = NULL;
    Node* curr = head;
    Node* next = head->next;

    while (curr != head) {
        curr->next = prev;
        prev = curr;
        curr = next;
        next = next->next;
    }

    head->next = curr;
    return prev;
}

// Function to print the circular linked list
void printList(Node* head) {
    if (head == NULL) {
        printf("List is empty.\n");
        return;
    }

    Node* curr = head;
    do {
        printf("%d -> ", curr->data);
        curr = curr->next;
    } while (curr != head);
    printf("head\n");
}

int main() {
    // Create a circular linked list: 1 -> 2 -> 3 -> 4 -> 1
    Node* head = createNode(1);
    head->next = createNode(2);
    head->next->next = createNode(3);
    head->next->next->next = createNode(4);
    head->next->next->next->next = head;

    printf("Original list: ");
    printList(head);

    head = reverseList(head);

    printf("Reversed list: ");
    printList(head);

    return 0;
}
