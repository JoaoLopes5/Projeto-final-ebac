import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  stages: [
    { duration: '20s', target: 20 },
    { duration: '2m', target: 20 },
    { duration: '10s', target: 0 },
  ],
};

const usuarios = [
  { user: "user1_ebac", password: "psw!ebac@test" },
  { user: "user2_ebac", password: "psw!ebac@test" },
  { user: "user3_ebac", password: "psw!ebac@test" },
  { user: "user4_ebac", password: "psw!ebac@test" },
  { user: "user5_ebac", password: "psw!ebac@test" },
];

function getRandomUser() {
  return usuarios[Math.floor(Math.random() * usuarios.length)];
}

export default function () {
  // ===== Adicionar usuário =====
  let credenciais = getRandomUser();
  let email = `${credenciais.user}@ebac.com`;

  let loginRes = http.post(
    'http://lojaebac.ebaconline.art.br/api-docs/#/default/post_public_addUser',
    JSON.stringify({ email: email, password: credenciais.password }),
    { headers: { 'Content-Type': 'application/json' } }
  );

  check(loginRes, {
    "login retornou 200": (r) => r.status === 200,
  });

  // ===== Catálogo de produtos =====
  let produtosRes = http.get('http://lojaebac.ebaconline.art.br/api-docs/#/default/get_public_getProducts');

  check(produtosRes, {
    "busca de produtos retornou 200": (r) => r.status === 200,
  });

  sleep(1);
}
