module ApplicationHelper
  def meta_tags_template(title, description, fb_type, tw_type, image)
    {
      title:       title,
      description: description,
      og:
                   {
                     title:       title,
                     description: description,
                     type:        fb_type,
                     url:         request.original_url,
                     image:       image
                   },
      twitter:
                   {
                     card:        tw_type,
                     site:        "@reddotrubyconf",
                     title:       title,
                     description: description,
                     image:       image
                   }
    }
  end

  def default_meta_tags
    meta_tags_template(
      "RedDotRubyConf 2016",
      "The largest Ruby conference in South East Asia is happening on 23 and 24 June 2016.",
      "website",
      "summary_large_image",
      image_url("social-media-#{[1,2].sample}.jpg")
    )
  end
end
