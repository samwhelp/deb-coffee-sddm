pkgname="bean-appearance-garuda-catppuccin-sddm-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Garuda Catppuccin Sddm Theme"
maintainer="develop <develop@home.heaven>"
source=("https://gitlab.com/garuda-linux/themes-and-settings/settings/garuda-mokka/-/archive/main/garuda-mokka-main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-sddm/tree/main/packages/bean-appearance-garuda-catppuccin-sddm-theme"
depends=()
pacdeps=()
replace=()




package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd

	#echo
	#echo cd "${_archive}"
	#cd "${_archive}"

	echo
	echo cd "garuda-mokka-main"
	cd "garuda-mokka-main"

	local themes_dir_path="${pkgdir}/usr/share/sddm/themes"


	echo
	echo mkdir -p "${themes_dir_path}"
	mkdir -p "${themes_dir_path}"


	#echo
	#echo ./install.sh -t all -d "${themes_dir_path}"
	#./install.sh -t all -d "${themes_dir_path}"




	echo
	echo cp -rfT "usr/share/sddm/themes/Catppuccin-Mocha-Mauve" "${themes_dir_path}/Catppuccin-Mocha-Mauve"
	cp -rfT "usr/share/sddm/themes/Catppuccin-Mocha-Mauve" "${themes_dir_path}/Catppuccin-Mocha-Mauve"




	echo
	echo cd "${OLDPWD}"
	cd "${OLDPWD}"
	echo




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
