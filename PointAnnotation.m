dir_path = dir('./frames/*.jpg');
no_of_images = numel(dir_path);
file_no=1;
while true    
    count=1;
    imshow(imread('./frames/shrimp'+string(file_no)+'.jpg'));
       while true
            point = drawpoint();
            frame{1,file_no}.loc(count,1)= point.Position(1,1);
            frame{1,file_no}.loc(count,2)= point.Position(1,2);
            %disp(file_no);
            key_press=waitforbuttonpress
            val_0=double(get(gcf,'CurrentCharacter'))
            if (val_0==97)
                key_press=waitforbuttonpress
                %msgbox('can we go to next image')
                break;
            end
            count=count+1;            
       end
       if file_no==no_of_images
         break;     
       end
       file_no=file_no+1;
end

