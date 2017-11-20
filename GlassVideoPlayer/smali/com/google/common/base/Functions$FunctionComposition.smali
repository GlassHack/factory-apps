.class Lcom/google/common/base/Functions$FunctionComposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final f:Lcom/google/common/base/v;

.field private final g:Lcom/google/common/base/v;


# direct methods
.method public constructor <init>(Lcom/google/common/base/v;Lcom/google/common/base/v;)V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/v;

    iput-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/v;

    .line 209
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/v;

    iput-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/v;

    .line 210
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/v;

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/v;

    invoke-interface {v1, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 218
    instance-of v1, p1, Lcom/google/common/base/Functions$FunctionComposition;

    if-eqz v1, :cond_0

    .line 219
    check-cast p1, Lcom/google/common/base/Functions$FunctionComposition;

    .line 220
    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/v;

    iget-object v2, p1, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/v;

    invoke-interface {v1, v2}, Lcom/google/common/base/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/v;

    iget-object v2, p1, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/v;

    invoke-interface {v1, v2}, Lcom/google/common/base/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 222
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/v;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/v;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/v;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/v;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
