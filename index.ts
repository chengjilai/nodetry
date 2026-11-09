import { isSea } from "node:sea";

interface Greeting {
  message: string;
  runtime: string;
  singleExecutable: boolean;
  args: string[];
}

function greet(name: string): Greeting {
  return {
    message: `Nihao, ${name}!`,
    runtime: process.version,
    singleExecutable: isSea(),
    args: process.argv.slice(2),
  };
}

const name: string = process.argv[2] ?? "world";
console.log(JSON.stringify(greet(name), null, 2));
