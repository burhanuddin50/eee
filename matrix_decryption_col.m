 function  cipher = matrix_decryption_col(A,row,col,d)
    
        for i = 1:row
            for j = 1:col
                   cipher(d(i,j),j) = A(i,j);
            end       
        end