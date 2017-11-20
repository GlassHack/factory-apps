.class public Lcom/google/glass/deferredcontent/BitmapDecodingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "BitmapDecodingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultImageResource:I

.field private final height:I

.field private final imageData:[B

.field private final pictureView:Landroid/widget/ImageView;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[BLandroid/widget/ImageView;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageData"    # [B
    .param p3, "pictureView"    # Landroid/widget/ImageView;
    .param p4, "defaultImageResource"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->imageData:[B

    .line 40
    iput-object p3, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    .line 41
    iput p4, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->defaultImageResource:I

    .line 43
    iput p5, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->width:I

    .line 44
    iput p6, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->height:I

    .line 45
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "ei"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->imageData:[B

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    .line 65
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v1, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->width:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 67
    iget v1, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->height:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 69
    iget-object v1, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->imageData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->imageData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 2
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->defaultImageResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/BitmapDecodingTask;->showView(Landroid/view/View;Z)V

    .line 56
    return-void
.end method
