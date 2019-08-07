;;; Simple way to find longest element in a sentence using lambda

(accumulate (lambda (this that) (if (> (count this) (count that)) this that)) '(pie it duck russian donut))