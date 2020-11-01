[Index][home] > Data Structures and Algorithms > Graph Theory

# Graph Theory

## Types of Graphs
- **Undirected** graph
  - edges have no orientation
  - `(u, v)` : an edge between vertex `u` and `v`
- **Directed** graph (digraph)
  - edges have orientation
  - `(u, v)` : an edge from vertex `u` to `v`
- **Weighted** graph
  - edge can contain certain weight
  - both directed and undirected graphs can be weighted
  - `(u, v, w)` : an edge from vertex `u` to `v` with weight `w`
- Some Special Graphs
  - Tree - an undirected graph with no cycles
    - even a list is a tree
  - Rooted tree
    - a tree with a designated root node where every edge either points away from root node or 
     towards the root node
    - edges away from root node - arborescence(out-tree)
    - edges towards from root node - anti-arborescence(in-tree)
  - Directed Acyclic Graphs
    - directed graphs with no cycles
  - Bipartite Graph
    - whose vertices can be split into two independent groups `U`, `V` such that every edge connects between `U` and `V` 
  - Complete Graph
    - there is a unique edge between every pair of vertices
    - represented as **K<sub>n</sub>**

---

## Representing Graphs
- [Adjacency Matrix](https://en.wikipedia.org/wiki/Adjacency_matrix)
  - space efficient for dense graph - **O(V<sup>2</sup>)** space complexity
  - **O(1)** time complexity for a edge weight lookup
  - **O(V<sup>2</sup>)** time complexity to iterate over all nodes
- [Adjacency List](https://en.wikipedia.org/wiki/Adjacency_list)
  - **O(E)** time complexity for a edge weight lookup
- Edge List
  - unordered list  of edges
  - `[(u, v, w), ...]`
  - rarely used


---

## Common Graph Theory Problems
1. Shortest path problem
    - Given a weighted graph, find the  shortest path of edges from node A to node B
    - Algorithms: BFS(unweighted graph), Dijkstra's, Bellman-Ford, Floyd-Warshall, A*, and many more
2. Connectivity
    - Does there exist a path between node A and node B
    - Algorithms: use union find data structure or any search algorithm (eg. DFS)
3. Negative Cycle
    - Does my weighted digraph have any negative cycles? If so where?
    - Algorithms: Bellman-Ford and Floyd-Warshall
4. Strongly Connected Components
    - self contained cycles with in a directed graph where every vertex in a given cycle can reach every other vertex in the same cycle 
    - Algorithms: Tarjan's and Kosaraju's algoritm
5. Travelling Salesman problem
    - Given a list of cities and the distances between each pair of cities, what is the shortest possible route that each city exactly once and returns to the origin city?
    - Algorithms: Held-Karp, branch and bound, many approximation algorithms like ant colony algorithm
6. Bridges
    - bridges is any edge in a graph whose removal increases the number of connected components in the graph 
    - Algorithms: 
7. Articulation points
    - is a vertex in the graph whose removal increases the number of connected components in the graph
    - Algorithms: 
8. Minimum spanning tree (MST)
    - MST is a subset of the edges of a connected, edge-weighted graph that connects all the vertices together without any cycles and with the minimum possible total edge weight.
    - Algorithms: Kruskal's, Prim's & Boruvka's
9. Network flow: max flow
    - with an infinite input source how much "flow" can we push through the network?
    - Algorithms: Ford-Fulkerson, Edmonds-Karp & Dinic's algorithm





[home]: /dev-guide
