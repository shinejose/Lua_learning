print(os.getenv("HOME"));
print(os.getenv("SHELL"));
print(os.getenv("LANG"));
print(os.getenv("somethingelse"));

function create_dir(dirname)
      os.execute("mkdir " .. dirname);
end

create_dir("temp");





