.class Lcom/google/glass/widget/GlassVideoView$4;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassVideoView;

.field final synthetic val$thumbnailId:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassVideoView;I)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$4;->this$0:Lcom/google/glass/widget/GlassVideoView;

    iput p2, p0, Lcom/google/glass/widget/GlassVideoView$4;->val$thumbnailId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$4;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/widget/GlassVideoView$4;->val$thumbnailId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/GlassVideoView$4;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$4;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$600(Lcom/google/glass/widget/GlassVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/GlassVideoView$4;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
