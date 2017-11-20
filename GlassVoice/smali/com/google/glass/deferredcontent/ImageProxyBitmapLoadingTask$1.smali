.class Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$1;
.super Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;
.source "ImageProxyBitmapLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;Landroid/content/Context;Ljava/lang/String;III)V
    .locals 6
    .param p1, "this$0"    # Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "cropType"    # I

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$1;->this$0:Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$1;->bindContent(Ljava/lang/String;)V

    return-void
.end method

.method protected bindContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method protected prepareContent(F)V
    .locals 0
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 42
    return-void
.end method
