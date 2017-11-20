.class final Lcom/google/maps/api/android/lib6/gmm6/o/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Landroid/util/Pair;

.field public b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private c:Lcom/google/maps/api/android/lib6/gmm6/o/a/b;


# direct methods
.method public constructor <init>(Landroid/util/Pair;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->a:Landroid/util/Pair;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
