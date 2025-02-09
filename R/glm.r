#' Fit generalized linear model (glm) with disk.frame
#'
#' @inherit biglm::bigglm
#' 
#' @description  
#' Fits GLMs using {speedglm} or {biglm}. The return object will be exactly as
#' those return by those functions. This is a convenience wrapper
#'
#' @param glm_backend Which package to use for fitting GLMs. The default is
#'   {biglm}, which has known issues with factor level if different levels are
#'   present in different chunks. The {speedglm} is more robust, but does not
#'   implement `predict` which makes prediction and implementation impossible.
#'
#' @family Machine Learning (ML)
#' @export
#'
#' @examples
#' cars.df = as.disk.frame(cars)
#' m = dfglm(dist ~ speed, data = cars.df)
#'
#' # can use normal R functions
#' summary(m)
#' predict(m, get_chunk(cars.df, 1))
#' predict(m, collect(cars.df))
#'
#' # can use broom to tidy up the returned info
#' broom::tidy(m)
#'
#' # clean up
#' delete(cars.df)
dfglm <- function(formula, data, ..., glm_backend = c("biglm", "speedglm")) {
  #browser()
  glm_backend = match.arg(glm_backend)
  
  stopifnot(is_disk.frame(data))
  streaming_fn <- make_glm_streaming_fn(data)
  
  if(glm_backend == "speedglm") {
    if(!requireNamespace("speedglm")) {
      stop("speedglm package not installed. To install run `install.packages('speedglm')`")
    }
    speedglm::shglm(formula, streaming_fn, ...)
  } else if (glm_backend == "biglm"){
    if(!requireNamespace("biglm")) {
      stop("biglm package not installed. To install run `install.packages('biglm')`")
    }
    biglm::bigglm(formula, data = streaming_fn, ...)
  } else {
    stop("glm_backend must be one of 'speedglm' or 'biglm'")
  }
}
