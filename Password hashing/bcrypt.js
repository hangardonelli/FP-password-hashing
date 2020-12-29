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

const passwordToHash = process.argv[2];

let loginHash = md5(passwordToHash).toUpperCase();
loginHash = getLoginHash(
  loginHash, 
  'houdini'
);

bcrypt.hash(loginHash, 12).then((hash) => {
  console.log(hash);
});