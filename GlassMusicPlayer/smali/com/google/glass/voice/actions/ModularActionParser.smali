.class public Lcom/google/glass/voice/actions/ModularActionParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModularAction(Lcom/google/b/a/gw;)Lcom/google/b/a/gp;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12
    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 21
    :goto_0
    return-object v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    aget-object v2, v2, v0

    .line 17
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/b/a/o;->N:Lcom/google/b/a/gp;

    if-eqz v3, :cond_1

    .line 18
    iget-object v0, v2, Lcom/google/b/a/o;->N:Lcom/google/b/a/gp;

    goto :goto_0

    .line 15
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 21
    goto :goto_0
.end method
