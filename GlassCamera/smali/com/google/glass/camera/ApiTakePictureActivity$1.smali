.class Lcom/google/glass/camera/ApiTakePictureActivity$1;
.super Landroid/os/AsyncTask;
.source "ApiTakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/ApiTakePictureActivity;->onPictureTaken(Lcom/google/glass/camera/Picture;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/ApiTakePictureActivity;Lcom/google/glass/camera/Picture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/ApiTakePictureActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    iput-object p2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/ApiTakePictureActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 98
    const-string v1, "thumb_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->val$picture:Lcom/google/glass/camera/Picture;

    .line 99
    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Lcom/google/glass/camera/CameraUtils;

    invoke-direct {v1}, Lcom/google/glass/camera/CameraUtils;-><init>()V

    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    .line 101
    invoke-static {v2}, Lcom/google/glass/camera/ApiTakePictureActivity;->access$000(Lcom/google/glass/camera/ApiTakePictureActivity;)Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v3}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 100
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/glass/camera/CameraUtils;->saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/ApiTakePictureActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/ApiTakePictureActivity;->access$100(Lcom/google/glass/camera/ApiTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "File path came back empty!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/ApiTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 109
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    invoke-virtual {v2, v5}, Lcom/google/glass/camera/ApiTakePictureActivity;->setResult(I)V

    .line 110
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/ApiTakePictureActivity;->finish()V

    .line 126
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/ApiTakePictureActivity;->access$100(Lcom/google/glass/camera/ApiTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Thumbnail file path: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-static {v2, v3}, Lcom/google/glass/camera/ApiTakePictureActivity;->access$202(Lcom/google/glass/camera/ApiTakePictureActivity;Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/Picture;

    .line 116
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    invoke-static {v2, p1}, Lcom/google/glass/camera/ApiTakePictureActivity;->access$302(Lcom/google/glass/camera/ApiTakePictureActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    sget v3, Lcom/google/glass/camera/R$id;->guard_phrase_hint:I

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/ApiTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, "tipText":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    sget v2, Lcom/google/glass/camera/R$string;->tap_to_accept_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity$1;->this$0:Lcom/google/glass/camera/ApiTakePictureActivity;

    sget v3, Lcom/google/glass/camera/R$id;->gradient:I

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/ApiTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "gradient":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
