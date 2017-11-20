.class public final Lcom/google/maps/api/android/lib6/gmm6/j/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cl;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/l/cl;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    invoke-direct {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cm;)V

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/l;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/l;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/l;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/l;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    return v0
.end method
