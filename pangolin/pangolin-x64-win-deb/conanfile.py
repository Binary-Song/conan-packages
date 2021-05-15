from conans import ConanFile, tools


class PangolinConan(ConanFile):
    name = "pangolin"
    version = "0.6"
    settings = "os", "compiler", "build_type", "arch"
    description = "Pangolin is a lightweight portable rapid development library for managing OpenGL display / interaction and abstracting video input."
    url = "https://github.com/stevenlovegrove/Pangolin"
    license = "MIT License"
    author = "Steven Lovegrove"
    topics = None

    def package(self): 
        self.copy("*")
        
 
    def package_info(self):
        self.cpp_info.libs = self.collect_libs() + ["opengl32" , "glu32" , "mf.lib"   ,"mfplat.lib", "mfreadwrite.lib" , "mfuuid.lib", "strmiids.lib", "OpenNI2.lib"]
