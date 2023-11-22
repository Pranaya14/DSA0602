# Load necessary libraries
library(tm)
library(wordcloud)
# Load your dataset (replace 'feedback_data.csv' with your file)
feedback <- read.csv("C:/Users/DELL/Documents/Downloads/archive (4)/feedback_data.csv"(5), stringsAsFactors = FALSE)

# Create a corpus from the feedback text
corpus <- Corpus(VectorSource(feedback$FeedbackColumn)) # Replace 'FeedbackColumn' with the actual column containing feedback

# Text preprocessing
corpus <- tm_map(corpus, content_transformer(tolower)) # Convert text to lowercase
corpus <- tm_map(corpus, removePunctuation) # Remove punctuation
corpus <- tm_map(corpus, removeNumbers) # Remove numbers
corpus <- tm_map(corpus, removeWords, stopwords("english")) # Remove common stopwords
corpus <- tm_map(corpus, stemDocument) # Stemming

library(SentimentAnalysis)
sentiment <- analyzeSentiment(corpus)

# Create a word frequency matrix or term-document matrix
tdm <- TermDocumentMatrix(corpus)
word_freq <- as.matrix(tdm)
word_freq <- sort(rowSums(word_freq), decreasing = TRUE)

# Generate word cloud based on sentiment or frequency
wordcloud(words = names(word_freq), freq = word_freq,
          min.freq = 5, max.words = 100, random.order = FALSE,
          colors = brewer.pal(8, "Dark2"))
