defmodule IncomeTax do
    defguard is_income(value) when (is_float(value) or is_integer(value))

    def tax(salary) when is_income(salary) do
        cond do
            salary <= 2000 -> 0
            salary <= 3000 -> (salary * 0.05)
            salary <= 6000 -> (salary * 0.10)
            salary > 6000 -> (salary * 0.15)
        end
    end    
end
