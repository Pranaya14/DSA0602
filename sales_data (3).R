# Load necessary libraries
library(tm)
library(SentimentAnalysis)
library(wordcloud)

# Create a data frame with customer feedback
feedback <- data.frame(
  FeedbackText = c(
    "The product is fantastic and highly recommended!",
    "Not satisfied with the service, very disappointing.",
    "Great experience, wonderful product!",
    "Average quality, needs improvement.",
    "Excellent service and prompt delivery!",
    "1234"  # An example with only numbers
  )
)

# Create a Corpus from the feedback text
corpus <- Corpus(VectorSource(feedback$FeedbackText))

# Text preprocessing
corpus <- tm_map(corpus, content_transformer(tolower))  # Convert text to lowercase
corpus <- tm_map(corpus, removePunctuation)  # Remove punctuation
corpus <- tm_map(corpus, removeWords, stopwords("english"))  # Remove common stopwords
corpus <- tm_map(corpus, removeSparseTerms, sparse = 0.95)  # Remove infrequent terms

# Keep only documents with non-empty content after transformations
corpus <- tm_map(corpus, function(x) ifelse(nchar(as.character(x)) == 0, NA, x))
corpus <- corpus[!is.na(corpus)]

# Perform sentiment analysis
sentiment_scores <- analyzeSentiment(corpus)

# Create a word cloud based on sentiment or frequency
wordcloud(words = names(sentiment_scores), freq = sentiment_scores$Overall,
          min.freq = 1, max.words = 100, random.order = FALSE,
          colors = brewer.pal(8, "Dark2"))
