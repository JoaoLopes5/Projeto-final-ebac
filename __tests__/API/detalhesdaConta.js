const request = require('supertest')
let token;

it('Deve fazer login e pegar o token', async () => {
    const resposta = await request(`lojaebac.ebaconline.art.br/`)
    .post(`public/authUser`)
    .send({
        "email": "admin@admin.com",
        "password": "admin123"
    })
     token = (resposta.body.data.token);
     expect(resposta.statusCode).toBe(200)
});

it('Deve acessar os detalhes da conta', async () => {
    const resposta = await request(`lojaebac.ebaconline.art.br/`)
    .get(`api/getUserDetail`)
    .send({
        "authorization": `${token}`
    })
    expect(resposta.statusCode).toBe(200)
});