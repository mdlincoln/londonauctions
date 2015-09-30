#' Determine CV trends for a given set of sales
#'
#' @param df Filtered data frame of sales
#' @param n_days Number of top days to measure
#'
#' @return A data frame

peaks <- function(df) {
  df %>%
  # Only consider records that have price information
  filter(!(is.na(price_factor))) %>%
  group_by(year, yday, price_factor) %>%
  summarize(
    daily_count = n(),
    daily_sum = sum(transaction_amt),
    daily_avg = daily_sum/daily_count
  )
}

  # Calculate count, total, and average for every day of every year, grouped by
# price_factor


# Find the top-N days in terms of daily_count, daily_sum, and daily_avg
peak_n <- function(df, n_days) {
  peaks(df) %>%
    group_by(year, price_factor) %>%
    top_n(n_days, daily_count) %>%
    select(year, price_factor, yday, metric = daily_count) %>%
    ungroup()
}

peak_sum <- function(df, n_days) {
  peaks(df) %>%
    group_by(year, price_factor) %>%
    top_n(n_days, daily_sum) %>%
    select(year, price_factor, yday, metric = daily_sum) %>%
    ungroup()
}

peak_avg <- function(df, n_days) {
  peaks(df) %>%
    group_by(year, price_factor) %>%
    top_n(n_days, daily_avg) %>%
    select(year, price_factor, yday, metric = daily_avg) %>%
    ungroup()
}

all_peaks <- function(df, n_nays) {
  peak_n(df, n_days) %>% rename(count_day = yday) %>% group_by(year, price_factor) %>% summarize(count_cv = sd(count_day)/mean(count_day)) %>%
    left_join(peak_sum(df, n_days) %>% rename(sum_day = yday) %>% group_by(year, price_factor) %>% summarize(sum_cv = sd(sum_day)/mean(sum_day)), by = c("year", "price_factor")) %>%
    left_join(peak_avg(df, n_days) %>% rename(avg_day = yday) %>% group_by(year, price_factor) %>% summarize(avg_cv = sd(avg_day)/mean(avg_day)), by = c("year", "price_factor")) %>%
    gather(type, cv, count_cv, sum_cv, avg_cv)
}

# Run linear regressions to find corellation between the year and the spread of
# top auction days
peak_models <- function(df, n_days) {
  all_peaks(df, n_days) %>%
    group_by(price_factor, type) %>%
    do(lms = lm(year ~ cv, data = .)) %>%
    tidy(lms) %>%
    filter(term == "cv") %>%
    mutate(sig = p.value < 0.05) %>%
    ungroup()
}

cv_trends <- function(df, n_days = 7) {
  all_peaks(df, n_days) %>% inner_join(peak_models(df, n_days), by = c("price_factor", "type"))
}
