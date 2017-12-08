def caesar_encode(string,offset)
    lower_case = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    upper_case = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    split_string = string.split("")
    split_string.map do |character|
        if /[a-z]/ =~ (character)
          new_index = (lower_case.index(character) + offset) % 26
          character = lower_case[new_index]
        elsif /[A-Z]/ =~ (character)
          new_index = (upper_case.index(character) + offset) % 26
          character = upper_case[new_index]
        else 
          character
        end
    end.join
end

# def caesar_decode(string,offset)
#     lower_case = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
#     upper_case = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
#     string.split("").map do |character|
#         if /[a-z]/ =~ (character)
#           character = lower_case[(lower_case.index(character) - offset) % 26]
#         elsif /[A-Z]/ =~ (character)
#           character = upper_case[(upper_case.index(character) - offset) % 26]
#         else 
#           character
#         end
#     end.join
# end

def caesar_decode(string, offset)
    caesar_encode(string, offset * -1)
end