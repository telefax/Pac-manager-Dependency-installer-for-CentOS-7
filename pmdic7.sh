echo "#########################################################"
echo "# Pac Manager 4.5.5.7 Dependency Installer for CentOS 7 #"
echo "# https://github.com/telefax                            #"
echo "#########################################################"
echo ">> Enable EPEL repo..."
sudo yum install -y epel-release
echo ">> Installing various needed tools via yum..."
sudo yum install -y ftp perl-Gtk2.x86_64 unique-devel.x86_64 libglade2-devel.x86_64 perl-Socket6.x86_64 vte-devel.x86_64 GConf2-devel.x86_64 cpan perl-Gtk2 perl-YAML uuid-perl.x86_64 perl-Crypt-CBC.noarch
echo ">> Installing Development tools via yum..."
sudo yum groupinstall -y "Development tools"
echo ">> Installing Perl Modules via CPAN (First step might require CPAN configuration, just press enter on all questions..."
echo ">>> Installing Module::Build"
sudo cpan -i Module::Build
echo ">>> Installing IO::Stty "
sudo cpan -i IO::Stty
echo ">>> Installing Glib"
sudo cpan -i Glib
echo ">>> Installing Expect"
sudo cpan -i Expect
echo ">>> Installing Cairo"
sudo cpan -i Cairo
echo ">>> Installing Pango"
sudo cpan -i Pango
echo ">>> Installing Gtk2"
sudo cpan -i Gtk2
echo ">>> Installing Gtk2::Unique"
sudo cpan -i Gtk2::Unique
echo ">>> Installing Net:ARP"
sudo cpan -i Net:ARP
echo ">>> Installing Crypt::Rijndael"
sudo cpan -i Crypt::Rijndael
echo ">>> Installing Crypt::Blowfish"
sudo cpan -i Crypt::Blowfish
echo ">>> Installing Gtk2::Ex::Simple::List"
sudo cpan -i Gtk2::Ex::Simple::List
echo ">>> Installing Gtk2::GladeXML"
sudo cpan -i Gtk2::GladeXML
echo "###################"
echo ">> Downloading and compiling Gnome Vte 0.11.."
wget http://search.cpan.org/CPAN/authors/id/X/XA/XAOC/Gnome2-Vte-0.11.tar.gz
tar zvxf Gnome2-Vte-0.11.tar.gz
cd Gnome2-Vte-0.11
sudo perl Makefile.PL
sudo make
sudo make install
echo ">> All done, try starting PAC Manager now."
