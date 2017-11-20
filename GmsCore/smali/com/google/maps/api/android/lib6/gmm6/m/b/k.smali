.class public final Lcom/google/maps/api/android/lib6/gmm6/m/b/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

.field public final b:[B

.field public final c:I

.field public final d:[B


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    const v1, 0xffffff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->b:[B

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->b:[B

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->c:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->d:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I[BB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I[B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;[BB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;[B)V

    return-void
.end method
