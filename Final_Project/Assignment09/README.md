# Analysis of Rat Observational Behavior 

## Biological Question
Do rats learn tasks by watching others complete them?

## Introduction

In this project, I aim to replicate the graphs and data put forth by Takano et al. Specifically, I wish to replicate their ANOVA tests and their graphs of the time for all days, as well as the data for rearing. Their study focused on the implications of rats observing others go through a maze and if it had an effect on their time to complete it and find the sucrose pellets. My goal for this project was to attempt to replicate their daily time graph, as well as their rearing graphs, and run an ANOVA between conditions.


<hr>

## Methods


 Studies have shown that rats are heavily influenced by the actions of others. They are a species that have been shown in studies to demonstrate empathy to other rats, as well as form intense social bonds. This study set out to see if rats were able to learn by observing others complete a task. This would determine the degree to which social learning affects their ability to navigate a maze in a quicker time with fewer errors. The findings of this study would further our understanding of learned behavior in rats, and potentially other species.

They had 2 sets of rats. There were the demonstrator/observer and the individual/waiting. The first set had the observer watch the demonstrator then run the maze itself. The second had the waiting rat run the maze after the individual, but did not watch them. They then calculated the time to find all 4 pellets in the arm of the maze over 30 days after training. The individual/waiting were the control for the experiments, and simply calculated how the effects of familiarity could affect the conditions in time taken to complete. They also calculated rearing as a measure of how much rats reared, a sign of confusion and inefficiency in searching for rats.

#### Type of data in this data set is time taken to complete the maze, days, and errors
Taken from Takano et al's experiment

 Excel format

The data is 130 kB with 285 lines of code I can use

 The first part of the data is not usable

#### What they did:
The authors ran ANOVA tests between the groups to discover significance of the groups on their time to complete the trials. To perform an ANOVA, they used the mean of each week between the groups. They graphed the time taken for each day between groups, plotting it into a regression. They also graphed the rearing of the rats, and made bars for it. Using inefficiency data, they plotted learning curves for the rats and made bars of error in the groups. Using time taken data, they tested the model using transit time for each day, and made a graph of the days for each group, with trend lines.

#### What I did
I used their daily time data for the observer and demonstrator groups and graphed it on a line graph. To do this, I created a data set of these groups and used ggplot to graph it out.
I used their rearing data to create box plots for each group in week 5 from their data using ggplot.
I performed group ANOVA tests for weeks 1 and 5, as well as t-tests between observers and demonstrators for weeks 1 and 5.
<hr>

## Results
In my code, I was able to replicate their results in the ANOVA test, finding significance between all the groups in weeks 1 and 5. I chose these weeks to see if the novelty or experience would affect results. The results were more significant with time, showing that the longer the experiment went on, the more the differences showed between the groups (.0492 in week one and .000263 in week five). I also performed a t-test just to see the same difference between only the observer and the demonstrator. In the first week, there was not a statistically significant difference between the two. But in the fifth week, the results were very statistically significant (.06644 and .000294 respectively). I wanted to see if there was a greater disparity between the beginning and ends of the tests, and I was able to observe these results.

I created a graph based on the daily time for the observer and demonstrator groups, as they interested me the most, and I wanted to make a novel graph. The graph showed that, nearly across the board, the observers were faster, showing that they were watching and observing the rats complete the task, and therefore learning from them. I also graphed the rearing data, which showed that the rats who observed had far fewer rearings on average in the last week, demonstrating less confusion and inefficiency. in the test. In all, I was able to replicate the results of Takano et al. and show that rats are able to learn by observing others, answering my question.

Rearing Graph: [Graph](https://i.imgur.com/wDnc5W6.png)
Time Graph: [Graph](https://i.imgur.com/pKgGHVt.png)

<hr>
## References 

Takano Y, Ukezono M, Nakashima SF, Takahashi N, Hironaka N (2017) Learning of efficient behaviour in spatial exploration through observation of behaviour of conspecific in laboratory rats. Royal Society Open Science 4(9): 170121. [https://doi.org/10.1098/rsos.170121](https://doi.org/10.1098/rsos.170121)

Takano Y, Ukezono M, Nakashima SF, Takahashi N, Hironaka N (2017) Data from: Learning of efficient behaviour in spatial exploration through observation of behaviour of conspecific in laboratory rats. Dryad Digital Repository. [https://doi.org/10.5061/dryad.3kg03](https://doi.org/10.5061/dryad.3kg03)
