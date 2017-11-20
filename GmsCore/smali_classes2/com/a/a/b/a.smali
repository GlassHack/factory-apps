.class public final Lcom/a/a/b/a;
.super Lcom/a/a/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/a/a/b/b;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/a/a/b/b;-><init>(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/a/a/b/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/a/a/b/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/a/a/b/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/a/a/b/d;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/a/a/b/d;

    iget v1, p0, Lcom/a/a/b/b;->a:I

    invoke-direct {v0, v1}, Lcom/a/a/b/d;-><init>(I)V

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x1e00

    return v0
.end method
