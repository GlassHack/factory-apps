.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/aq;
.super Ljava/lang/Object;


# instance fields
.field final a:[I

.field final b:[I

.field final c:[I

.field d:I

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aq;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aq;->b:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aq;->c:[I

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aq;->a:[I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aq;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    mul-int/lit8 v2, v0, 0x4

    aget v3, v1, v2

    if-gt v3, p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    if-gt v3, p2, :cond_0

    add-int/lit8 v3, v2, 0x2

    aget v3, v1, v3

    if-ge p1, v3, :cond_0

    add-int/lit8 v2, v2, 0x3

    aget v2, v1, v2

    if-ge p2, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aq;->b:[I

    aget v0, v1, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
