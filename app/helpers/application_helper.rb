module ApplicationHelper
  def logged_in
    session[:logged_in] == true
  end
  def markdown(text)
    options = [:no_intra_emphasis, :disable_indented_code_blocks, :fenced_code_blocks, :with_toc_data]
    Markdown.new(text, *options).to_html.html_safe
  end
end
