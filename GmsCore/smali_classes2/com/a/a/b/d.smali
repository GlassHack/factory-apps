.class public final Lcom/a/a/b/d;
.super Lcom/a/a/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/a/a/b/b;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/a/a/b/b;-><init>(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/a/a/b/d;
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/d;->a(IZ)V

    .line 112
    return-object p0
.end method

.method public final a(Lcom/a/a/b/d;)V
    .locals 2

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 351
    iget v0, p0, Lcom/a/a/b/b;->a:I

    iget v1, p1, Lcom/a/a/b/b;->a:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->b(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b(Z)Lcom/a/a/b/d;
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/d;->a(IZ)V

    .line 153
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final c(Z)Lcom/a/a/b/d;
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/d;->a(IZ)V

    .line 171
    return-object p0
.end method

.method public final c(I)V
    .locals 3

    .prologue
    const/16 v2, 0x67

    .line 418
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_0

    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_0

    .line 420
    new-instance v0, Lcom/a/a/b;

    const-string v1, "IsStruct and IsArray options are mutually exclusive"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 423
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    and-int/lit16 v0, p1, 0x300

    if-lez v0, :cond_1

    .line 425
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Structs and arrays can\'t have \"value\" options"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 428
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final d(Z)Lcom/a/a/b/d;
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/d;->a(IZ)V

    .line 189
    return-object p0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 371
    const v0, -0x7fffe00e

    return v0
.end method

.method public final f()Lcom/a/a/b/d;
    .locals 2

    .prologue
    .line 209
    const/16 v0, 0x200

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(IZ)V

    .line 210
    return-object p0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 220
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final h()Lcom/a/a/b/d;
    .locals 2

    .prologue
    .line 230
    const/16 v0, 0x400

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(IZ)V

    .line 231
    return-object p0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final j()Lcom/a/a/b/d;
    .locals 2

    .prologue
    .line 251
    const/16 v0, 0x800

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(IZ)V

    .line 252
    return-object p0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final l()Lcom/a/a/b/d;
    .locals 2

    .prologue
    .line 273
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(IZ)V

    .line 274
    return-object p0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 289
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/a/a/b/b;->a:I

    and-int/lit16 v0, v0, 0x300

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
