.class final Lcom/google/android/gms/common/images/a;
.super Lcom/google/android/gms/common/internal/a/a;
.source "SourceFile"


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 649
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
