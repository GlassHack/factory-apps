.class public final Lcom/google/h/a/b/b/a/c;
.super Lcom/google/h/a/b/b/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    .line 12
    return-void
.end method


# virtual methods
.method public final b(II)V
    .locals 2

    .prologue
    .line 18
    mul-int v0, p1, p2

    .line 19
    iget-object v1, p0, Lcom/google/h/a/b/b/a/c;->d:[D

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 21
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/google/h/a/b/b/a/c;->d:[D

    .line 23
    :cond_0
    iput p1, p0, Lcom/google/h/a/b/b/a/c;->a:I

    .line 24
    iput p2, p0, Lcom/google/h/a/b/b/a/c;->b:I

    .line 25
    iput v0, p0, Lcom/google/h/a/b/b/a/c;->c:I

    .line 26
    return-void
.end method
