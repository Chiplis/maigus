wasm-pack build --release --target web --features wasm
mkdir -p /Users/chiplis/maigus/web/wasm_demo/pkg
cp -f /Users/chiplis/maigus/pkg/maigus.js \
      /Users/chiplis/maigus/pkg/maigus_bg.wasm \
      /Users/chiplis/maigus/pkg/maigus.d.ts \
      /Users/chiplis/maigus/pkg/maigus_bg.wasm.d.ts \
      /Users/chiplis/maigus/pkg/package.json \
      /Users/chiplis/maigus/web/wasm_demo/pkg/
