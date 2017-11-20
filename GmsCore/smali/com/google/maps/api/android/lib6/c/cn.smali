.class public final Lcom/google/maps/api/android/lib6/c/cn;
.super Lcom/google/maps/api/android/lib6/c/cj;


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/cj;-><init>(B)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/cn;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/c/cn;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cn;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/c/cn;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/maps/api/android/lib6/c/cn;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cn;->a:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/c/cn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/cn;->a:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
