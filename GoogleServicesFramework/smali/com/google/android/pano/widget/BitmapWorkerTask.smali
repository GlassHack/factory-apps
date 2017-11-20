.class public Lcom/google/android/pano/widget/BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/pano/widget/BitmapWorkerOptions;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mScaled:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mImageView:Ljava/lang/ref/WeakReference;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mScaled:Z

    .line 59
    return-void
.end method

.method private static createIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "workerOptions"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 312
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 313
    .local v3, "width":I
    if-ne v3, v4, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v3

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 317
    .local v2, "height":I
    if-ne v2, v4, :cond_1

    .line 318
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v2

    .line 320
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    return-object v0
.end method

.method private decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    const/4 v0, 0x0

    .line 190
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    new-instance v3, Lcom/google/android/pano/util/CachedInputStream;

    invoke-direct {v3, p1}, Lcom/google/android/pano/util/CachedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v2    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    .local v3, "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    const v9, 0x7fffffff

    :try_start_1
    invoke-virtual {v3, v9}, Lcom/google/android/pano/util/CachedInputStream;->setOverrideMarkLimit(I)V

    .line 194
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .local v1, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    :try_start_2
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    invoke-virtual {p2}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 197
    invoke-virtual {p2}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    iput-object v9, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 199
    :cond_0
    invoke-static {}, Lcom/google/android/pano/util/ByteArrayPool;->get16KBPool()Lcom/google/android/pano/util/ByteArrayPool;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/pano/util/ByteArrayPool;->allocateChunk()[B

    move-result-object v9

    iput-object v9, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 200
    const v9, 0x7fffffff

    invoke-virtual {v3, v9}, Lcom/google/android/pano/util/CachedInputStream;->mark(I)V

    .line 201
    const/4 v9, 0x0

    invoke-static {v3, v9, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 203
    const/high16 v5, 0x3f800000    # 1.0f

    .line 205
    .local v5, "heightScale":F
    invoke-virtual {p2}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v4

    .line 206
    .local v4, "height":I
    if-lez v4, :cond_1

    .line 207
    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    int-to-float v10, v4

    div-float v5, v9, v10

    .line 211
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    .line 213
    .local v8, "widthScale":F
    invoke-virtual {p2}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v7

    .line 214
    .local v7, "width":I
    if-lez v7, :cond_2

    .line 215
    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 219
    :cond_2
    cmpl-float v9, v5, v8

    if-lez v9, :cond_6

    move v6, v5

    .line 228
    .local v6, "scale":F
    :goto_0
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_3

    .line 230
    float-to-int v9, v6

    iput v9, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 233
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/pano/util/CachedInputStream;->reset()V

    .line 234
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/android/pano/util/CachedInputStream;->setOverrideMarkLimit(I)V

    .line 235
    const/4 v9, 0x0

    invoke-static {v3, v9, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/google/android/pano/widget/BitmapWorkerTask;->scaleBitmapIfNecessary(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 240
    if-eqz v1, :cond_4

    .line 241
    invoke-static {}, Lcom/google/android/pano/util/ByteArrayPool;->get16KBPool()Lcom/google/android/pano/util/ByteArrayPool;

    move-result-object v10

    iget-object v11, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    invoke-virtual {v10, v11}, Lcom/google/android/pano/util/ByteArrayPool;->releaseChunk([B)V

    .line 243
    :cond_4
    if-eqz v3, :cond_5

    .line 244
    invoke-virtual {v3}, Lcom/google/android/pano/util/CachedInputStream;->close()V

    :cond_5
    return-object v9

    .end local v6    # "scale":F
    :cond_6
    move v6, v8

    .line 219
    goto :goto_0

    .line 240
    .end local v1    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    .end local v4    # "height":I
    .end local v5    # "heightScale":F
    .end local v7    # "width":I
    .end local v8    # "widthScale":F
    .restart local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v0, :cond_7

    .line 241
    invoke-static {}, Lcom/google/android/pano/util/ByteArrayPool;->get16KBPool()Lcom/google/android/pano/util/ByteArrayPool;

    move-result-object v10

    iget-object v11, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    invoke-virtual {v10, v11}, Lcom/google/android/pano/util/ByteArrayPool;->releaseChunk([B)V

    .line 243
    :cond_7
    if-eqz v2, :cond_8

    .line 244
    invoke-virtual {v2}, Lcom/google/android/pano/util/CachedInputStream;->close()V

    :cond_8
    throw v9

    .line 240
    .end local v2    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    .restart local v3    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    .restart local v2    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    goto :goto_1

    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    .restart local v1    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    move-object v2, v3

    .end local v3    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    .restart local v2    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    goto :goto_1
.end method

.method private getAccountImage(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    const/4 v9, 0x0

    .line 339
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/pano/data/util/UriUtils;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "accountName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 342
    .local v3, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 343
    const/4 v8, 0x0

    .line 344
    .local v8, "thisAccount":Landroid/accounts/Account;
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 346
    .local v0, "account":Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 347
    move-object v8, v0

    .line 351
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    if-eqz v8, :cond_1

    .line 352
    invoke-static {v3, v8}, Lcom/google/android/pano/util/AccountImageHelper;->getAccountPictureUri(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, "picUriString":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 354
    new-instance v9, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    invoke-direct {v9, v3}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->width(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->height(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getCacheFlag()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->cacheFlag(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v9

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->resource(Landroid/net/Uri;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v6

    .line 361
    .local v6, "optionBuilder":Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;
    invoke-static {v3}, Lcom/google/android/pano/widget/BitmapDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->build()Lcom/google/android/pano/widget/BitmapWorkerOptions;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/pano/widget/BitmapDownloader;->loadBitmapBlocking(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 367
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "optionBuilder":Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;
    .end local v7    # "picUriString":Ljava/lang/String;
    .end local v8    # "thisAccount":Landroid/accounts/Account;
    :cond_1
    return-object v9

    .line 344
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v2    # "arr$":[Landroid/accounts/Account;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v8    # "thisAccount":Landroid/accounts/Account;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getBitmapFromContent(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 270
    .local v0, "bitmapStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0, v0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 275
    :goto_0
    return-object v1

    .line 273
    :cond_0
    const-string v1, "BitmapWorker"

    const-string v2, "Content provider returned a null InputStream when trying to open resource."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBitmapFromHttp(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 256
    .local v0, "connection":Ljava/net/URLConnection;
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 257
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 258
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 259
    .local v1, "in":Ljava/io/InputStream;
    invoke-direct {p0, v1, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    return-object v3

    .line 261
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method private getBitmapFromResource(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconResource"    # Landroid/content/Intent$ShortcutIconResource;
    .param p3, "outputOptions"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v2, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 120
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 122
    .local v3, "resourceName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/pano/widget/BitmapWorkerTask;->loadDrawable(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "drawable":Ljava/lang/Object;
    instance-of v5, v0, Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 125
    check-cast v0, Ljava/io/InputStream;

    .end local v0    # "drawable":Ljava/lang/Object;
    invoke-direct {p0, v0, p3}, Lcom/google/android/pano/widget/BitmapWorkerTask;->decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 137
    :goto_0
    return-object v4

    .line 126
    .restart local v0    # "drawable":Ljava/lang/Object;
    :cond_0
    instance-of v5, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 127
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .end local v0    # "drawable":Ljava/lang/Object;
    invoke-static {v0, p3}, Lcom/google/android/pano/widget/BitmapWorkerTask;->createIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 129
    .restart local v0    # "drawable":Ljava/lang/Object;
    :cond_1
    const-string v5, "BitmapWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBitmapFromResource failed, unrecognized resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 132
    .end local v0    # "drawable":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BitmapWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "! NameNotFound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 136
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "BitmapWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "! NotFound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadDrawable(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/Intent$ShortcutIconResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 290
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-object v3

    .line 293
    :cond_0
    iget-object v4, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 294
    .local v0, "id":I
    if-nez v0, :cond_1

    .line 295
    const-string v4, "BitmapWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in resources of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 300
    .local v2, "value":Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 301
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_4

    .line 304
    :cond_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 306
    :cond_4
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0
.end method

.method private scaleBitmapIfNecessary(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "outputOptions"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    .line 149
    if-nez p2, :cond_1

    .line 150
    const/4 p2, 0x0

    .line 181
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p2

    .line 153
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 155
    .local v1, "heightScale":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 160
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 162
    .local v5, "widthScale":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 166
    :cond_3
    cmpg-float v6, v1, v5

    if-gez v6, :cond_4

    move v3, v1

    .line 167
    .local v3, "scale":F
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v6

    if-gez v6, :cond_0

    .line 170
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 171
    .local v4, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v0, v6

    .line 179
    .local v0, "height":I
    invoke-static {p2, v4, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 180
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    iput-boolean v8, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mScaled:Z

    move-object p2, v2

    .line 181
    goto :goto_0

    .end local v0    # "height":I
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    .end local v4    # "width":I
    :cond_4
    move v3, v5

    .line 166
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 64
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/BitmapWorkerTask;->retrieveBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final isScaled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mScaled:Z

    return v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected retrieveBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "workerOptions"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromResource(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 74
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/pano/data/util/UriUtils;->isAndroidResourceUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/pano/data/util/UriUtils;->isShortcutIconResourceUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/pano/data/util/UriUtils;->getIconResource(Landroid/net/Uri;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromResource(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/pano/data/util/UriUtils;->isWebUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromHttp(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/pano/data/util/UriUtils;->isContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromContent(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/pano/data/util/UriUtils;->isAccountImageUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getAccountImage(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_5
    const-string v2, "BitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading bitmap - unknown resource URI! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_1
    const-string v2, "BitmapWorker"

    const-string v3, "Error loading bitmap - no source!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "BitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Critical Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
