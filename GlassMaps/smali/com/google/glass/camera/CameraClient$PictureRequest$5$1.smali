.class Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$PictureRequest$5;[B)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iput-object p2, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->val$bytes:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->val$bytes:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/Picture;->saveJpeg(Landroid/content/Context;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to save the picture."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraListener;->onPictureSaved(Lcom/google/glass/camera/Picture;)V

    .line 240
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Done with jpeg callback, removing picture callback client."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->pictureRequestList:Ljava/util/List;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
