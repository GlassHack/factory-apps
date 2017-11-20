.class final Lcom/google/c/a/g;
.super Lcom/google/c/a/e;
.source "SourceFile"


# instance fields
.field final synthetic o:C

.field final synthetic p:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    .prologue
    .line 449
    iput-char p1, p0, Lcom/google/c/a/g;->o:C

    iput-char p2, p0, Lcom/google/c/a/g;->p:C

    invoke-direct {p0}, Lcom/google/c/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/a/e;
    .locals 0

    .prologue
    .line 460
    return-object p0
.end method

.method final a(Lcom/google/c/a/r;)V
    .locals 1

    .prologue
    .line 455
    iget-char v0, p0, Lcom/google/c/a/g;->o:C

    invoke-virtual {p1, v0}, Lcom/google/c/a/r;->a(C)V

    .line 456
    iget-char v0, p0, Lcom/google/c/a/g;->p:C

    invoke-virtual {p1, v0}, Lcom/google/c/a/r;->a(C)V

    .line 457
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 449
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 451
    iget-char v0, p0, Lcom/google/c/a/g;->o:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/c/a/g;->p:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
