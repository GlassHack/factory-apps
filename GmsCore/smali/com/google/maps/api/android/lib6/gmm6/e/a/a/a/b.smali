.class public final Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "qualityAlgorithm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/b;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/b;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/b;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/b;->d:I

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/b;->e:I

    return-void
.end method
