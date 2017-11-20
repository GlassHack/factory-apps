.class Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$4;

.field final synthetic val$bytes:[B

.field final synthetic val$postviewSize:Lcom/google/glass/camera/Size;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$PictureRequest$4;[BLcom/google/glass/camera/Size;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$4;

    iput-object p2, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->val$bytes:[B

    iput-object p3, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$4;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest$4;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->val$bytes:[B

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    iget v2, v2, Lcom/google/glass/camera/Size;->width:I

    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    iget v3, v3, Lcom/google/glass/camera/Size;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/camera/Picture;->saveThumbnail([BII)V

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$4;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest$4;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->this$2:Lcom/google/glass/camera/CameraClient$PictureRequest$4;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest$4;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraListener;->onPictureTaken(Lcom/google/glass/camera/Picture;)V

    .line 203
    return-void
.end method
