.class final Lcom/google/c/c/dh;
.super Lcom/google/c/c/bb;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/c/c/db;


# direct methods
.method constructor <init>(Lcom/google/c/c/db;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/c/c/bb;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/c/c/dh;->a:Lcom/google/c/c/db;

    .line 259
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Lcom/google/c/c/di;

    iget-object v1, p0, Lcom/google/c/c/dh;->a:Lcom/google/c/c/db;

    invoke-static {v1}, Lcom/google/c/c/db;->a(Lcom/google/c/c/db;)[Lcom/google/c/c/de;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/di;-><init>(Lcom/google/c/c/dh;I)V

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/c/c/dh;->a:Lcom/google/c/c/db;

    invoke-virtual {v0, p1}, Lcom/google/c/c/db;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/c/c/dh;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/c/c/dh;->a:Lcom/google/c/c/db;

    invoke-static {v0}, Lcom/google/c/c/db;->a(Lcom/google/c/c/db;)[Lcom/google/c/c/de;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
