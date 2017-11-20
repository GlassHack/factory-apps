.class public final Lcom/google/googlenav/common/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "qualityAlgorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput p1, p0, Lcom/google/googlenav/common/b/a/a/b;->a:I

    .line 73
    iput p2, p0, Lcom/google/googlenav/common/b/a/a/b;->b:I

    .line 74
    iput p3, p0, Lcom/google/googlenav/common/b/a/a/b;->c:I

    .line 75
    iput p4, p0, Lcom/google/googlenav/common/b/a/a/b;->d:I

    .line 76
    iput p5, p0, Lcom/google/googlenav/common/b/a/a/b;->e:I

    .line 77
    iput p6, p0, Lcom/google/googlenav/common/b/a/a/b;->f:I

    .line 78
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/googlenav/common/b/a/a/b;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/googlenav/common/b/a/a/b;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/googlenav/common/b/a/a/b;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/googlenav/common/b/a/a/b;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/google/googlenav/common/b/a/a/b;->e:I

    return v0
.end method
