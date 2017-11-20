.class final Lcom/google/c/a/h;
.super Lcom/google/c/a/e;
.source "SourceFile"


# instance fields
.field final synthetic o:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/c/a/h;->o:[C

    invoke-direct {p0}, Lcom/google/c/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/c/a/r;)V
    .locals 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/c/a/h;->o:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    .line 475
    invoke-virtual {p1, v3}, Lcom/google/c/a/r;->a(C)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 468
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/c/a/h;->o:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
