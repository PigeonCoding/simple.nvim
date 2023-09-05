require('code_runner').setup({
  filetype = {
    java = {
      "cd $dir &&",
      "javac $fileName &&",
      "java $fileNameWithoutExt"
    },
    python = "python3 $fileName",
    typescript = "node run ",
    rust = {
      "cd $dir &&",
      "cargo run &&",
    },
  },
})
