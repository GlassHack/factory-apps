.class public final Lcom/google/maps/api/android/lib6/gmm6/n/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/n/i;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/n/h;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a()Lcom/google/maps/api/android/lib6/gmm6/n/h;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
