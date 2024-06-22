    function  cipher = matrix_encryption_col(A,row,col,d)
    
        for i = 1:row
            for j = 1:col
                   cipher(i,j) = A(d(i,j),j);
            end       
        end