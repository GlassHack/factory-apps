.class final Lcom/google/maps/api/android/lib6/gmm6/l/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/ca;


# instance fields
.field private a:I

.field private b:I

.field private synthetic c:Lcom/google/maps/api/android/lib6/gmm6/l/e;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/e;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->c:Lcom/google/maps/api/android/lib6/gmm6/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->a:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->c:Lcom/google/maps/api/android/lib6/gmm6/l/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->a:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->b:I

    return-void
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->b:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->a:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->c:Lcom/google/maps/api/android/lib6/gmm6/l/e;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->c:Lcom/google/maps/api/android/lib6/gmm6/l/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/f;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
