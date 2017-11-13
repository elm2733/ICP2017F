%3. extractLetter

function extractLetter()
    List = { {'M','A','T','L','A','B'}, {' '}, {'i','s'}, {' '}, {'a'}, {' '}, {'s','t','r','a','n','g','e'}, {', '}, {'b','u','t',' '}, {'p','o','p','u','l','a','r'}, {' '}, {'p','r','o','g','r','a','m','m','i','n','g',' ','l','a','n','g','u','a','g','e'} };
    listLength = length(List);
    
    for index = 1:listLength
        for i = 1:length(List{index})
            str_1 = sprintf(List{index}{i});
            fprintf('%s',str_1);
        end
    end
    fprintf('\n');
end