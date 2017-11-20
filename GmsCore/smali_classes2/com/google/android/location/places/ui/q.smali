.class public final Lcom/google/android/location/places/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/f/q;

.field final b:Landroid/support/v4/f/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    const v2, 0x7f080007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 30
    const v2, 0x7f0201e0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 31
    const v2, 0x7f0201cb

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 32
    new-instance v0, Landroid/support/v4/f/q;

    array-length v2, v4

    invoke-direct {v0, v2}, Landroid/support/v4/f/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/q;->a:Landroid/support/v4/f/q;

    .line 33
    new-instance v0, Landroid/support/v4/f/q;

    array-length v2, v4

    invoke-direct {v0, v2}, Landroid/support/v4/f/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/q;->b:Landroid/support/v4/f/q;

    .line 36
    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0, p1}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v7

    .line 37
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {v0, p1}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v8

    move v0, v1

    move v2, v1

    move v3, v1

    .line 40
    :goto_0
    array-length v9, v4

    if-ge v0, v9, :cond_0

    .line 42
    invoke-static {v5, v3, v1, v7, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 44
    iget-object v10, p0, Lcom/google/android/location/places/ui/q;->a:Landroid/support/v4/f/q;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11, v9}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/2addr v3, v7

    .line 46
    invoke-static {v6, v2, v1, v8, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 48
    iget-object v10, p0, Lcom/google/android/location/places/ui/q;->b:Landroid/support/v4/f/q;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11, v9}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/2addr v2, v8

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
