.class public abstract Lcom/a/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/b;->a:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/b;->b:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/b;->a:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/b;->b:Ljava/util/Map;

    .line 49
    invoke-direct {p0, p1}, Lcom/a/a/b/b;->d(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/a/a/b/b;->b(I)V

    .line 51
    return-void
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/a/a/b/b;->e()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    .line 237
    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/a/a/b/b;->c(I)V

    return-void

    .line 243
    :cond_0
    new-instance v1, Lcom/a/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The option bit(s) 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are invalid!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x67

    invoke-direct {v1, v0, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    .prologue
    .line 109
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/a/a/b/b;->a:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/a/a/b/b;->a:I

    .line 110
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/a/a/b/b;->a:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method protected final a(I)Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/a/a/b/b;->a:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/a/a/b/b;->d(I)V

    .line 130
    iput p1, p0, Lcom/a/a/b/b;->a:I

    .line 131
    return-void
.end method

.method protected c(I)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method protected abstract e()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/a/a/b/b;->a:I

    check-cast p1, Lcom/a/a/b/b;

    iget v1, p1, Lcom/a/a/b/b;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/a/a/b/b;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/a/b/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
