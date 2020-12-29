import bcrypt from 'bcryptjs';
import md5 from 'md5';

function encryptPassword(password, digest=true) {
  if(digest) {
    password = md5(password);
  }

  let swappedHash = password.slice(16, 32)
  swappedHash += password.slice(0, 16);
  return swappedHash;
}

function getLoginHash(password, rndk) {
  let key = encryptPassword(password, false);
  key += rndk;
  key += 'Y(02.>\'H}t":E1';

  const loginHash = encryptPassword(key);

  return loginHash;
}

const passwordToCompare = process.argv[2];
const hashToCompare = process.argv[3];

let loginHash = md5(passwordToCompare).toUpperCase();
loginHash = getLoginHash(
  loginHash, 
  'houdini'
);
bcrypt.compare(loginHash, hashToCompare)
  .then((hashMatch) => {
    console.log("result: " + hashMatch);
});