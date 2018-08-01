//
//  QuestionUSGov.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/25/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation

class USGov {
    
    var ReviewQList = [Question]()
    
    init() {
        
        [
        Question(Question: "What is the supreme law of the land?", WrongAnswers: ["the Magna Carta", "the Constitution", "the Declaration of Independence", "the Treaty of Paris"], CorrectAnswers: ["the Constitution"]),
        //here
        Question(Question: "What does the Constitution do?", WrongAnswers: ["overrides the Declaration of Independence", "states the Supreme Court's abilities", "protects the president"], CorrectAnswers: ["defines the government", "sets up the government", "protects the basic rights of Americans"]),
        Question(Question: "The idea of self-government is in the first three words of the Constitution. What are these words?", WrongAnswers: ["Congress shall make", "We the British", "We the Colonists"], CorrectAnswers: ["We the People"]),
        //here
        Question(Question: "What is an amendment?", WrongAnswers: ["a punishment for Supreme Court judges", "a correction to the Declaration of Independence", "a formal removal of rights from people"], CorrectAnswers: ["a change to the constiution", "an addition to the constitution"]),
        Question(Question: "What do we call the first ten amendments to the Constitution?", WrongAnswers: ["the Bill of Liberties", "the Ten Commandments", "the Ten"], CorrectAnswers: ["the Bill of Rights"]),
        //5
            //here
        Question(Question: "What is one right or freedom from the First Amendment?", WrongAnswers: ["beauty", "luxury", "simplicity"], CorrectAnswers: ["assembly", "religion", "speech", "press", "petition the government"]),
        Question(Question: "How many amendments does the constitution have?", WrongAnswers: ["10", "20", "22"], CorrectAnswers: ["27"]),
        //here
        Question(Question: "What did the Declaration of Independence do?", WrongAnswers: ["declared that Great Britain was our mother country", "announced the inauguration of George Washington", "stated the people's rights"], CorrectAnswers: ["said that the United States is free from Great Britain","announced our independence", "declared our indpendence"]),
        //here
        Question(Question: "What are two rights in the Declaration of Independence", WrongAnswers: ["life and luxury", "money and the pursuit of happiness", "opportunity and occupation"], CorrectAnswers: ["life and liberty", "liberty and the pursuit of happiness", "life and the pursuit of happiness"]),
        Question(Question: "What is freedom of religion?", WrongAnswers: ["one must practice a religious of choice", "one must not practice religion", "one must practice a specific religion"], CorrectAnswers: ["one can practice any religion or none"]),
        //10
            //here
            Question(Question: "What is the economic system in the United States?", WrongAnswers: ["mixed economy", "pure command economy", "traditional economy"], CorrectAnswers: ["capitalist economy","market economy"]),
            //here
        Question(Question: "What is the 'rule of law'?", WrongAnswers: ["citizens must obey the law", "landowners must obey the law", "the wealthy must obey the law"], CorrectAnswers: ["everyone must obey the law", "leaders must obey the law", "government must obey the law", "no one is above the law"]),
        //here
        Question(Question: "Name one branch or part of the government.", WrongAnswers: ["the citizens", "the Constitution", "the Thirteen original colonies"], CorrectAnswers: ["Congress","legislative","President","executive","the courts","judicial"]),
        //here
        Question(Question: "What stops one branch of government from becoming too powerful?", WrongAnswers: ["Great Britain's parliament", "the citizen's powers", "starts and stops"], CorrectAnswers: ["checks and balances","separation of powers"]),
        Question(Question: "Who is in charge of the executive branch?", WrongAnswers: ["the Secretary of State", "the Speaker of the House", "the head judge"], CorrectAnswers: ["the President"]),
        //15
        Question(Question: "Who makes federal laws?", WrongAnswers: ["the President", "the Vice President", "the citizens"], CorrectAnswers: ["Congress","Senate and House","legislature"]),
        //here
        Question(Question: "What are the two parts of the U.S. Congress?", WrongAnswers: ["the Secretary of State and the Supreme Court judge", "the citizens and their counterparts", "the President and the Vice President"], CorrectAnswers: ["Senate and House"]),
        Question(Question: "How many U.S. Senators are there?", WrongAnswers: ["20", "25", "50"], CorrectAnswers: ["100"]),
        Question(Question: "We elect a U.S. Senator for how many years?", WrongAnswers: ["1", "2", "10"], CorrectAnswers: ["6"]),
        //here
            
            
            
            //yiikes
        Question(Question: "Who is one of your state's U.S. Senators now?", WrongAnswers: ["President Trump", "Senator Johnson", "Hilary Clinton"], CorrectAnswers: ["Elizabeth Warren"]),
        //20
        Question(Question: "The House of Representatives has how many voting members?", WrongAnswers: ["50", "235", "355"], CorrectAnswers: ["435"]),
        Question(Question: "We elect a U.S. Representative for how many years?", WrongAnswers: ["1","4", "8"], CorrectAnswers: ["2"]),
        Question(Question: "Name your U.S. Representative.", WrongAnswers: ["Ed Markey", "Cristiano Ronaldo", "Emily Ohn"], CorrectAnswers: ["Niki Tsongas"]),
        Question(Question: "Who does a U.S. Senator represent?", WrongAnswers: ["the people of the nation", "all people", "the concerns of the city"], CorrectAnswers: ["all people of the state"]),
        //here
        Question(Question: "Why do some states have more Representatives than other states?", WrongAnswers: ["the state's importance", "the state's history", "the number of counties"], CorrectAnswers: ["the state's population","because they have more people","because some states have more people"]),
        //25
        Question(Question: "We elect a president for how many years?", WrongAnswers: ["8", "13", "16"], CorrectAnswers: ["4"]),
        Question(Question: "In what month do we vote for President?", WrongAnswers: ["Janurary", "March", "December"], CorrectAnswers: ["November"]),
        //here
        Question(Question: "What is the name of the President of the United States now?", WrongAnswers: ["Hilary Clinton", "Bill Clinton", "Barack Obama"], CorrectAnswers: ["Donald Trump", "Trump"]),
        //here
        Question(Question: "What is the name of the Vice President of the United States now?", WrongAnswers: ["Donald Trump", "Ronald Reagan", "Joe Biden"], CorrectAnswers: ["Mike Pence", "Pence"]),
        Question(Question: "If the President can no longer serve, who becomes President?", WrongAnswers: ["the Speaker of the House", "The President's first born child", "the First Lady"], CorrectAnswers: ["the Vice President"]),
        //30
        Question(Question: "If both the President and the Vice President can no longer serve, who becomes President?", WrongAnswers: ["the President's delegate", "the Secretary of War", "the First Lady"], CorrectAnswers: ["The Speaker of the House"]),
        Question(Question: "Who is the Commander in Chief of the military?", WrongAnswers: ["the Secretary of Defense", "the Secretary of the Interior", "the Vice President"], CorrectAnswers: ["the President"]),
        Question(Question: "Who signs bills to become laws?", WrongAnswers: ["the Congress", "the Secretary of State", "the Vice President"], CorrectAnswers: ["the President"]),
        Question(Question: "Who vetoes bills?", WrongAnswers: ["the Veto-er", "the Secretary of State", "Congress"], CorrectAnswers: ["the President"]),
        Question(Question: "What does the President's Cabinet do?", WrongAnswers: ["stores items", "overrides his/her decisions", ""], CorrectAnswers: ["advises the President"]),
        
        //35
        Question(Question: "Which is a Cabinet-level position?", WrongAnswers: ["President", "Congress", ""], CorrectAnswers: ["Secretary of Agriculture","Secretary of Commerce","Secretary of Defense","Secretary of Education","Secretary of Energy","Secretary of Health and Human Services","Secretary of Homeland Security","Secretary of Housing and Urban Development","Secretary of the Interior","Secretary of Labor","Secretary of State","Secretary of Transportation","Secretary of the Treasury","Secretary of Veterans Affairs","Attorney General", "Vice President"]),
        Question(Question: "What does the judicial branch do?", WrongAnswers: ["creates laws", "vetoes bills", "declares war"], CorrectAnswers: ["reviews laws", "explains laws","resolves disputes", "decides if a law goes against the Constitution"]),
        Question(Question: "What is the highest court in the United States", WrongAnswers: ["Denali tennis courts", "the Judicial Court", "the Executive branch"], CorrectAnswers: ["the Supreme Court"]),
        Question(Question: "How many justices are on the Supreme Court?", WrongAnswers: ["4", "5", "8"], CorrectAnswers: ["9"]),
        Question(Question: "Who is the Chief Justice of the United States now?", WrongAnswers: ["Justine Cheng", "Bill Clinton", "Ruth Bader Ginsburg"], CorrectAnswers: ["John Roberts"]),
        //40
        Question(Question: "Under our Constitution, some powers belong to the federal government. What is one power of the federal government?", WrongAnswers: ["to boss around the President", "to add new states", "to judge the constitutionality of something"], CorrectAnswers: ["to print money","to declare war","to create an army","to make treaties"]),
        Question(Question: "Under our Constitution, some powers belong to the states. What is one power of the states?", WrongAnswers: ["to declare a law as unconstitutional", "to print money", "to create an army"], CorrectAnswers: ["provide schooling and education","provide protection","provide safety"," give a driver's license","approve zoning and land use"]),
        Question(Question: "Who is the Governor of your state now?", WrongAnswers: ["Joe Smith", "Madonna", "Bill Clinton"], CorrectAnswers: ["Charlie Baker"]),
        Question(Question: "What is the captital of your state?", WrongAnswers: ["California", "The Star Spangled Banner", "Moscow", "Beijing"], CorrectAnswers: ["Boston"]),
        Question(Question: "What are the two major political parties in the United States?", WrongAnswers: ["Progressive and Republican", "Democratic and Green", "Democratic and Libertarian"], CorrectAnswers: ["Democratic and Republican"]),
        //45
        Question(Question: "What is the political party of the President now?", WrongAnswers: ["Free Soil", "Libertarian", "Democratic party"], CorrectAnswers: ["Republican", "Republican party"]),
        Question(Question: "What is the name of the Speaker of the House of Representatives now?", WrongAnswers: ["Chris Pratt", "Mike Pence", "Joe Jonas"], CorrectAnswers: ["Paul Ryan"]),
        Question(Question: "There are four amendments to the Constitution about who can vote. Describe one of them.", WrongAnswers: ["all property owners can vote", "white males can vote", "only those above the poverty line can vote","poll tax must be paid to vote"], CorrectAnswers: ["citizens 18 and older can vote","no poll tax to vote","any citizen can vote","a male citizen of any race can vote"]),
        Question(Question: "What is one responsibility that is only for United States citizens?", WrongAnswers: ["to shower at least every other day", "to call their state representatives", "create laws"], CorrectAnswers: ["serve on a jury","vote in a federal election"]),
        Question(Question: "Name one right only for United States citizens.", WrongAnswers: ["run for President", "voting in elections", "freedom of speech"], CorrectAnswers: ["run for federal office","vote in a federal election"]),
        //50
        Question(Question: "What is a right of everyone living in the United States?", WrongAnswers: ["freedom of nullification", "freedom to vote", "freedom of food"], CorrectAnswers: ["freedom of expression","freedom of speech","freedom of assembly","freedom to petition the government","freedom of religion","the right to bear arms"]),
        Question(Question: "What do we show loyalty to when we say the Pledge of Allegiance?", WrongAnswers: ["the President", "our capital", "our allies"], CorrectAnswers: ["the United States","the flag"]),
        Question(Question: "What is one promise you make when you become a United States citizen?", WrongAnswers: ["never commit a crime", "live independently", "take care of the next generation"], CorrectAnswers: ["give up loyalty to other countries","defend the Constitution and law of the United States","obey the laws of the United States","serve in the U.S. military","serve the nation","be loyal to the United States"]),
        Question(Question: "How old do citizens have to be to vote for President?", WrongAnswers: ["16", "22", "35"], CorrectAnswers: ["18"]),
        Question(Question: " What is a way that Americans can participate in their democracy?", WrongAnswers: ["create violence for a cause", "join the Democratic party", "sacrifice their liberties"], CorrectAnswers: ["vote","join a political party","help with a campaign","join a civic group","join a community group","give an elected official your opinion on an issue","call Senators and Representatives","publicly support or oppose an issue or policy","run for office","write to a newspaper"]),
        //55
        Question(Question: "When is the last day you can send in federal income tax forms?", WrongAnswers: ["April 7th", "November 22nd", "May 1st"], CorrectAnswers: ["April 15th"]),
        Question(Question: " When must all men register for the Selective Service? ", WrongAnswers: ["at 26", "at 30", "before 18", "35"], CorrectAnswers: ["at 18","between 18 and 26","18"]),
        Question(Question: "What is one reason colonists came to America?", WrongAnswers: ["the gold rush", "warmer weather", "technological advancements"], CorrectAnswers: ["freedom","political liberty","religious freedom","economic opportunity","practice their religion","escape persecution"]),
        Question(Question: "Who lived in America before the Europeans arrived?", WrongAnswers: ["the Spanish", "Russians", "Chinese"], CorrectAnswers: ["American Indians","Native Americans"]),
        Question(Question: "What group of people was taken to America and sold as slaves?", WrongAnswers: ["Hispanics", "Filipinos", "Jews"], CorrectAnswers: ["Africans"]),
        //60
        Question(Question: "Why did the colonists fight the British?", WrongAnswers: ["the British drafted the colonists", "the Queen angered the US President", "the Constituion said to"], CorrectAnswers: ["high taxes","taxation without representation","because the British army stayed in their houses","quartering","because they didn't have self-government"]),
        Question(Question: "Who wrote the Declaration of Independence?", WrongAnswers: ["Caesar", "Hamilton", "John Adams"], CorrectAnswers: ["Thomas Jefferson","Jefferson"]),
        Question(Question: "When was the Declaration of Independence adopted?", WrongAnswers: ["July 4, 1775", "July 17, 2000", "December 25, 2018"], CorrectAnswers: ["July 4, 1776"]),
        Question(Question: "There were 13 original states. Name one. **3 needed on the test", WrongAnswers: ["Alabama", "Michigan", "California"], CorrectAnswers: ["New Hampshire","Massachusetts","Rhode Island","Connecticut","New York","New Jersey","Pennsylvania","Delaware","Maryland","Virginia","North Carolina","South Carolina","Georgia"]),
        Question(Question: "What happened at the Constitutional Convention?", WrongAnswers: ["the Constitution was burned", "the Declaration of Independence was signed", "the US gained freedom"], CorrectAnswers: ["the Constitution was written","the Founding Fathers wrote the Constitution"]),
        //65
        Question(Question: "When was the Constitution written?", WrongAnswers: ["1776", "1887", "2002"], CorrectAnswers: ["1787"]),
        Question(Question: "The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.", WrongAnswers: ["George Washington", "Benjamin Franklin", "Kevin Jonas"], CorrectAnswers: ["James Madison","Alexander Hamilton","John Jay","Publius"]),
        Question(Question: "What is one thing Benjamin Franklin is famous for?", WrongAnswers: ["invented electricity", "wrote the Constitution", "was President of the US"], CorrectAnswers: ["U.S. diplomat","oldest member of the Constitutional Convention","first Postmaster General of the United States","writer of 'Poor Richard's Almanax'","started the first free libraries"]),
        Question(Question: "Who is the “Father of Our Country”?", WrongAnswers: ["Ben Franklin", "John Adams", "Alexander Hamilton"], CorrectAnswers: ["George Washington"]),
        Question(Question: "Who was the first President?", WrongAnswers: ["Leonardo DiCaprio", "Abraham Lincoln", "John Jay"], CorrectAnswers: ["George Washington"]),
        //70
        Question(Question: "What territory did the United States buy from France in 1803?", WrongAnswers: ["Montana", "California and Oregon", "the Oregon Territory"], CorrectAnswers: ["Louisiana","the Louisiana Territory"]),
        Question(Question: "Name one war fought by the United States in the 1800s.", WrongAnswers: ["Revolutionary War", "World War I", "World War II"], CorrectAnswers: ["War of 1812","Mexican-American War","Civil War","Spanish-American War"]),
        Question(Question: "Name the U.S. war between the North and the South.", WrongAnswers: ["North and South War", "the War of 1812", "the War on Drugs"], CorrectAnswers: ["the Civil War","the War between the States"]),
        Question(Question: "Name one problem that led to the Civil War.", WrongAnswers: ["religious differences", "drug dispute", "favoritism of the government"], CorrectAnswers: ["slavery","economic reasons","states' rights"]),
        Question(Question: "What was one important thing that Abraham Lincoln did?", WrongAnswers: ["was a US diplomat", "signed the Declaration of Independence", "fought for the Revolution"], CorrectAnswers: ["freed the slaves","Emancipation Proclamation","preserved the Union","led the United States during the Civil War"]),
        //75
        Question(Question: "What did the Emancipation Proclamation do?", WrongAnswers: ["stated that slaves were property", "declared our independence from England", "treaty between slaves and the general population"], CorrectAnswers: ["freed the slaves","freed the slaves in the Confederacy","freed slaves in the Confederate States","freed slaves in most Southern states"]),
        Question(Question: "What did Susan B. Anthony do?", WrongAnswers: ["inventor of women's products", "the first female model", "wrote the Emancipation Proclamation"], CorrectAnswers: ["fought for women's rights","fought for civil rights"]),
        Question(Question: "Name one war fought by the United States in the 1900s.", WrongAnswers: ["Civil War", "Revolutionary War", "French and Indian War"], CorrectAnswers: ["World War I","World War II","Korean War","Vietnam War","Gulf War"]),
        Question(Question: "Who was President during World War I?", WrongAnswers: ["Thomas Jefferson", "Theodore Roosevelt", "Franklin D. Roosevelt"], CorrectAnswers: ["Woodrow Wilson"]),
        Question(Question: "Who was President during the Great Depression and World War II?", WrongAnswers: ["Woodrow Wilson", "Ben Franklin", "Abraham Lincoln"], CorrectAnswers: ["Franklin Roosevelt","Roosevelt"]),
        //80
        Question(Question: "Who did the United States fight in World War II?", WrongAnswers: ["England", "the French and Indians", "Germany and Austria-Hungary"], CorrectAnswers: ["Japan, Germany, and Italy"]),
        Question(Question: "Before he was President, Eisenhower was a general. What war was he in?", WrongAnswers: ["Korean War", "Persian Gulf War", "the Civil War"], CorrectAnswers: ["World War II"]),
        Question(Question: "During the Cold War, what was the main concern of the United States?", WrongAnswers: ["global warming", "Democracy", "Hitler"], CorrectAnswers: ["Communism"]),
        Question(Question: "What movement tried to end racial discrimination?", WrongAnswers: ["women's rights movement", "free the animals movement", "anti-Communist movement"], CorrectAnswers: ["civil rights movement","civil rights"]),
        Question(Question: "What did Martin Luther King, Jr. do?", WrongAnswers: ["freed the slaves", "first black singer in the US", "gave the famous 'House Divided' speech"], CorrectAnswers: ["fought for civil rights","worked for equality for all Americans"]),
        //85
        Question(Question: "What major event happened on September 11, 2001, in the United States?", WrongAnswers: ["the Treaty of Paris was signed", "the first Mac was released", "the new President was inaugurated"], CorrectAnswers: ["terrorists attacked the Unites States","terrorist attack"]),
        Question(Question: "Name one American Indian tribe in the United States.", WrongAnswers: ["Chappoquiditch", "Appalacheia", "Maliseetaw"], CorrectAnswers: ["Cherokee","Navajo","Sioux","Chippewa","Choctaw","Pueblo","Apache","Iroquois","Creek","Blackfeet","Seminole","Cheyenne","Arawak","Shawnee","Mohegan","Huron","Oneida","Lakota","Crow","Teton","Hopi","Inuit"]),
        Question(Question: "Name one of the two longest rivers in the United States.", WrongAnswers: ["Connecticut River", "Yangtze River", "Nile River"], CorrectAnswers: ["Missouri River","Mississippi River"]),
        Question(Question: "What ocean is on the West Coast of the United States?", WrongAnswers: ["Atlantic", "Indian Ocean", "Mediterranean Sea"], CorrectAnswers: ["Pacific","Pacific Ocean"]),
        Question(Question: "What ocean is on the East Coast of the United States?", WrongAnswers: ["Pacific", "Arctic Ocean", "Southern Ocean"], CorrectAnswers: ["Atlantic","Atlantic Ocean"]),
        //90
        Question(Question: "Name one U.S. territory.", WrongAnswers: ["Mexico", "the Bahamas", "Antarctica"], CorrectAnswers: ["Puerto Rico","U.S. Virgin Islands","American Samoa","Norther Mariana Islands","Guam"]),
        Question(Question: "Name one state that borders Canada.", WrongAnswers: ["Massachusetts", "Maryland", "Oregon"], CorrectAnswers: ["Main","New Hampshire","Vermont","New York","Pennsylvania","Ohio","Michigan","Minnesota","North Dakota","Montana","Idaho","Washington","Alaska"]),
        Question(Question: "Name one state that borders Mexico.", WrongAnswers: ["Nevada", "Georgia", "Oklahoma"], CorrectAnswers: ["California","Arizona","New Mexico","Texas"]),
        Question(Question: "What is the capital of the United States?", WrongAnswers: ["Boston, MA", "Los Angeles, CA", "New York City, NY"], CorrectAnswers: ["Washington, D.C."]),
        Question(Question: "Where is the Statue of Liberty", WrongAnswers: ["California", "Massachusetts", "Hawaii"], CorrectAnswers: ["New York","Liberty Island"]),
        //95
        Question(Question: "Why does the flag have 13 stripes?", WrongAnswers: ["13 is lucky", "they represent the 13 Founding Fathers", "the US had 13 presidents when the flag was created"], CorrectAnswers: ["they represent the 13 original colonies","because there were 13 original colonies"]),
        Question(Question: "Why does the flag have 50 stars?", WrongAnswers: ["50 year anniversary of US", "50 signatures on the Declaration of Independence", "50 years since World War II"], CorrectAnswers: ["one star for each state","each star represents a state","there are 50 states"]),
        Question(Question: "What is the name of the national anthem?", WrongAnswers: ["The Pledge of Allegiance", "God Save the Queen", "Like a Prayer"], CorrectAnswers: ["The Star-Spangled Banner"]),
        Question(Question: "When do we celebrate Independence Day?", WrongAnswers: ["July 2", "May 1", "May 4"], CorrectAnswers: ["July 4"]),
        Question(Question: "Name a national U.S. holiday. **Need 2 on test", WrongAnswers: ["Halloween", "National Ice Cream Day", "Children's day"], CorrectAnswers: ["New Year's Day","Martin Luther King, Jr. Day","President's Day","Memorial Day","Independence Day","Labor Day","Columbus Day","Veterans Day","Thanksgiving","Christmas"]),
        //100!
         
         
        ].forEach { (question) in
            ReviewQList.append(question)
        }
        
    }
}
