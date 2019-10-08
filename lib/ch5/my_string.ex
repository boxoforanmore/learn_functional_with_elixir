defmodule MyString do
    def capitalize_words(title) do
        Enum.join(
            Enum.map(
                String.split(title),
                &String.capitalize/1
            ), 
            " "
        )
    end
end
