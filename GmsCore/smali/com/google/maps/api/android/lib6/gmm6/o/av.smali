.class final Lcom/google/maps/api/android/lib6/gmm6/o/av;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/HashMap;

.field b:[Lcom/google/maps/api/android/lib6/gmm6/o/av;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
    .locals 2

    shr-int v0, p0, p2

    and-int/lit8 v0, v0, 0x1

    shr-int v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/at;

    goto :goto_0
.end method
