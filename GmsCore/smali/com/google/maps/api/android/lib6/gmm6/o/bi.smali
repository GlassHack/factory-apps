.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bi;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field public b:I

.field public c:Lcom/google/maps/api/android/lib6/gmm6/o/i;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bh;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 2

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bi;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bh;I)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    return-void
.end method
