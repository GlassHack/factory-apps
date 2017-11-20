.class Lcom/google/glass/widget/GifSupportingImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GifSupportingImageView;

.field final synthetic val$pathName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GifSupportingImageView;Ljava/lang/String;)V
    .locals 0

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
    iget-object v0, p0, Lcom/google/glass/widget/GifSupportingImageView$1;->val$pathName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/glass/widget/GifSupportingImageView$1;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    invoke-static {v1, v0}, Lcom/google/glass/widget/GifSupportingImageView;->access$000(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V

    .line 54
    return-void
.end method
