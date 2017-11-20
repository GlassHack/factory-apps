.class final Lcom/google/c/c/di;
.super Lcom/google/c/c/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/c/dh;


# direct methods
.method constructor <init>(Lcom/google/c/c/dh;I)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/c/c/di;->a:Lcom/google/c/c/dh;

    invoke-direct {p0, p2}, Lcom/google/c/c/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/c/c/di;->a:Lcom/google/c/c/dh;

    iget-object v0, v0, Lcom/google/c/c/dh;->a:Lcom/google/c/c/db;

    invoke-static {v0}, Lcom/google/c/c/db;->a(Lcom/google/c/c/db;)[Lcom/google/c/c/de;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/c/c/de;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
