.class abstract Lcom/google/common/hash/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/k;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public hashBytes([B)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/l;->b([B)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/l;->b([BII)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public hashInt(I)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/l;->a(I)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/l;->a(J)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/l;->a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/l;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/l;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/l;
    .locals 1

    .prologue
    .line 65
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
