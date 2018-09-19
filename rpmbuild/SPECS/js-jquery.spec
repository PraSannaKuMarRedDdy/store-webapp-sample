Name:           js-jquery
Version:        2.2.4
Release:        3%{?dist}
Summary:        JavaScript DOM manipulation, event handling, and AJAX library
BuildArch:      noarch

%global ver_x %(echo %{version} | cut -d. -f1)
%global ver_y %(echo %{version} | cut -d. -f2)
%global ver_z %(echo %{version} | cut -d. -f3)

License:        MIT     
URL:            https://jquery.com/
Source0:        https://github.com/jquery/jquery/archive/%{version}/jquery-%{version}.tar.gz

# disable gzip-js during build
Patch1:         %{name}-disable-gzip-js.patch
# backport of XSS bug fix from upstream; upstream fixed in 3.0.0 and newer
Patch2:         xss-fix-b078a62.patch

BuildRequires:  web-assets-devel
BuildRequires:  nodejs-packaging
BuildRequires:  js-sizzle-static

Provides:       jquery = %{version}-%{release}
Provides:       %{name}-static = %{version}-%{release}
Provides:       %{name}2 = %{version}-%{release}
Provides:       %{name}2-static = %{version}-%{release}

BuildRequires:  nodejs-grunt >= 0.4.4-3
BuildRequires:  npm(shelljs)
BuildRequires:  npm(grunt-cli)
BuildRequires:  npm(grunt-contrib-uglify)
BuildRequires:  npm(load-grunt-tasks)
BuildRequires:  npm(requirejs)
#BuildRequires:  npm(strip-json-comments) # won't work on epel7 branch
BuildRequires:  nodejs-strip-json-comments

Requires:       web-assets-filesystem

%description
jQuery is a fast, small, and feature-rich JavaScript library. It makes things
like HTML document traversal and manipulation, event handling, animation, and 
Ajax much simpler with an easy-to-use API that works across a multitude of 
browsers. With a combination of versatility and extensibility, jQuery has 
changed the way that millions of people write JavaScript.

%prep
# autosetup doesn't work right on epel7 branch
%setup -qn jquery-%{version}
%patch1 -p1
%patch2 -p1

#remove precompiled stuff
rm -rf dist/* src/sizzle

#put sizzle where jquery expects it
install -Dp %{_jsdir}/sizzle/latest/sizzle.js src/sizzle/dist/sizzle.js


%build
%nodejs_symlink_deps --build
grunt -v 'build:*:*' uglify


# missing dependencies
#%%check
#grunt


%install
%global installdir %{buildroot}%{_jsdir}/jquery

mkdir -p %{installdir}/%{version}
cp -p dist/* %{installdir}/%{version}

mkdir -p %{buildroot}%{_webassetdir}
ln -s ../javascript/jquery %{buildroot}%{_webassetdir}/jquery

ln -s %{version} %{installdir}/latest
ln -s %{version} %{installdir}/%{ver_x}
ln -s %{version} %{installdir}/%{ver_x}.%{ver_y}


%files
%{_jsdir}/jquery
%{_webassetdir}/jquery
%doc AUTHORS.txt CONTRIBUTING.md LICENSE.txt README.md


%changelog
* Tue Apr 11 2017 Christopher Tubbs <ctubbsii@fedoraproject.org> - 2.2.4-3
- Update provides in prep for js-jquery package rename to js-jquery2

* Fri Feb 10 2017 Fedora Release Engineering <releng@fedoraproject.org> - 2.2.4-2
- Rebuilt for https://fedoraproject.org/wiki/Fedora_26_Mass_Rebuild

* Tue Dec 20 2016 Christopher Tubbs <ctubbsii@fedoraproject.org> - 2.2.4-1
- Update to 2.2.4 and backport XSS patch (bz#1399550,bz#1399549)

* Thu Feb 04 2016 Fedora Release Engineering <releng@fedoraproject.org> - 2.1.3-3
- Rebuilt for https://fedoraproject.org/wiki/Fedora_24_Mass_Rebuild

* Wed Jun 17 2015 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 2.1.3-2
- Rebuilt for https://fedoraproject.org/wiki/Fedora_23_Mass_Rebuild

* Wed Mar 04 2015 T.C. Hollingsworth <tchollingsworth@gmail.com> - 2.1.3-1
- new upstream release 2.1.3
  http://blog.jquery.com/2014/12/18/jquery-1-11-2-and-2-1-3-released-safari-fail-safe-edition/

* Tue Oct 21 2014 T.C. Hollingsworth <tchollingsworth@gmail.com> - 2.1.1-4
- drop unneccessary symlinks

* Tue Jun 03 2014 T.C. Hollingsworth <tchollingsworth@gmail.com> - 2.1.1-3
- follow the github SourceURL guidelines

* Sat May 31 2014 T.C. Hollingsworth <tchollingsworth@gmail.com> - 2.1.1-2
- drop sed hack now that grunt is fixed

* Fri May 30 2014 T.C. Hollingsworth <tchollingsworth@gmail.com> - 2.1.1-1
- update to 2.1.1
- use system packages for build (with help from Jamie Nguyen)

* Wed Mar 19 2014 T.C. Hollingsworth <tchollingsworth@gmail.com> - 2.1.0-0.1
- initial package
