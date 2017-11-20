.class Lcom/google/glass/widget/GifSupportingImageView$2;
.super Ljava/lang/Object;
.source "GifSupportingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GifSupportingImageView;->setGifFromResource(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GifSupportingImageView;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GifSupportingImageView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GifSupportingImageView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/widget/GifSupportingImageView$2;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    iput p2, p0, Lcom/google/glass/widget/GifSupportingImageView$2;->val$resourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/glass/widget/GifSupportingImageView$2;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    invoke-virtual {v1}, Lcom/google/glass/widget/GifSupportingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/widget/GifSupportingImageView$2;->val$resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    .line 66
    .local v0, "decoded":Landroid/graphics/Movie;
    iget-object v1, p0, Lcom/google/glass/widget/GifSupportingImageView$2;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    invoke-static {v1, v0}, Lcom/google/glass/widget/GifSupportingImageView;->access$000(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V

    .line 67
    return-void
.end method
