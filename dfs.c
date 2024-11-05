#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define MAX_VERTICES 100

// Queue structure for BFS
typedef struct Queue {
    int items[MAX_VERTICES];
    int front;
    int rear;
} Queue;

// Graph structure using adjacency matrix
typedef struct Graph {
    int vertices;
    int** adjMatrix;
    bool* visited;
} Graph;

// Queue operations
Queue* createQueue() {
    Queue* q = (Queue*)malloc(sizeof(Queue));
    q->front = -1;
    q->rear = -1;
    return q;
}

bool isEmpty(Queue* q) {
    return q->front == -1;
}

void enqueue(Queue* q, int value) {
    if (q->rear == MAX_VERTICES - 1)
        return;
    if (q->front == -1)
        q->front = 0;
    q->rear++;
    q->items[q->rear] = value;
}

int dequeue(Queue* q) {
    if (isEmpty(q))
        return -1;
    int item = q->items[q->front];
    q->front++;
    if (q->front > q->rear) {
        q->front = q->rear = -1;
    }
    return item;
}

// Graph operations
Graph* createGraph(int vertices) {
    Graph* graph = (Graph*)malloc(sizeof(Graph));
    graph->vertices = vertices;
    
    // Create adjacency matrix
    graph->adjMatrix = (int**)malloc(vertices * sizeof(int*));
    for (int i = 0; i < vertices; i++) {
        graph->adjMatrix[i] = (int*)calloc(vertices, sizeof(int));
    }
    
    // Create visited array
    graph->visited = (bool*)calloc(vertices, sizeof(bool));
    
    return graph;
}

void addEdge(Graph* graph, int src, int dest) {
    // Add edge for undirected graph
    graph->adjMatrix[src][dest] = 1;
    graph->adjMatrix[dest][src] = 1;
}

// Reset visited array
void resetVisited(Graph* graph) {
    for (int i = 0; i < graph->vertices; i++) {
        graph->visited[i] = false;
    }
}

// DFS implementation
void DFS(Graph* graph, int vertex) {
    graph->visited[vertex] = true;
    printf("%d ", vertex);
    
    for (int i = 0; i < graph->vertices; i++) {
        if (graph->adjMatrix[vertex][i] == 1 && !graph->visited[i]) {
            DFS(graph, i);
        }
    }
}

// BFS implementation
void BFS(Graph* graph, int startVertex) {
    Queue* q = createQueue();
    
    graph->visited[startVertex] = true;
    printf("%d ", startVertex);
    enqueue(q, startVertex);
    
    while (!isEmpty(q)) {
        int currentVertex = dequeue(q);
        
        for (int i = 0; i < graph->vertices; i++) {
            if (graph->adjMatrix[currentVertex][i] == 1 && !graph->visited[i]) {
                graph->visited[i] = true;
                printf("%d ", i);
                enqueue(q, i);
            }
        }
    }
    
    free(q);
}

int main() {
    // Create a graph with 6 vertices
    Graph* graph = createGraph(6);
    
    // Add edges to create the following graph:
    //    0 --- 1 --- 2
    //    |     |     |
    //    3 --- 4 --- 5
    addEdge(graph, 0, 1);
    addEdge(graph, 0, 3);
    addEdge(graph, 1, 2);
    addEdge(graph, 1, 4);
    addEdge(graph, 2, 5);
    addEdge(graph, 3, 4);
    addEdge(graph, 4, 5);
    
    printf("Depth First Search starting from vertex 0: ");
    DFS(graph, 0);
    printf("\n");
    
    resetVisited(graph);
    
    printf("Breadth First Search starting from vertex 0: ");
    BFS(graph, 0);
    printf("\n");
    
    // Free allocated memory
    for (int i = 0; i < graph->vertices; i++) {
        free(graph->adjMatrix[i]);
    }
    free(graph->adjMatrix);
    free(graph->visited);
    free(graph);
    
    return 0;
}
