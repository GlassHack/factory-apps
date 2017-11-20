.class final Lcom/google/c/a/j;
.super Lcom/google/c/a/e;
.source "SourceFile"


# instance fields
.field final synthetic o:Lcom/google/c/a/r;

.field final synthetic p:Lcom/google/c/a/e;


# direct methods
.method constructor <init>(Lcom/google/c/a/e;Lcom/google/c/a/r;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/c/a/j;->p:Lcom/google/c/a/e;

    iput-object p2, p0, Lcom/google/c/a/j;->o:Lcom/google/c/a/r;

    invoke-direct {p0}, Lcom/google/c/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/a/e;
    .locals 0

    .prologue
    .line 683
    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 675
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 677
    iget-object v1, p0, Lcom/google/c/a/j;->o:Lcom/google/c/a/r;

    iget-object v1, v1, Lcom/google/c/a/r;->a:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
