.class final Lcom/google/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    iput p1, p0, Lcom/google/b/a/e;->a:I

    .line 1358
    iput-object p2, p0, Lcom/google/b/a/e;->b:Ljava/lang/String;

    .line 1359
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1368
    instance-of v1, p1, Lcom/google/b/a/e;

    if-nez v1, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return v0

    .line 1372
    :cond_1
    check-cast p1, Lcom/google/b/a/e;

    .line 1373
    iget v1, p0, Lcom/google/b/a/e;->a:I

    iget v2, p1, Lcom/google/b/a/e;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/b/a/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/google/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
