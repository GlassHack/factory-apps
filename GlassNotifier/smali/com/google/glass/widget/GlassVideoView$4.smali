.class Lcom/google/glass/widget/GlassVideoView$4;
.super Landroid/os/AsyncTask;
.source "GlassVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassVideoView;->setupThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassVideoView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$4;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$4;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView$4;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v1}, Lcom/google/glass/widget/GlassVideoView;->access$600(Lcom/google/glass/widget/GlassVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/GlassVideoView$4;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$4;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$700(Lcom/google/glass/widget/GlassVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/GlassVideoView$4;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
