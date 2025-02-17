getParticipantTraining <- function(group, participant) {
  
  AL_file <- sprintf('data/%s/%s/%s_aligned_training.csv', group, participant, participant)
  RO_file <- sprintf('data/%s/%s/%s_rotated_training.csv', group, participant, participant)
  
  AL_df <- read.csv(file=AL_file,
                    stringsAsFactors = F)
  RO_df <- read.csv(file=RO_file, 
                    stringsAsFactors = F)
  
  return(list('aligned' = AL_df, 
              'rotated' = RO_df))
}


getGroupTraining <- function(group) {
  
  participants <- groupParticipants(group = group)
  print(participants)
  
  for (participant in participants[c(1:3)]) {
    
    participant_df <- getParticipantTraining(group = group, participant = participant)
  
    
    baseline <- getBaseline(df = participant_df[['aligned']])
  }
  
}


getBaseline <- function(df) {
  df <- df[which(df$trial_num %in% c(31:45)),]
  str(df)
  
  #rialnos <-
  
  
  
  
}

