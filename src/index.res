%%raw("import './main.css'")

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<Demo />, root)
| None => Js.log("Error: could not find react element")
}
