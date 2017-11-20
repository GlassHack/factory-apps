.class Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$BitmapCacheEntry;
.super Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;-><init>()V

    return-void
.end method


# virtual methods
.method decode([B)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic decode([B)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$BitmapCacheEntry;->decode([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
