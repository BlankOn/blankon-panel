using Gtk;

int main (string[] args) {

	Intl.bindtextdomain( Config.GETTEXT_PACKAGE, Config.LOCALEDIR );
	Intl.bind_textdomain_codeset( Config.GETTEXT_PACKAGE, "UTF-8" );
	Intl.textdomain( Config.GETTEXT_PACKAGE );

    Gtk.init (ref args);
    CssProvider css = CssProvider.get_default ();
    try {
        css.load_from_path ("/usr/share/blankon-panel/blankon-panel.css");
    }    catch (Error e) {
        stdout.printf ("Unable to load css file\n");
    }

    var m = new PanelButtonWindow();
    m.show_all();


    Gtk.main ();
    return 0;
}
