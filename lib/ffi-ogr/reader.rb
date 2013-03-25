module OGR
  class Reader
    include OGR::FFIOGR

    TF_MAP = {
      true => 1,
      false => 0,
      1 => true,
      0 => false
    }

    # Reader Class NOT to be used directly
    # Use subclasses e.g. ShpReader
    def initialize;end

    def read(file_path, writeable=false)
      ds = OGR_Dr_Open(@driver, File.expand_path(file_path), TF_MAP[writeable])
      OGR::Tools.cast_data_source(ds)
    end
  end
end