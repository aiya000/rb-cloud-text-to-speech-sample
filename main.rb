require 'google/cloud/text_to_speech'

synthesis_input = {
  text: '
    ある日の暮方の事である。
    一人の下人が、羅生門の下で雨やみを待っていた。
    広い門の下には、この男のほかに誰もいない。
    ただ、所々丹塗の剥げた、大きな円柱に、蟋蟀が一匹とまっている。
    羅生門が、朱雀大路にある以上は、この男のほかにも、雨やみをする市女笠揉烏帽子が、もう二三人はありそうなものである。
    それが、この男のほかには誰もいない。
  ',
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
