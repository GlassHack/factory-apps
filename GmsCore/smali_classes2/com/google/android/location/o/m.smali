.class final Lcom/google/android/location/o/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/google/android/location/o/l;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/l;[I)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/location/o/m;->b:Lcom/google/android/location/o/l;

    iput-object p2, p0, Lcom/google/android/location/o/m;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/o/m;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/google/android/location/o/m;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/location/o/m;->b:Lcom/google/android/location/o/l;

    iget-object v3, v3, Lcom/google/android/location/o/l;->a:[Lcom/google/android/location/o/k;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/location/o/k;->h()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 126
    const/4 v1, 0x1

    .line 129
    :cond_0
    return v1

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 121
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v0, 0x0

    move v1, v4

    :goto_0
    iget-object v5, p0, Lcom/google/android/location/o/m;->a:[I

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/location/o/m;->b:Lcom/google/android/location/o/l;

    iget-object v5, v5, Lcom/google/android/location/o/l;->a:[Lcom/google/android/location/o/k;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/google/android/location/o/m;->a:[I

    aget v6, v6, v0

    invoke-virtual {v5}, Lcom/google/android/location/o/k;->h()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v5, v6}, Lcom/google/android/location/o/k;->c(I)J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    move-wide v2, v6

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no more log descriptions"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/o/m;->b:Lcom/google/android/location/o/l;

    iget-object v0, v0, Lcom/google/android/location/o/l;->a:[Lcom/google/android/location/o/k;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/google/android/location/o/m;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/location/o/k;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/o/m;->a:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove log descriptions."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
