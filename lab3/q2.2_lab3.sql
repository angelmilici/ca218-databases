SELECT co.Name, cl.language, cl.Percentage as percentage
from Country co 
inner join CountryLanguage cl
on co.Code = cl.CountryCode
where (cl.CountryCode,cl.Percentage) in (select CountryCode,max(Percentage)
                                         from CountryLanguage
                                         group by CountryCode)
group by co.Name;