.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/o/l;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NativeAllocator"

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->c()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/w;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b(Z)V

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "OutOfMemory in createBitmap"

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "OutOfMemory in decodeByteArray"

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)Ljava/nio/ByteBuffer;
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "OutOfMemory in allocateDirectByteBuffer"

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
