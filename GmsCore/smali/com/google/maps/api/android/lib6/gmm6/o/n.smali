.class final Lcom/google/maps/api/android/lib6/gmm6/o/n;
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

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    check-cast p2, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
