.class public abstract Lcom/google/maps/api/android/lib6/gmm6/o/ay;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# instance fields
.field public b:Lcom/google/maps/api/android/lib6/gmm6/o/az;

.field protected final c:Lcom/google/maps/api/android/lib6/gmm6/o/bo;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;I)V
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->B_()Z

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->b:Lcom/google/maps/api/android/lib6/gmm6/o/az;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->b:Lcom/google/maps/api/android/lib6/gmm6/o/az;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/az;->a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
