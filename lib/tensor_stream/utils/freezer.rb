module TensorStream
  class Freezer
    include OpHelper

    def convert(model_file, checkpoint_file, output_file)
      current_graph = TensorStream.get_default_graph
      YamlLoader.new.load_from_string(File.read(model_file))
      saver = TensorStream::Train::Saver.new
      saver.restore(nil, checkpoint_file)
      output_buffer = TensorStream::Yaml.new.get_string(TensorStream.get_default_graph) do |graph, node_key|
        node = graph.get_tensor_by_name(node_key)
        if node.operation == :variable_v2
          value = node.container
          options = {
            value: value,
            data_type: node.data_type,
            shape: shape_eval(value)
          }
          const_op = TensorStream::Operation.new(current_graph, inputs: [], options: options)
          const_op.name = node.name
          const_op.operation = :const
          const_op.data_type = node.data_type
          const_op.shape = TensorShape.new(shape_eval(value))

          const_op
        else
          node
        end
      end
      File.write(output_file, output_buffer)
    end
  end
end