class Twin : Gtk.Application {
    protected override void activate() {
        var window = new Gtk.ApplicationWindow(this);
        var label = new Gtk.Label("Welcome to Twin!");
        window.add(label);
        window.set_title("Twin");
        window.set_default_size(200, 100);
        window.show_all();
    }
}

public int main(string[] args) {
	return new Twin().run(args);
}
