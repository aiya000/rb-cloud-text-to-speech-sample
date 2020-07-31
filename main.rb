require 'google/cloud/text_to_speech'

synthesis_input = {
  text: 'にっこにっこにー',
}
voice = {
  language_code: 'ja-JP',
  ssml_gender: 'FEMALE',
}
audio_config = {
  audio_encoding: 'MP3',
}

response = Google::Cloud::TextToSpeech
  .text_to_speech
  .synthesize_speech(
    input: synthesis_input,
    voice: voice,
    audio_config: audio_config,
  )
File.open 'output.mp3', 'wb' do |file|
  file.write response.audio_content
end
