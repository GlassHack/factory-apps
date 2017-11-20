.class final Lcom/google/c/a/q;
.super Lcom/google/c/a/e;
.source "SourceFile"


# instance fields
.field final synthetic o:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 380
    iput-char p1, p0, Lcom/google/c/a/q;->o:C

    invoke-direct {p0}, Lcom/google/c/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/a/e;
    .locals 0

    .prologue
    .line 406
    return-object p0
.end method

.method public final a(Lcom/google/c/a/e;)Lcom/google/c/a/e;
    .locals 1

    .prologue
    .line 394
    iget-char v0, p0, Lcom/google/c/a/q;->o:C

    invoke-virtual {p1, v0}, Lcom/google/c/a/e;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object p1

    goto :goto_0
.end method

.method final a(Lcom/google/c/a/r;)V
    .locals 1

    .prologue
    .line 402
    iget-char v0, p0, Lcom/google/c/a/q;->o:C

    invoke-virtual {p1, v0}, Lcom/google/c/a/r;->a(C)V

    .line 403
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 380
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 382
    iget-char v0, p0, Lcom/google/c/a/q;->o:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
