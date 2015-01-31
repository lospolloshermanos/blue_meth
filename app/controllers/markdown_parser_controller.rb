class MarkdownParserController < ApplicationController

  def parser
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
  	render json: { markdown: markdown.render(params[:markdown]) }
  end
end