class Twin : Gtk.Application {
    protected override void activate() {
        new MainWindow(this).show_all();
    }
}

class MainWindow : Gtk.ApplicationWindow {

    Gtk.Statusbar statusbar;

    uint context_id;

    internal MainWindow(Twin app) {
        Object(application: app, title: "TextView");
        this.set_default_size(200, 100);

        var box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);


        // Text to be displayed
        var buffer = new Gtk.TextBuffer(null);
        Gtk.TextIter iter;
        buffer.get_end_iter(out iter);
        buffer.insert_markup(ref iter, "<big>this is big</big>\n", -1);
        buffer.insert_markup(ref iter, "<small>THIS IS SMALL</small>", -1);
        // Actual display
        var textview = new Gtk.TextView.with_buffer(buffer);
        textview.set_wrap_mode(Gtk.WrapMode.WORD);
        textview.editable = false;
        textview.cursor_visible = false;

        var scrolled_window = new Gtk.ScrolledWindow(null, null);
        scrolled_window.set_policy(Gtk.PolicyType.AUTOMATIC, Gtk.PolicyType.AUTOMATIC);
        scrolled_window.set_border_width(5);
        scrolled_window.add(textview);
        box.pack_start(scrolled_window);

        statusbar = new Gtk.Statusbar();
        context_id = statusbar.get_context_id("status");
        statusbar.push(context_id, "Welcome!");
        box.pack_start(statusbar, expand=false);

        this.add(box);
    }
}

public int main(string[] args) {
	return new Twin().run(args);
}
