{smcl}
{* *! version 1.0.0 dec 2022}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Command description"   "pip##desc"}{...}
{viewerjumpto "Parameters description"   "pip##param"}{...}
{viewerjumpto "Options description"   "pip##options"}{...}
{viewerjumpto "Subcommands"   "pip##subcommands"}{...}
{viewerjumpto "Stored results"   "pip##return"}{...}
{viewerjumpto "Examples"   "pip##Examples"}{...}
{viewerjumpto "Disclaimer"   "pip##disclaimer"}{...}
{viewerjumpto "How to cite"   "pip##howtocite"}{...}
{viewerjumpto "References"   "pip##references"}{...}
{viewerjumpto "Acknowledgments"   "pip##acknowled"}{...}
{viewerjumpto "Authors"   "pip##authors"}{...}
{viewerjumpto "Regions" "pip_countries##regions"}{...}
{viewerjumpto "Countries" "pip_countries##countries"}{...}
{cmd:help pip}{right:{browse "https://pip.worldbank.org/":Poverty and Inequality Platform (PIP)}}
{right:{browse "https://worldbank.github.io/pip/"}}
{hline}

{phang}
{res:If you're new to {cmd:pip}, please start by reading {help pip_intro:pip intro}}

{title:Syntax}

{p 8 16 2}
{cmd:pip} [{it:{help pip##subcommands:subcommand}}]{cmd:,} 
[{it:subcommand options}]


{marker sbc_table}{...}
{synoptset 27 tabbed}{...}
{synopthdr:Subcommand}
{synoptline}
{p 4 4 2}Main subcommands{p_end}
{synopt :{helpb pip_cl:cl}}Country-level poverty and inequality estimates. {help pip_cl##options:options}{p_end}
{synopt :{helpb pip_cl:wb}}World Bank's regional and global aggregation. {help pip_cl##options:options}{p_end}
{synopt :{helpb pip_tables:tables}}Clickable list of auxiliary tables. {help pip_tables##options:options}{p_end}
{synopt :{helpb pip_cache:cache}}Manage local cache. {help pip_cache##options:options}{p_end}
{synopt :{helpb pip_print:print}}Print useful information. {help pip_print##options:options}{p_end}
{synopt :{helpb pip_install:[un]install}}Installs the stable version of pip from SSC 
({cmd:pip install ssc}) or the development version from GitHub ({cmd:pip install gh}){p_end}

{p 4 4 2}Auxiliary subcommands{p_end}
{synopt :{helpb info}}Display countries and regions availability{p_end}
{synopt :{helpb cleanup}}Deletes all pip data from current stata memory.{p_end}
{synopt :{helpb drop}}({it:Programmer's option}) Deletes objects from memory.{p_end}
{synopt :{helpb test}}Open in browser last pip call. Type {cmd:disp "${pip_query}"} to see the parameters of the API query.{p_end}
{synoptline}
{pstd}
{bf:Note}: {cmd:pip} requires an internet connection.



{marker desc}{...}
{title:Description}

{pstd}
The {cmd:pip} command has the same functionality as the {browse "https://pip.worldbank.org/":PIP website}. 
It allows Stata users to compute poverty and inequality indicators for over 160 countries 
in the World Bank's database of household surveys. PIP is a computational tool that allows 
users to conduct country-specific, cross-country, as well as global and regional poverty analyses.

{pstd}
{res:If you're new to {cmd:pip}, please start by reading {help pip_intro:pip intro}}. 
If you want to understand the details and functionalities of each subcommand, please click on the corresponding subcommand of the table {help pip##sbc_table:above}.
The rest of this document contains general information regarding PIP and the {cmd:pip}
Stata command.




{marker sections}{...}
{title:Sections}
{err:CHANGE FORMAT AND FIX ORDER}

{pstd}
Sections are presented under the following headings:

		{it:{help pip##basic_info:Basic Information}}
			{it:{help pip##opts_desc:Options description}}
				{it:{help pip##cl_wb_options:cl and wb options}}
				{it:{help pip##tables_options:tables options}}
				{it:{help pip##cache_options:cache options}}
				{it:{help pip##print_options:print options}}
				{it:{help pip##install_options:Un/install & update options}}
				{it:{help pip##general_options:general options}}
			{it:{help pip##desc:Command description}}
			{it:{help pip##subcmd_desc:Subcommands description}}
			
		{it:{help pip##subcmd_detail:Subcommands details}}
			{it:{help pip##cl_wb_detail:cl and wb details}}
			{it:{help pip##options:Options description}}
			{it:{help pip##operational:Operational description}}
		
		{it:{help pip##Examples:Examples}}
		
		{it:{help pip##misc:Miscellaneous}}
			{it:{help pip##memory:Memory use and frames}}
			{it:{help pip##list:List of pip and povcalnet variables}}
			{it:{help pip##return:Stored results}}
			{it:{help pip##disclaimer:Disclaimer}}
			{it:{help pip##references:References}}
			{it:{help pip##acknowled:Acknowledgments}}
			{it:{help pip##authors:Authors}}
			{it:{help pip##contact:Contact}}
			{it:{help pip##howtocite:How to cite}}
			{it:{help pip_countries:Region and country codes}}

{p2colset 9 22 22 2}{...}
{p2col :{hi:pip} {hline 2}}Access poverty and inequality data from the 
World Bank's {browse "https://pip.worldbank.org/":Poverty and Inequality Platform (PIP)}. 
The {cmd:pip} command allows Stata users to access the poverty and inequality indicators 
available in the PIP platform and estimate poverty at any line. PIP contains more 
indicators than its predecessor(povcalnet). See {help pip##list:below} for a comparison
between the indicators in the pip and povcalnet commands. {p_end}
{p2col :{hi:Website: }}{browse "https://worldbank.github.io/pip/"}{p_end}
{p2colreset}{...}



{marker basic_info}{...}
{hline}
{center:{bf:Basic information}}
{hline}

{marker opts_desc}{...}
{title:Options description}

{pstd}
{err:Note}: Options abbreviation is not allowed in {cmd:pip} 

.
.
.



{marker tables_options}{...}
{synoptset 27 tabbed}{...}
{synopthdr:tables options}
{synoptline}
{synopt :{opt table(string)}}Loads one auxiliary table, this option is used along with the {cmd:tables} subcommand.{p_end}
{synoptline}



{marker print_options}{...}
{synoptset 27 tabbed}{...}
{synopthdr:print options}
{synoptline}
{synopt :{opt timer}}displays timer report of last execution of {cmd:pip}{p_end}
{synopt :{opt versions}}displays versions of data available{p_end}
{synopt :{opt tables}}Equivalent to {cmd:pip tables}. Displays auxiliary tables
available.{p_end}
{synopt :{opt available}}Equivalent to {cmd:pip info}. Display data availability. 
You can also use {cmd:pip print, {it:info}} or 
{cmd:pip print, {it:availability}}{p_end}
{synopt :{opt cache}}Equivalent to {cmd:pip cache, info}. 
Displays interactive information of cache local memory.{p_end}
{synoptline}



{marker install_options}{...}
{synoptset 27 tabbed}{...}
{synopthdr:Un/Install & update opts}
{synoptline}
{synopt :{opt gh}}Install {cmd:pip} from 
{browse "https://github.com/worldbank/pip":GitHub}{p_end}
{synopt :{opt ssc}}Install {cmd:pip} from 
{browse "https://ideas.repec.org/c/boc/bocode/s459179.html": SSC}{p_end}
{synopt :{opt version(#)}}version to install. Only works with option {it:gh} 
option{p_end}
{synopt :{opt path(path)}}{it:(Programmer option)} Un/Installs {cmd:pip} 
in that directory. Default is PLUS, as you regularly install commands from SSC.{p_end}
{synoptline}


{marker general_options}{...}
{synoptset 27 tabbed}{...}
{synopthdr:General Options}
{synoptline}
{synopt :{opt version(string)}}Combination of numbers in the format %Y%m%d_YYYY_RV_AV_SSS 
(click {bf:{help pip_note:here}} for explanation of each component). 
Option {it:version()} takes prevalence over the next 3 options 
{it:ppp_year()}, {it:release()} & {it:identity()}, as the combination of 
these three parameters uniquely identifies a dataset.{p_end}
{synopt :{opt ppp:_year:}(#)}PPP round (2011 or 2017). {p_end}
{synopt :{opt release(numlist)}}8 digit number with the PIP release date in the format {it:YYYYMMDD}.{p_end}
{synopt :{opt identity(string)}{err:*}}Version of data to run the query on (e.g., prod, int, test). See description of each identity {bf:{help pip_note:here}}.{p_end}
{synopt :{opt server(string)}{err:*}}Name of server to query (e.g, prod, dev, qa). See description of each server {bf:{help pip_note:here}}.{p_end}
{synopt :{opt clear}}Replaces data in memory.{p_end}

{pstd}
{err:*Note}: The {cmd:server()} and {cmd:identity()} options are available internally only for World Bank staff upon request to the  
{browse "pip@worldbank.org":  PIP technical team}.
For a detailed description of the {cmd:server()} and {cmd:identity()} options see {bf:{help pip_note:here}}.{p_end}
{synoptline}




{marker subcmd_desc}{...}
{title:Subcommands description}
{err: TO BE COMPLETED AND FIXED}

{pstd}
The main functionality of {cmd:pip} if to provide the user with the poverty and
inequality estimates at the country level and the poverty aggregates at the regional
and global levels. This can be achieved by using the subcommands {cmd:cl} 
(the default) and {cmd:wb}, respectively. However, {cmd:pip} also provides a set 
of tools and auxiliary data that you may find useful in your projects. 

{pstd}
Below you will find a short description of each subcommand and then a longer 
explnation of each.


{marker subcmd_detail}{...}
{hline}
{center:{bf:Subcommands details}}
{hline}

.
.
.
.


{marker cache_detail}{...}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
{title:cache subcommand}

...


{marker print_detail}{...}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
{title:print subcommand}
{err:TO BE ADDED}


{marker tables_detail}{...}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
{title:tables subcommand}
{err:TO BE ADDED}

{phang}
{opt tables} Provides access to the auxiliary tables. 
Default command {stata pip tables} a list of auxiliary tables using the 2017 PPPs.
Users can also specify PPP year as {stata  pip tables, ppp_year(2017)}.



{marker setup_detail}{...}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
{title:setup subcommand}
{err:TO BE ADDED}


{marker noopt_detail}{...}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
{title:No-options subcommands}
{err:TO BE COMPLETED}


{phang}
{opt information} Presents a clickable version of the available surveys, countries 
and regions. Selecting countries from the menu loads the survey-year estimates.
Choosing regions loads the regional aggregates in the reference years. 

{p 8 8 2}{err:Note}: If option {it:clear} is added, data in memory is replaced 
with a pip guidance database. If option {it:clear} is {ul:not} included,
{cmd:pip} preserves data in memory  but displays a clickable interface of survey
availability in the results window.{p_end} 

{phang}
{opt cleanup} Deletes all PIP data from Stata's memory. 

{phang}
{opt test} By typing {stata pip test}, {cmd:pip} makes use of the global
"${pip_query}" to query your browser directly and test whether the data is
downloadable. 



{marker install_detail}{...}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
..
.
.
{p 60 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}


{marker Examples}{...}
{hline}
{center:{bf:Examples}}
{hline}

{title:1. Basic examples}

{phang}
1.1. Load latest available survey-year estimates for Colombia and Argentina

{phang2}
{stata pip, country(col arg) year(last) clear} 

{phang}
1.2. Load clickable menu

{phang2}
{stata pip, info}

{phang}
1.3. Load only urban coverage level

{phang2}
{stata pip, country(all) coverage("urban") clear}


{title:2. Differences between queries }

{phang}
2.1. Country estimation at $2.15 in 2015. Since there are no surveys in ARG in 
2015, results are loaded only for COL, BRA and IND.

{phang2}
{stata pip, country(COL BRA ARG IND) year(2015) clear}

{phang}
2.2. Reference-year estimation. Filling gaps for ARG and moving the IND estimate
from 2015-2016 to 2015. Only works for reference years. 

{phang2}
{stata pip, country(COL BRA ARG IND) year(2015) clear  fillgaps}

{phang}
2.4. World Bank aggregation ({it:country()} is not available)

{phang2}
{stata pip wb, clear  year(2015)}{p_end}
{phang2}
{stata pip wb, clear  region(SAR LAC)}{p_end}
{phang2}
{stata pip wb, clear}       // all regions and reference years{p_end}


{title:3. Samples uniquely identified by country/year}

{phang2}
{ul:3.1} Longest possible time series for each country, {it:even if} welfare type or survey coverage
changes from one year to another (national coverage is preferred).

{cmd}
	  pip, clear
	* Prepare reporting_level variable
	  label define level 3 "national" 2 "urban" 1 "rural"
	  encode reporting_level, gen(reporting_level_2) label(level)

	* keep only national when more than one is available
	  bysort country_code welfare_type year: egen _ncover = count(reporting_level_2)
	  gen _tokeepn = ( (inlist(reporting_level_2, 3, 4) & _ncover > 1) | _ncover == 1)

	  keep if _tokeepn == 1

	* Keep longest series per country
	  by country_code welfare_type, sort:  gen _ndtype = _n == 1
	  by country_code : replace _ndtype = sum(_ndtype)
	  by country_code : replace _ndtype = _ndtype[_N] // number of welfare_type per country

	  duplicates tag country_code year, gen(_yrep)  // duplicate year

	 bysort country_code welfare_type: egen _type_length = count(year) // length of type series
	 bysort country_code: egen _type_max = max(_type_length)   // longest type series
	 replace _type_max = (_type_max == _type_length)

	* in case of same length in series, keep consumption
	  by country_code _type_max, sort:  gen _ntmax = _n == 1
	  by country_code : replace _ntmax = sum(_ntmax)
	  by country_code : replace _ntmax = _ntmax[_N]  // number of welfare_type per country


	  gen _tokeepl = ((_type_max == 1 & _ntmax == 2) | ///
	                 (welfare_type == 1 & _ntmax == 1 & _ndtype == 2) | ///
	                 _yrep == 0)
	 
	 keep if _tokeepl == 1
	 drop _*

{txt}      ({stata "pip_examples pip_example08":click to run})

{phang2}
{ul:3.2} Longest possible time series for each country, restrict to same welfare type throughout,
but letting survey coverage vary (preferring national).

{cmd}
	  pip, clear
	  
	* Prepare reporting_level variable
	  label define level 3 "national" 2 "urban" 1 "rural"
	  encode reporting_level, gen(reporting_level_2) label(level)
	  
	  bysort country_code welfare_type year: egen _ncover = count(reporting_level_2)
	  gen _tokeepn = ( (inlist(reporting_level_2, 3, 4) & _ncover > 1) | _ncover == 1)

	  keep if _tokeepn == 1
	* Keep longest series per country
	  by country_code welfare_type, sort:  gen _ndtype = _n == 1
	  by country_code : replace _ndtype = sum(_ndtype)
	  by country_code : replace _ndtype = _ndtype[_N] // number of welfare_type per country


	  bysort country_code welfare_type: egen _type_length = count(year)
	  bysort country_code: egen _type_max = max(_type_length)
	  replace _type_max = (_type_max == _type_length)

	* in case of same length in series, keep consumption
	  by country_code _type_max, sort:  gen _ntmax = _n == 1
	  by country_code : replace _ntmax = sum(_ntmax)
	  by country_code : replace _ntmax = _ntmax[_N]  // max 


	  gen _tokeepl = ((_type_max == 1 & _ntmax == 2) | ///
	                (welfare_type == 1 & _ntmax == 1 & _ndtype == 2)) | ///
	                _ndtype == 1

	  keep if _tokeepl == 1
	  drop _*

{txt}      ({stata "pip_examples pip_example09":click to run})

{phang2}
{ul:3.3} Longest series for a country with the same welfare type. 
Not necessarily the latest

{cmd}
	pip, clear
	*Series length by welfare type
	bysort country_code welfare_type:  gen series = _N
	*Longest 
	bysort country_code : egen longest_series=max(series)
	tab country_code if series !=longest_series
	keep if series == longest_series

	*2. If same length: keep most recent 
	bys country_code welfare_type series: egen latest_year=max(year)
	bysort country_code: egen most_recent=max(latest_year)

	tab country_code if longest_series==series & latest_year!=most_recent 
	drop if most_recent>latest_year 

	*3. Not Applicable: if equal length and most recent: keep consumption
	bys country_code: egen preferred_welfare=min(welfare_type)
	drop if welfare_type != preferred_welfare 

{txt}      ({stata "pip_examples pip_example10":click to run})

{title:4. Analytical examples}

{phang2}
{ul:4.1} Graph of trend in poverty headcount ratio and number of poor for the world

{cmd}
	  pip wb,  clear

	  keep if year > 1989
	  keep if region_code == "WLD"	
	  gen poorpop = headcount*population / 1000000 
	  gen hcpercent = round(headcount*100, 0.1) 
	  gen poorpopround = round(poorpop, 1)

	  twoway (sc hcpercent year, yaxis(1) mlab(hcpercent)           ///
	           mlabpos(7) mlabsize(vsmall) c(l))                    ///
	         (sc poorpopround year, yaxis(2) mlab(poorpopround)     ///
	           mlabsize(vsmall) mlabpos(1) c(l)),                   ///
	         yti("Poverty Rate (%)" " ", size(small) axis(1))       ///
	         ylab(0(10)40, labs(small) nogrid angle(0) axis(1))     ///
	         yti("Number of Poor (million)", size(small) axis(2))   ///
	         ylab(0(400)2000, labs(small) angle(0) axis(2))         ///
	         xlabel(,labs(small)) xtitle("Year", size(small))       ///
	         graphregion(c(white)) ysize(5) xsize(5)                ///
	         legend(order(                                          ///
	         1 "Poverty Rate (% of people living below $2.15)"      ///
	         2 "Number of people who live below $2.15") si(vsmall)  ///
	         row(2)) scheme(s2color)
	
{txt}      ({stata "pip_examples pip_example01":click to run})

{phang2}
{ul:4.2} Graph of trends in poverty headcount ratio by region, multiple poverty lines ($2.15, $3.65, $6.85)

{cmd}	
	  pip wb, povline(2.15 3.65 6.85) clear
	  drop if inlist(region_code, "OHI", "WLD") | year<1990
	  keep poverty_line region_name year headcount
	  replace poverty_line = poverty_line*100
	  replace headcount = headcount*100
	
	  tostring poverty_line, replace format(%12.0f) force
	  reshape wide  headcount,i(year region_name) j(poverty_line) string
	
	  local title "Poverty Headcount Ratio (1990-2019), by region"

	  twoway (sc headcount215 year, c(l) msiz(small))  ///
	         (sc headcount365 year, c(l) msiz(small))  ///
	         (sc headcount685 year, c(l) msiz(small)), ///
	         by(reg,  title("`title'", si(med))        ///
	         	note("Source: pip", si(vsmall)) graphregion(c(white))) ///
	         ylabel(, format(%2.0f)) ///
	         xlab(1990(5)2019 , labsi(vsmall)) xti("Year", si(vsmall))     ///
	         ylab(0(25)100, labsi(vsmall) angle(0))                        ///
	         yti("Poverty headcount (%)", si(vsmall))                      ///
	         leg(order(1 "$2.15" 2 "$3.65" 3 "$6.85") r(1) si(vsmall))        ///
	         sub(, si(small))	scheme(s2color)
{txt}      ({stata "pip_examples pip_example07":click to run})

{phang2}
{ul:4.3} Graph of population distribution across income categories in Latin America, by country

{cmd}
	  pip, region(lac) year(last) povline(2.15 3.65 6.85) clear 
	  keep if welfare_type==2 & year>=2014             // keep income surveys
	  keep poverty_line country_code country_name year headcount
	  replace poverty_line = poverty_line*100
	  replace headcount = headcount*100
	  tostring poverty_line, replace format(%12.0f) force
	  reshape wide  headcount,i(year country_code country_name ) j(poverty_line) string
    
  	  gen percentage_0 = headcount215
	  gen percentage_1 = headcount365 - headcount215
	  gen percentage_2 = headcount685 - headcount365
	  gen percentage_3 = 100 - headcount685
	
	  keep country_code country_name year  percentage_*
	  reshape long  percentage_,i(year country_code country_name ) j(category) 
	  la define category 0 "Extreme poor (< $2.15)" 1 "Poor LIMIC ($2.15-$3.65)" ///
		                 2 "Poor UMIC ($3.65-$6.85)" 3 "Non-poor (> $6.85)"
	  la val category category
	  la var category ""

	  local title "Distribution of Income in Latin America and Caribbean, by country"
	  local note "Source: World Bank PIP, using the latest survey after 2014 for each country."
	  local yti  "Population share in each income category (%)"

	  graph bar (mean) percentage, inten(*0.7) o(category) o(country_code, ///
	    lab(labsi(small) angle(vertical)) sort(1) descending) stack asy                      /// 
	  	blab(bar, pos(center) format(%3.1f) si(tiny))                     /// 
	  	ti("`title'", si(small)) note("`note'", si(*.7))                  ///
	  	graphregion(c(white)) ysize(6) xsize(6.5)                         ///
	  		legend(si(vsmall) r(3))  yti("`yti'", si(small))                ///
	  	ylab(,labs(small) nogrid angle(0)) scheme(s2color)
{txt}      ({stata "pip_examples pip_example03":click to run})


{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}



{marker misc_detail}{...}
{hline}
{center:{bf:Miscellaneous information}}
{hline}

{marker general_options_detail}{...}
{title:General options}
{err:TO BE ADDED}


{marker memory}{...}
{title:Memory use and frames}:

{pstd}
{cmd:pip} makes use of the `frames` feature--available since Stata 16--to store a lot of information in memory. This is partly the reason why the first call of pip in a new Stata session is slower compared to subsequent calls. When closing Stata, you may see a pop-up 
message reading {bf:"Frames in memory have changed"}. That is perfectly normal and should not cause any concern. 
However, make sure you save the frames that you created and wish to keep. You can do that by typing {stata frames dir}. 
Frames created by {cmd:pip} are prefixed by {it:_pip} and are marked by an {it:*}, meaning they have not been saved. If you do not wish to save any frames in use, just click "Exit without saving." You can also delete all PIP data in memory using the command {stata pip cleanup}. {err:TO BE completed}


{marker return}{...}
{title:Stored results}{p 50 20 2}{p_end}

{pstd}
{cmd:pip} stores the following in {cmd:r()}. Suffix _{it:#} is a count of the
poverty line included in {it:povlines()}:

{p2col 5 20 24 2: queries}{p_end}
{synopt:{cmd:r(query_ys_{it:#})}}Years{p_end}
{synopt:{cmd:r(query_pl_{it:#})}}Poverty lines{p_end}
{synopt:{cmd:r(query_ct_{it:#})}}Countries{p_end}
{synopt:{cmd:r(query_cv_{it:#})}}Coverages{p_end}
{synopt:{cmd:r(query_ds_{it:#})}}Whether aggregation was used{p_end}
{synopt:{cmd:r(query_{it:#})}}Concatenation of the queries above{p_end}

{p2col 5 20 24 2: API parts}{p_end}
{synopt:{cmd:r(server)}}Protocol (http://) and server name{p_end}
{synopt:{cmd:r(site_name)}}Site names{p_end}
{synopt:{cmd:r(handler)}}Action handler{p_end}
{synopt:{cmd:r(base)}}Concatenation of server, site_name, and handler{p_end}

{p2col 5 20 24 2: additional info}{p_end}
{synopt:{cmd:r(queryfull_{it:#})}}Complete query{p_end}
{synopt:{cmd:r(npl)}}Total number of poverty lines{p_end}
{synopt:{cmd:pip_query}}Global macro with query information in case {cmd:pip} fails. 
"${pip_query}" to display {p_end}

{marker list}{...}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
{title:List of pip and povcalnet variables}{p 50 20 2}{p_end}

{pstd}
The following list compares the variables names available in {cmd:pip} with its predecessor command {cmd:povcalnet}.
Only the variables available in povcalnet are listed.

		{hline 43}
		pip variable    {col 40}povcalnet variable
		{hline 20}{col 40}{hline 20}
		country_code     {col 40}countrycode
		country_name     {col 40}countryname
		region_code      {col 40}regioncode
		year             {col 40}year
		welfare_time     {col 40}datayear
		welfare_type     {col 40}datatype
		poverty_line     {col 40}povertyline
		mean             {col 40}mean
		headcount        {col 40}headcount
		poverty_gap      {col 40}povgap
		poverty_severity {col 40}povgapsqr
		watts            {col 40}watts 
		gini             {col 40}gini
		median           {col 40}median
		mld              {col 40}mld
		polarization     {col 40}polarization
		population       {col 40}population
		decile1          {col 40}decile1
		decile2          {col 40}decile2
		decile3          {col 40}decile3
		decile4          {col 40}decile4
		decile5          {col 40}decile5
		decile6          {col 40}decile6
		decile7          {col 40}decile7
		decile8          {col 40}decile8
		decile9          {col 40}decile9
		decile10         {col 40}decile10		
		ppp              {col 40}ppp
		is_interpolated  {col 40}isinterpolated
		distribution_type {col 40}usemicrodata
		survey_coverage  {col 40}coveragetype
		{hline 43}



{marker general_troubleshooting}{...}
{title: General Troubleshooting}

{p 4 4 2} 
In case {cmd:pip} is not working correctly, try the following steps in order
{p_end}

{pmore} 1. Uninstall {cmd:pip} by typing  {cmd: pip uninstall}
	
{pmore} 2. Execute {cmd:which pip}. If {cmd:pip} is still installed, delete all
the {cmd:pip} files from wherever they are in your computer until the command above returns error. The idea is to leave no trace of {cmd:pip} in your computer. 
 
{pmore} 3. Install {cmd:pip} again with the following code and check the version number. It should be the same as the most {browse "https://github.com/worldbank/pip/releases":recent release}

	{cmd}
		github install worldbank/pip
		discard
		which pip
	{txt}

{pmore} 4. Try to run it again and see if {cmd:pip} fails. 

{pmore} 5. If it is still failing, open a new issue in the {browse "https://github.com/worldbank/pip/issues":GitHub issues page}, making sure 
you're adding all the necessary steps to reproduce the problem. 

{pmore} 6. Once the issue is created, run the code below--making sure you replace the commented line--and send the test.log file, along with the issue
number created in the previous step, to {browse "pip@worldbank.org":pip@worldbank.org}. 

	{cmd}
		log using "test.log", name(pip_test) text replace {result:// this is in your cd}
		cret list
		clear all
		which pip
		set tracedepth 4
		set traceexpand on 
		set traceindent on 
		set tracenumber on
		set trace on
		{result} /* the pip command that is failing. e.g.,
		cap noi pip, region(EAP) year(last) clear */
		{cmd}set trace off
		log close pip_test
	{txt}


{marker disclaimer}{...}
{title:Disclaimer}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}

{p 4 4 2}To calculate global poverty estimates, survey-year estimates are extrapolated
or interpolated to a common reference year. These extrapolations and interpolations require
additional assumptions, namely that (a) growth in household income or consumption can be
approximated by growth in national accounts and (b) all parts of the distribution grow at
the same rate. Given these assumptions, users are cautioned against using reference-year
estimates (available using the fillgaps option) for comparing a country's poverty trend over time.
For that purpose, users should rely on the survey-year estimates and are advised to take into
account breaks in survey comparability. For details on the methodology please visit the
{browse "https://worldbank.github.io/PIP-Methodology/":PIP Methodology Handbook} and the {browse "https://pip.worldbank.org/publication":Global Poverty Monitoring Technical Notes}.
{p_end}

{p 4 4 2}The term country, used interchangeably with economy, does not imply political independence
but refers to any territory for which authorities report separate social or economic statistics.
{p_end}


{marker references}{...}
{title:References}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}

{p 4 8 2}Castaneda Aguilar, R.Andres, T. Fujs, C. Lakner, S. K. Tetteh-Baah(2023)
"Estimating Global Poverty in Stata: The PIP command", 
Global Poverty Monitoring Technical Notes, World Bank, Washington, DC{p_end}

{marker acknowled}{...}
{title:Acknowledgments}
{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}

{pstd}
The author would like to thank Tefera Bekele Degefu, Ifeanyi Nzegwu Edochie, Tony Fujs, 
Dean Jolliffe, Daniel Mahler, Minh
Cong Nguyen, Christoph Lakner, Marta Schoch, Samuel Kofi Tetteh Baah, Martha Viveros, Nishan Yonzan,
and Haoyu Wu for comments received on earlier versions of this code. This command builds on the earlier
povcalnet command, which was developed with the help of Espen Prydz, Jorge Soler Lopez, Ruoxuan Wu and Qinghua Zhao. 

{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}
{marker authors}{...}
{title:Author}
{p 4 4 4}R.Andres Castaneda, The World Bank{p_end}
{p 6 6 4}Email: {browse "acastanedaa@worldbank.org":  acastanedaa@worldbank.org}{p_end}
{p 6 6 4}GitHub:{browse "https://github.com/randrescastaneda": randrescastaneda }{p_end}

{title:Contributor}
{pstd}
Tefera Bekele Degefu

{title:Maintainer}
{p 4 4 4}PIP Technical Team, The World Bank{p_end}
{p 6 6 4}Email: {browse "pip@worldbank.org":  pip@worldbank.org}{p_end}

{marker contact}{...}
{title:Contact}
{pstd}
Any comments, suggestions, or bugs can be reported in the 
{browse "https://github.com/worldbank/pip/issues":GitHub issues page}.
All the files are available in the {browse "https://github.com/worldbank/pip":GitHub repository}

{marker howtocite}{...}
{title:Thanks for citing this Stata command as follows}

{p 4 8 2}Castaneda, R.Andres. (2023) 
"pip: Stata Module to Access World Bank’s Global Poverty and Inequality Data" 
				(version 0.9.0). Stata. Washington, DC: World Bank Group.
        https://worldbank.github.io/pip/ {p_end}

{title:Thanks for citing {cmd:pip} data as follows}

{p 4 8 2} World Bank. (2022). Poverty and Inequality Platform (version {version_ID}) 
[Data set]. World Bank Group. www.pip.worldbank.org. Accessed  {date}{p_end}

{p 4 8 2}Available version_IDs:{p_end}
{p 4 8 2}2017 PPPs: 20220909_2017_01_02_PROD{p_end}
{p 4 8 2}2011 PPPs: 20220909_2011_02_02_PROD{p_end}

{pstd}
Please make reference to the date when the database was downloaded, as statistics may change.

{p 40 20 2}(Go up to {it:{help pip##sections:Sections Menu}}){p_end}




