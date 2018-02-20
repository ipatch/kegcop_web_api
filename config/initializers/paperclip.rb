###
# Paperclip - settings file
###

# Useful Link
# https://github.com/thoughtbot/paperclip/wiki/Attachment-downloaded-from-a-URL

Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:filename'

# Paperclip::UriAdpater.register <= WRONG
Paperclip::DataUriAdapter.register
