.class public final Lcom/google/common/base/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/common/base/ac;

.field private c:Lcom/google/common/base/ac;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Lcom/google/common/base/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/ac;-><init>(Lcom/google/common/base/aa;)V

    iput-object v0, p0, Lcom/google/common/base/ab;->b:Lcom/google/common/base/ac;

    .line 198
    iget-object v0, p0, Lcom/google/common/base/ab;->b:Lcom/google/common/base/ac;

    iput-object v0, p0, Lcom/google/common/base/ab;->c:Lcom/google/common/base/ac;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/ab;->d:Z

    .line 205
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/ab;->a:Ljava/lang/String;

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/aa;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/google/common/base/ab;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Lcom/google/common/base/ac;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Lcom/google/common/base/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/ac;-><init>(Lcom/google/common/base/aa;)V

    .line 404
    iget-object v1, p0, Lcom/google/common/base/ab;->c:Lcom/google/common/base/ac;

    iput-object v0, v1, Lcom/google/common/base/ac;->c:Lcom/google/common/base/ac;

    iput-object v0, p0, Lcom/google/common/base/ab;->c:Lcom/google/common/base/ac;

    .line 405
    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/google/common/base/ab;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/google/common/base/ab;->a()Lcom/google/common/base/ac;

    move-result-object v0

    .line 410
    iput-object p1, v0, Lcom/google/common/base/ac;->b:Ljava/lang/Object;

    .line 411
    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/common/base/ab;->a()Lcom/google/common/base/ac;

    move-result-object v1

    .line 416
    iput-object p2, v1, Lcom/google/common/base/ac;->b:Ljava/lang/Object;

    .line 417
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/common/base/ac;->a:Ljava/lang/String;

    .line 418
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/base/ab;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/google/common/base/ab;->b(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/google/common/base/ab;
    .locals 1

    .prologue
    .line 277
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/ab;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/google/common/base/ab;
    .locals 1

    .prologue
    .line 287
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/ab;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/ab;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/google/common/base/ab;->d:Z

    .line 386
    const-string v1, ""

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/common/base/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 388
    iget-object v0, p0, Lcom/google/common/base/ab;->b:Lcom/google/common/base/ac;

    iget-object v0, v0, Lcom/google/common/base/ac;->c:Lcom/google/common/base/ac;

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 389
    if-eqz v2, :cond_0

    iget-object v4, v1, Lcom/google/common/base/ac;->b:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 390
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v0, ", "

    .line 393
    iget-object v4, v1, Lcom/google/common/base/ac;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 394
    iget-object v4, v1, Lcom/google/common/base/ac;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    :cond_1
    iget-object v4, v1, Lcom/google/common/base/ac;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    iget-object v1, v1, Lcom/google/common/base/ac;->c:Lcom/google/common/base/ac;

    goto :goto_0

    .line 399
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
