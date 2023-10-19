# Introduction

A Docker container project to use whilst working through "The Art of Assembly Language" 2nd Edition. https://www.plantation-productions.com/Webster/www.artofasm.com/index.html


## Notes on installation

I followed the [HLA install instructions](https://www.plantation-productions.com/Webster/HighLevelAsm/LInuxDownload.html) at but had issues with installing libc6-i386

I fixed these with help from this [askubuntu post](https://askubuntu.com/questions/1143268/how-to-install-a-libc6-version-2-29)

I had to add `binutils` as a package.  This is not in the notes

## Building

Run `docker build -t hlabox .`

## Running

Run `docker run --platform linux/amd64 --name hlabox -it hlabox bash` to load the container

### Testing

In a bash shell on the container just run `./hw` This should print out "Hello, World of Assembly Language" to the console.