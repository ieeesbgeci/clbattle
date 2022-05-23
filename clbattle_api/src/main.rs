use actix_web::{web,get, post, App, HttpServer, HttpResponse, Responder};
use serde::Deserialize;
use std::env;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    std::env::set_var("RUST_LOG", "actix_web=info");
    env_logger::init();
    let port = env::var("PORT").expect("Error parsing Port Var");
    let host = env::var("HOST").expect("Error parsing HOST Var");
    let ip_port = format!("{}:{}", host, port);
    println!("server running on : {}", ip_port);
    HttpServer::new(|| {
        App::new()
            .service(airsafe)
            .service(rocky_bomb)
    })
    .bind(ip_port)?
    .run()
    .await
}

#[get("/lvl13/airsafe")]
async fn airsafe() -> impl Responder {
    HttpResponse::Ok().body("Permission granted.\nGet Rahasyam : \n\t\t==============\n\t\tp4l_pay4saM\n\t\t==============\n")
}

#[post("/lvl14/bomb")]
async fn rocky_bomb(bomb_info:web::Json<BombInfo>) -> impl Responder {
    if bomb_info.password==String::from("s4lam_r0cky"){
        HttpResponse::Ok().body(format!("Well done {} \n, ningal thanna password sheri aan.\nGet Rahasyam : \n\t\t==============\n\t\tTheng4_shaW4rma\n\t\t==============\n", bomb_info.username))
    }
    else{
        HttpResponse::Ok().body(format!("Kshemikkanam {} \n, ningal thanna password thett aan!", bomb_info.username))
    }
}

#[derive(Deserialize)]
struct BombInfo{
    username:String,
    password:String,
}