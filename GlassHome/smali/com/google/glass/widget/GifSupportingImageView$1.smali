.class Lcom/google/glass/widget/GifSupportingImageView$1;
.super Ljava/lang/Object;
.source "GifSupportingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GifSupportingImageView;->setGifFromFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GifSupportingImageView;

.field final synthetic val$pathName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GifSupportingImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GifSupportingImageView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/widget/GifSupportingImageView$1;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    iput-object p2, p0, Lcom/google/glass/widget/GifSupportingImageView$1;->val$pathName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/glass/widget/GifSupportingImageView$1;->val$pathName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    .line 53
    .local v0, "decoded":Landroid/graphics/Movie;
    iget-object v1, p0, Lcom/google/glass/widget/GifSupportingImageView$1;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    invoke-static {v1, v0}, Lcom/google/glass/widget/GifSupportingImageView;->access$000(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V

    .line 54
    return-void
.end method
