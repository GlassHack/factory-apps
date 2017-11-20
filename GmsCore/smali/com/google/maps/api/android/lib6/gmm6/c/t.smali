.class final Lcom/google/maps/api/android/lib6/gmm6/c/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    check-cast p2, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->g()F

    move-result v0

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->g()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
