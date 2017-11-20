.class Lcom/google/glass/camera/CameraApplication$1;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraApplication;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/camera/CameraApplication$1;->this$0:Lcom/google/glass/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(ZII)V
    .locals 3
    .param p1, "isConnected"    # Z
    .param p2, "remoteVersion"    # I
    .param p3, "localVersion"    # I

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.camera.photosync.ACTION_TRIGGER_PHOTO_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_IS_INITIAL_CONNECTION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/google/glass/camera/CameraApplication$1;->this$0:Lcom/google/glass/camera/CameraApplication;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/CameraApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
