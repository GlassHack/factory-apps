.class final Lcom/google/android/d/a/f;
.super Lcom/google/android/d/a/d;
.source "SourceFile"


# instance fields
.field final synthetic q:C

.field final synthetic r:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    .prologue
    .line 444
    iput-char p1, p0, Lcom/google/android/d/a/f;->q:C

    iput-char p2, p0, Lcom/google/android/d/a/f;->r:C

    invoke-direct {p0}, Lcom/google/android/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/d/a/d;
    .locals 0

    .prologue
    .line 453
    return-object p0
.end method

.method protected final a(Lcom/google/android/d/a/q;)V
    .locals 1

    .prologue
    .line 449
    iget-char v0, p0, Lcom/google/android/d/a/f;->q:C

    invoke-virtual {p1, v0}, Lcom/google/android/d/a/q;->a(C)V

    .line 450
    iget-char v0, p0, Lcom/google/android/d/a/f;->r:C

    invoke-virtual {p1, v0}, Lcom/google/android/d/a/q;->a(C)V

    .line 451
    return-void
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 446
    iget-char v0, p0, Lcom/google/android/d/a/f;->q:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/android/d/a/f;->r:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
