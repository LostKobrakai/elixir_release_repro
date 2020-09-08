# TestRelease

To get to the issue:

```zsh
MIX_ENV=prod mix release --overwrite
cd rel/release
echo "SECRET_KEY_BASE=\"some-key-base\"" > .env
env $(cat .env | xargs) ./bin/default start
```

```
ERROR! Cannot configure :test_release because :reboot_after_config has been set to false and :test_release has already been loaded, meaning any further configuration won't have an effect.

The configuration for :test_release before config providers was:

[{TestReleaseWeb.Endpoint, [secret_key_base: "WpIhsI1NFC5uQMTC+wGLxL21ht6qwF0GiQSHwUjlC/CwM1pUNUeXQsdEvPftpSKB", render_errors: [view: TestReleaseWeb.ErrorView, accepts: ["html", "json"], layout: false], pubsub_server: TestRelease.PubSub, live_view: [signing_salt: "qOKGQ7lr"], url: [host: "example.com", port: 80], cache_static_manifest: "priv/static/cache_manifest.json"]}]

The configuration for :test_release after config providers was:

[{TestReleaseWeb.Endpoint, [render_errors: [view: TestReleaseWeb.ErrorView, accepts: ["html", "json"], layout: false], pubsub_server: TestRelease.PubSub, live_view: [signing_salt: "qOKGQ7lr"], url: [host: "example.com", port: 80], cache_static_manifest: "priv/static/cache_manifest.json", http: [port: 4000, transport_o{"init terminating in do_boot",{<<"aborting boot">>,[{'Elixir.Config.Provider',boot,2,[]}]}}
init terminating in do_boot ({,[{Elixir.Config.Provider,boot,2,[]}]})

Crash dump is being written to: erl_crash.dump...done
```

## Versions
```
Erlang/OTP 22 [erts-10.6] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Elixir 1.10.2 (compiled with Erlang/OTP 22)
# but also 
Erlang/OTP 23 [erts-11.0] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Elixir 1.10.3 (compiled with Erlang/OTP 23)
```