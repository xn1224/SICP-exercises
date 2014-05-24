###
Kevin C. Baird
SICP in CoffeeScript:
  Exercise 2.30 - square-tree

(define (square-tree1 tree)
  (define nil '())
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* tree tree))
        (else (cons (square-tree1 (car tree))
                    (square-tree1 (cdr tree))))))

(define (square-tree2 tree)
  (define (square sub-tree)
    (if (pair? sub-tree)
      (square-tree2 sub-tree)
      (* sub-tree sub-tree)))
  ; I Prefer a named proc over mapping a lambda
  (map square tree))

(define tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
###

squareTree = (tree) ->
  sq = (subTree) ->
    if subTree.length > 1 then squareTree(subTree) else subTree * subTree
  sq(x) for x in tree

t1 = [1, [2, [3, 4], 5], [6, 7]]

console.log squareTree(t1)
#console.log squareTree([6, 7])
#console.log squareTree([[6, 7]])
