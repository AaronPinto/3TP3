function avgs = question2a(grades, max_grade, cols)
    arguments % argument validation
        grades (:,:) {mustBeNumeric}
        max_grade (1,:) {mustBeNonempty} % must be row vector
        cols (1,:) {mustBeNonempty} % must be row vector
    end
    
    mark_cols = grades(:,cols); % all rows only with cols that we care about
    max_cols = max_grade(cols); % max grades for cols that we care about
    num_cols = size(cols, 2); % number of cols that we care about
    avgs = sum(mark_cols ./ max_cols, 2) .* (100.0 / num_cols); % sum along row
end
