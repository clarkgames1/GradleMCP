plugins {
    id 'java'
}

group 'example.client'
version 'MC_1.8.9'

sourceCompatibility = 1.8


repositories {
    mavenCentral()
    maven {
        url "https://libraries.minecraft.net/"
    }
    maven {
        url "https://mvnrepository.com/artifact"
    }
    maven{
        url "http://nifty-gui.sourceforge.net/nifty-maven-repo/"
    }
}

configurations {
    addLib
}

dependencies {

    implementation group: 'oshi-project', name: 'oshi-core', version: '1.1'
    implementation group: 'net.java.dev.jna', name: 'jna', version: '3.4.0'
    implementation group: 'net.java.dev.jna', name: 'platform', version: '3.4.0'
    implementation group: 'com.ibm.icu', name: 'icu4j', version: '62.1'
    implementation group: 'net.sf.jopt-simple', name: 'jopt-simple', version: '4.9'
    implementation group: "com.paulscode", name: "codecjorbis", version: "20101023"
    implementation group: "com.paulscode", name: "codecwav", version: "20101023"
    implementation group: "com.paulscode", name: "libraryjavasound", version: "20101123"
    implementation group: "com.paulscode", name: "librarylwjglopenal", version: "20100824"
    implementation group: "com.paulscode", name: "soundsystem", version: "20120107"
    implementation group: 'io.netty', name: 'netty-all', version: '4.0.23.Final'
    implementation group: 'com.google.guava', name: 'guava', version: '17.0'
    implementation group: 'org.apache.commons', name: 'commons-lang3', version: '3.8.1'
    implementation group: 'commons-io', name: 'commons-io', version: '2.6'
    implementation group: 'commons-codec', name: 'commons-codec', version: '1.11'
    implementation group: 'net.java.jinput', name: 'jinput', version: '2.0.9'
    implementation group: 'net.java.jutils', name: 'jutils', version: '1.0.0'
    implementation group: 'com.google.code.gson', name: 'gson', version: '2.8.5'
    implementation group: 'org.apache.commons', name: 'commons-compress', version: '1.18'
    implementation group: 'org.apache.httpcomponents', name: 'httpclient', version: '4.5.6'
    implementation group: 'commons-logging', name: 'commons-logging', version: '1.2'
    implementation group: 'org.apache.httpcomponents', name: 'httpcore', version: '4.4.10'
    implementation group: 'org.apache.logging.log4j', name: 'log4j-core', version: '2.0-beta9'
    implementation group: 'org.apache.logging.log4j', name: 'log4j-api', version: '2.0-beta9'
    implementation group: 'org.lwjgl.lwjgl', name: 'lwjgl', version: '2.9.3'
    implementation group: 'org.lwjgl.lwjgl', name: 'lwjgl_util', version: '2.9.3'
    implementation group: 'com.mojang', name: 'realms', version: '1.7.59'
    implementation group: 'com.mojang', name: 'authlib', version: '1.5.21'
    implementation group: 'tv.twitch', name: 'twitch', version: '6.5'

    /**
     * Example of adding a dependency, remove this comment if tou want to add slick2d to your client.
     * addLib group: 'slick', name: 'slick', version: '20121001-264'
     */

    configurations.implementation.extendsFrom(configurations.addLib)
}

jar {
    from{
        configurations.addLib.collect {
            if(!it.isDirectory()){
                zipTree(it)
            }
        }
    }
}
