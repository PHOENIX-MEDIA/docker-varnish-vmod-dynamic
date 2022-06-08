# Varnish Docker image + vmod-dynamic

The Varnish Docker community is publishing [official images](https://hub.docker.com/_/varnish). This fork simply adds
[vmod-dynamic](https://github.com/nigoroll/libvmod-dynamic) to the Varnish 6.6 and 7.0 Alpine releases.
vmod-dynamic provides a Varnish director for dynamic creation of backends which is useful in Kubernetes context with
rolling updates.

In the official Docker images for Varnish 7.1 the vmod is [already included](https://github.com/varnish/docker-varnish/commit/3121f4e974de7d64ae8094c50e99a9906e39ff0c), so this fork becomes obsolete.

For more details please visit the [official Docker image repository](https://github.com/varnish/docker-varnish) and
the [vmod-dynmic repository](https://github.com/nigoroll/libvmod-dynamic).

Images of this repository will be automatically published on [Docker Hub](https://hub.docker.com/).
