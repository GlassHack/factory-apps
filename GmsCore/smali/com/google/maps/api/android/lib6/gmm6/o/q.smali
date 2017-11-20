.class final Lcom/google/maps/api/android/lib6/gmm6/o/q;
.super Ljava/lang/Object;


# instance fields
.field final a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

.field final b:[Lcom/google/maps/api/android/lib6/gmm6/o/x;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/o/x;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/q;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/x;

    return-void
.end method
