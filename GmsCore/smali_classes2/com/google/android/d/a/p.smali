.class final Lcom/google/android/d/a/p;
.super Lcom/google/android/d/a/d;
.source "SourceFile"


# instance fields
.field final synthetic q:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 380
    iput-char p1, p0, Lcom/google/android/d/a/p;->q:C

    invoke-direct {p0}, Lcom/google/android/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/d/a/d;
    .locals 0

    .prologue
    .line 402
    return-object p0
.end method

.method public final a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;
    .locals 1

    .prologue
    .line 393
    iget-char v0, p0, Lcom/google/android/d/a/p;->q:C

    invoke-virtual {p1, v0}, Lcom/google/android/d/a/d;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object p1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/d/a/q;)V
    .locals 1

    .prologue
    .line 399
    iget-char v0, p0, Lcom/google/android/d/a/p;->q:C

    invoke-virtual {p1, v0}, Lcom/google/android/d/a/q;->a(C)V

    .line 400
    return-void
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 382
    iget-char v0, p0, Lcom/google/android/d/a/p;->q:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
