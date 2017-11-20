.class public final Lcom/google/maps/api/android/lib6/gmm6/o/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    :goto_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->b:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->c:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
