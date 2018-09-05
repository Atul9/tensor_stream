RSpec.shared_examples "images ops" do
  extend SupportedOp

  before(:each) do
    TensorStream::Tensor.reset_counters
    TensorStream::Operation.reset_counters
    tf.reset_default_graph
    sess.clear_session_cache
  end

  supported_op ".decode_png" do
    it "converts png file to a tensor" do
      file_path = File.join('spec','fixtures', 'ruby_16.png')
      decoded_image = tf.image.decode_png(file_path)
      expect(sess.run(decoded_image)).to eq([[[0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [178, 3, 0, 23],
        [211, 5, 0, 125],
        [218, 48, 45, 196],
        [231, 105, 97, 204],
        [202, 45, 31, 204],
        [187, 11, 0, 214],
        [177, 5, 0, 227],
        [148, 4, 0, 191],
        [123, 2, 0, 63],
        [0, 0, 0, 0]],
       [[0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [116, 0, 0, 1],
        [196, 8, 0, 128],
        [216, 13, 0, 245],
        [201, 18, 0, 255],
        [192, 17, 0, 255],
        [216, 24, 12, 255],
        [218, 101, 92, 255],
        [215, 127, 125, 255],
        [186, 82, 81, 255],
        [152, 40, 37, 255],
        [121, 8, 4, 245],
        [111, 1, 0, 29]],
       [[0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [118, 0, 0, 10],
        [195, 12, 0, 192],
        [207, 17, 0, 255],
        [197, 19, 1, 255],
        [193, 18, 1, 255],
        [189, 15, 0, 255],
        [229, 127, 122, 255],
        [232, 140, 132, 255],
        [210, 89, 82, 255],
        [157, 72, 70, 255],
        [99, 3, 0, 255],
        [106, 3, 0, 255],
        [116, 2, 0, 101]],
       [[0, 0, 0, 0],
        [0, 0, 0, 0],
        [116, 0, 0, 10],
        [186, 18, 3, 194],
        [204, 18, 1, 255],
        [200, 28, 11, 255],
        [199, 40, 25, 255],
        [190, 19, 3, 255],
        [186, 15, 2, 255],
        [234, 124, 121, 255],
        [235, 158, 152, 255],
        [212, 58, 46, 255],
        [196, 24, 15, 255],
        [139, 15, 10, 255],
        [123, 4, 0, 255],
        [124, 2, 0, 102]],
       [[0, 0, 0, 0],
        [0, 0, 0, 0],
        [176, 22, 9, 170],
        [207, 45, 30, 255],
        [200, 26, 9, 255],
        [202, 55, 42, 255],
        [199, 55, 44, 255],
        [192, 39, 28, 255],
        [203, 46, 42, 255],
        [251, 201, 198, 255],
        [239, 179, 174, 255],
        [221, 91, 82, 255],
        [206, 32, 22, 255],
        [187, 14, 4, 255],
        [152, 5, 0, 255],
        [111, 2, 0, 77]],
       [[0, 0, 0, 0],
        [155, 5, 0, 84],
        [198, 34, 23, 255],
        [213, 77, 63, 255],
        [194, 18, 0, 255],
        [210, 91, 80, 255],
        [201, 75, 66, 255],
        [192, 33, 24, 255],
        [234, 151, 148, 255],
        [206, 131, 129, 255],
        [216, 102, 100, 255],
        [208, 57, 53, 255],
        [186, 12, 6, 255],
        [155, 4, 0, 255],
        [110, 4, 1, 255],
        [107, 1, 0, 51]],
       [[0, 0, 0, 0],
        [173, 8, 0, 215],
        [204, 50, 40, 255],
        [213, 98, 87, 255],
        [196, 52, 44, 255],
        [222, 141, 135, 255],
        [193, 61, 55, 255],
        [217, 121, 117, 255],
        [208, 103, 99, 255],
        [165, 9, 0, 255],
        [133, 3, 0, 255],
        [188, 8, 3, 255],
        [188, 4, 0, 255],
        [160, 4, 0, 255],
        [109, 15, 11, 255],
        [116, 0, 0, 51]],
       [[152, 24, 21, 65],
        [186, 12, 0, 255],
        [202, 65, 57, 255],
        [213, 113, 105, 255],
        [217, 147, 144, 255],
        [210, 133, 130, 255],
        [215, 129, 125, 255],
        [221, 123, 116, 255],
        [191, 16, 0, 255],
        [179, 10, 0, 255],
        [155, 3, 0, 255],
        [177, 7, 3, 255],
        [201, 39, 37, 255],
        [168, 50, 48, 255],
        [102, 11, 8, 255],
        [116, 0, 0, 16]],
       [[220, 137, 131, 154],
        [183, 12, 0, 255],
        [212, 135, 133, 255],
        [234, 189, 186, 255],
        [239, 203, 201, 255],
        [235, 178, 176, 255],
        [242, 189, 184, 255],
        [206, 61, 49, 255],
        [191, 16, 0, 255],
        [187, 10, 0, 255],
        [182, 4, 0, 255],
        [192, 4, 0, 255],
        [214, 59, 58, 255],
        [206, 141, 139, 255],
        [113, 3, 0, 255],
        [0, 0, 0, 0]],
       [[193, 59, 48, 192],
        [200, 81, 73, 255],
        [205, 109, 104, 255],
        [226, 159, 155, 255],
        [241, 207, 206, 255],
        [238, 180, 178, 255],
        [238, 182, 178, 255],
        [221, 131, 124, 255],
        [194, 40, 32, 255],
        [198, 8, 0, 255],
        [196, 4, 0, 255],
        [207, 30, 29, 255],
        [242, 149, 148, 255],
        [212, 117, 110, 255],
        [132, 3, 0, 244],
        [0, 0, 0, 0]],
       [[167, 9, 0, 204],
        [201, 123, 117, 255],
        [217, 91, 79, 255],
        [191, 18, 1, 255],
        [190, 92, 88, 255],
        [183, 87, 85, 255],
        [210, 7, 0, 255],
        [190, 48, 44, 255],
        [198, 65, 60, 255],
        [198, 32, 27, 255],
        [212, 81, 79, 255],
        [240, 171, 170, 255],
        [233, 93, 87, 255],
        [202, 64, 52, 255],
        [152, 4, 0, 204],
        [0, 0, 0, 0]],
       [[143, 3, 0, 204],
        [136, 59, 55, 255],
        [217, 90, 79, 255],
        [191, 18, 1, 255],
        [163, 49, 44, 255],
        [133, 32, 29, 255],
        [201, 38, 34, 255],
        [198, 5, 0, 255],
        [187, 4, 0, 255],
        [176, 4, 1, 255],
        [220, 172, 172, 255],
        [236, 146, 144, 255],
        [207, 49, 36, 255],
        [192, 19, 2, 255],
        [164, 4, 0, 204],
        [0, 0, 0, 0]],
       [[179, 5, 0, 204],
        [109, 3, 0, 255],
        [189, 63, 52, 255],
        [191, 18, 1, 255],
        [137, 11, 5, 255],
        [146, 4, 0, 255],
        [190, 33, 29, 255],
        [210, 41, 39, 255],
        [200, 46, 44, 255],
        [203, 117, 116, 255],
        [184, 47, 46, 255],
        [171, 31, 28, 255],
        [184, 27, 19, 255],
        [181, 11, 0, 255],
        [187, 6, 0, 160],
        [0, 0, 0, 0]],
       [[208, 6, 0, 139],
        [101, 3, 0, 255],
        [146, 26, 15, 255],
        [184, 16, 1, 255],
        [155, 4, 0, 255],
        [180, 4, 0, 255],
        [195, 4, 0, 255],
        [225, 91, 89, 255],
        [202, 78, 76, 255],
        [184, 8, 4, 255],
        [167, 4, 0, 255],
        [163, 5, 0, 255],
        [184, 6, 1, 255],
        [186, 6, 0, 255],
        [161, 3, 0, 163],
        [0, 0, 0, 6]],
       [[45, 0, 0, 78],
        [105, 2, 0, 223],
        [138, 4, 0, 255],
        [180, 10, 1, 255],
        [196, 68, 66, 255],
        [205, 80, 79, 255],
        [220, 97, 94, 254],
        [224, 84, 79, 241],
        [204, 42, 36, 236],
        [183, 15, 6, 235],
        [162, 11, 0, 224],
        [146, 6, 0, 216],
        [142, 3, 0, 214],
        [158, 3, 0, 202],
        [110, 1, 0, 154],
        [0, 0, 0, 39]],
       [[0, 0, 0, 9],
        [0, 0, 0, 35],
        [64, 0, 0, 68],
        [83, 0, 0, 96],
        [31, 0, 0, 90],
        [0, 0, 0, 93],
        [0, 0, 0, 94],
        [0, 0, 0, 94],
        [0, 0, 0, 94],
        [0, 0, 0, 89],
        [0, 0, 0, 80],
        [0, 0, 0, 67],
        [0, 0, 0, 51],
        [0, 0, 0, 31],
        [0, 0, 0, 12],
        [0, 0, 0, 1]]])
    end

    it "supports grayscale" do
      file_path = File.join('spec','fixtures', 'ruby_16.png')
      decoded_image = tf.image.decode_png(file_path, channels: 1)
      expect(sess.run(decoded_image)).to eq([])
    end
  end
end