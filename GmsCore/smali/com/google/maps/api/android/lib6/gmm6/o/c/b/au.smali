.class final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/au;
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

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    check-cast p2, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->d()I

    move-result v0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
