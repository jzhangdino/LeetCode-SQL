select question_id survey_log from survey_log
    group by question_id
    order by sum(action = 'answer')/sum(action = 'show') desc
    limit 1
