 function  cipher = matrix_decryption_row(A,row,col,d)
    
        for i = 1:row
            for j = 1:col
                   cipher(i,d(i,j)) = A(i,j);
            end       
        end