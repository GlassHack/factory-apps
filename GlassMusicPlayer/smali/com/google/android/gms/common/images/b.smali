.class final Lcom/google/android/gms/common/images/b;
.super Lcom/google/android/gms/internal/t;


# direct methods
.method private static a(Lcom/google/android/gms/common/images/f;Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/images/f;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/images/b;->a(Lcom/google/android/gms/common/images/f;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
