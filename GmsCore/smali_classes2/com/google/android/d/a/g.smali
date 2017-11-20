.class final Lcom/google/android/d/a/g;
.super Lcom/google/android/d/a/d;
.source "SourceFile"


# instance fields
.field final synthetic q:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/google/android/d/a/g;->q:[C

    invoke-direct {p0}, Lcom/google/android/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/d/a/q;)V
    .locals 4

    .prologue
    .line 466
    iget-object v1, p0, Lcom/google/android/d/a/g;->q:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    .line 467
    invoke-virtual {p1, v3}, Lcom/google/android/d/a/q;->a(C)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/d/a/g;->q:[C

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
