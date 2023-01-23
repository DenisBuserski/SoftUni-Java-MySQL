CREATE FUNCTION ufn_calculate_future_value (initial_sum DECIMAL(8,4), yearly_interest_rate DOUBLE, number_of_years INT) 
RETURNS DECIMAL(8,4)
DETERMINISTIC 
BEGIN
    RETURN 
    (SELECT initial_sum * (SELECT POW(1 + yearly_interest_rate, number_of_years)));
END
