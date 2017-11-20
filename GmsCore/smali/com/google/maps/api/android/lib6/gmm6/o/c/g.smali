.class final Lcom/google/maps/api/android/lib6/gmm6/o/c/g;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:I

.field c:I


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    return-object v0
.end method
