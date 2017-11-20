.class public Lcom/google/android/wearable/gmsclient/AssetUtil;
.super Ljava/lang/Object;
.source "AssetUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WearableClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAssetFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/wearable/Asset;->createFromBytes([B)Lcom/google/android/gms/wearable/Asset;

    move-result-object v1

    return-object v1
.end method

.method public static createAssetFromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/wearable/Asset;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 99
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 100
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/wearable/gmsclient/AssetUtil;->createAssetFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v4

    .line 113
    .local v2, "height":I
    .local v3, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 103
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 104
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 105
    .restart local v2    # "height":I
    if-lez v3, :cond_1

    if-gtz v2, :cond_2

    .line 106
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 108
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-static {v0}, Lcom/google/android/wearable/gmsclient/AssetUtil;->createAssetFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v4

    goto :goto_0
.end method

.method private static getBitmapOptionsForWearable()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v1, 0xf0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 87
    return-object v0
.end method

.method public static loadBitmapAssetFromResources(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Lcom/google/android/gms/wearable/Asset;
    .locals 5
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "bitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 52
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 55
    const-string v2, "WearableClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmapAssetFromResources: failed to decode bitmap resource for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v2, 0x0

    .line 59
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/google/android/wearable/gmsclient/AssetUtil;->createAssetFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v2

    goto :goto_0
.end method

.method public static loadBitmapAssetFromResources(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;)Lcom/google/android/gms/wearable/Asset;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "bitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 70
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    .local v1, "targetContext":Landroid/content/Context;
    invoke-static {v1, p2, p3}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapAssetFromResources(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v2

    .end local v1    # "targetContext":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "WearableClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmapAssetFromResources: failed to create package context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadBitmapAssetFromResourcesForWearable(Landroid/content/Context;I)Lcom/google/android/gms/wearable/Asset;
    .locals 1
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 30
    invoke-static {}, Lcom/google/android/wearable/gmsclient/AssetUtil;->getBitmapOptionsForWearable()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapAssetFromResources(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmapAssetFromResourcesForWearable(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/wearable/Asset;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    .prologue
    .line 41
    invoke-static {}, Lcom/google/android/wearable/gmsclient/AssetUtil;->getBitmapOptionsForWearable()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapAssetFromResources(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p1, "asset"    # Lcom/google/android/gms/wearable/Asset;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "asset must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    if-nez p0, :cond_1

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "assetManager must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/AssetManager;->getBitmapForAsset(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
