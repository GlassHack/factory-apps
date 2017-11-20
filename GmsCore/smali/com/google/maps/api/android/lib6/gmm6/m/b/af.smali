.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/af;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:J

.field final c:Ljava/lang/String;

.field final d:I

.field final e:[B

.field final f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

.field final g:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field final h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# direct methods
.method constructor <init>(JLjava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->a:I

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->b:J

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->c:Ljava/lang/String;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;I[BLcom/google/maps/api/android/lib6/gmm6/l/ae;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->a:I

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->b:J

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->c:Ljava/lang/String;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    if-nez p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    return-void

    :cond_0
    invoke-interface {p6}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    goto :goto_0
.end method
