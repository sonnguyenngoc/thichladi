$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "erp/thichladi/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "erp_thichladi"
  s.version     = Erp::Thichladi::VERSION
  s.authors     = ["Nguyễn Ngọc Sơn",
                   "Nguyễn Tôn Hùng"]
  s.email       = ["sonnn@hoangkhang.com.vn",
                   "hungnt@hoangkhang.com.vn"]
  s.homepage    = "http://hoangkhang.com.vn/"
  s.summary     = "Thichladi.info features of Erp System."
  s.description = "Thichladi.info features of Erp System."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.1.2"
  s.add_dependency "erp_core"
  s.add_dependency "deface"
end
