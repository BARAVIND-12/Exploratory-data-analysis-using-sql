#Exploratory Data Analysis

#using  the cleaned datasets for EDA
select * from job_layoffs.layoff_stagging2;

#companies with total no of layoff
select company,sum(total_laid_off)
from job_layoffs.layoff_stagging2
group by company
order by 2 desc;

#starting and last recoreded date of layoffs
select max(`date`),min(`date`)
from job_layoffs.layoff_stagging2;

#total of layoffs based on industry 
select industry,sum(total_laid_off)
from job_layoffs.layoff_stagging2
group by industry
order by 2 desc;

#layoffs based on country
select country,sum(total_laid_off)
from job_layoffs.layoff_stagging2
group by country
order by 2 desc;

#dates with number of layoffs
select `date`,sum(total_laid_off)
from job_layoffs.layoff_stagging2
group by `date`
order by 1 desc;

#layoffs over the years
select year(`date`),sum(total_laid_off)
from job_layoffs.layoff_stagging2
group by year(`date`)
order by 1 desc;

#different stages with total no of layoffs
select stage,sum(total_laid_off)
from job_layoffs.layoff_stagging2
group by stage
order by 2 desc;

#number of layoffs over months
select substring(`date`,1,7) as `month`,sum(total_laid_off)
from job_layoffs.layoff_stagging2
where substring(`date`,1,7) is not null
group by `month`
order by 1;



