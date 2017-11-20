.class final Lcom/google/maps/api/android/lib6/gmm6/o/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    iget-wide v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->d:J

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->d:J

    return-void
.end method
