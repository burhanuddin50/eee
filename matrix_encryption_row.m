    function  cipher = matrix_encryption_row(A,row,col,d)
    
        for i = 1:row
            for j = 1:col
                   cipher(i,j) = A(i,d(i,j));
            end       
        end