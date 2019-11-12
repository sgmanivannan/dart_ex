main() {
  new GetResult("Hi! World..!");
}

class GetResult {
  var text;

  GetResult(this.text) {
    print(this.text);
  }
}
