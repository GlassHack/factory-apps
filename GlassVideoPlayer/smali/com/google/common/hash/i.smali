.class final Lcom/google/common/hash/i;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/hash/r;


# direct methods
.method constructor <init>(Lcom/google/common/hash/r;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/r;

    iput-object v0, p0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/r;

    .line 156
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Funnels.asOutputStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/r;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/google/common/hash/r;->b(B)Lcom/google/common/hash/r;

    .line 161
    return-void
.end method

.method public final write([B)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/r;

    invoke-interface {v0, p1}, Lcom/google/common/hash/r;->c([B)Lcom/google/common/hash/r;

    .line 166
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/r;->c([BII)Lcom/google/common/hash/r;

    .line 171
    return-void
.end method
