.class Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;
.super Landroid/util/LruCache;
.source "MemoryCachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/MemoryCachedBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/MemoryCachedBitmapFactory;


# direct methods
.method public constructor <init>(Lcom/google/glass/util/MemoryCachedBitmapFactory;I)V
    .locals 0
    .param p2, "maxCacheSizeKb"    # I

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->this$0:Lcom/google/glass/util/MemoryCachedBitmapFactory;

    .line 29
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
