.class Lcom/google/glass/widget/GifSupportingImageView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GifSupportingImageView;

.field final synthetic val$movie:Landroid/graphics/Movie;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/glass/widget/GifSupportingImageView$3;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    iput-object p2, p0, Lcom/google/glass/widget/GifSupportingImageView$3;->val$movie:Landroid/graphics/Movie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/widget/GifSupportingImageView$3;->this$0:Lcom/google/glass/widget/GifSupportingImageView;

    iget-object v1, p0, Lcom/google/glass/widget/GifSupportingImageView$3;->val$movie:Landroid/graphics/Movie;

    invoke-static {v0, v1}, Lcom/google/glass/widget/GifSupportingImageView;->access$100(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V

    .line 142
    return-void
.end method
