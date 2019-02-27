;;;;Clisp 
;;;; Michael Gorokhovsky, Cassandra Ferworn, Awale Hassan
;;; Node; (VALUE LEFT RIGHT)
(defparameter *fiveNode* '(5 *fourNode* *sevenNode*))
(defparameter *fourNode* '(4 *twoNode* nil))
(defparameter *twoNode* '(2 *eightNode* *nineNode*))
(defparameter *eightNode* '(8 nil nil))
(defparameter *nineNode* '(9 nil nil))
(defparameter *sevenNode* '(7 *sixNode* *threeNode*))
(defparameter *sixNode* '(6 nil *oneNode*))
(defparameter *oneNode* '(1 nil nil))
(defparameter *threeNode* '(3 nil nil))

(defun postorder (tree)
  (when tree
	(append (postorder (second tree)) (postorder (third tree)) (list (first tree)))))
	

(defun preorder (tree)
  (when tree
	(cons (first tree) (append (preorder (second tree)) (preorder (third tree))))
	))	
	
(defun inorder (tree)
	(when tree
	(append (inorder (second tree)) (list (first tree) ) (inorder (third tree)))
	))
	

	(postorder '(*fiveNode*))
	(preorder  '(*fiveNode*))
	(inorder   '(*fiveNode*))
	