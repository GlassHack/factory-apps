.class Lcom/google/glass/camera/CameraClient$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$12;->this$0:Lcom/google/glass/camera/CameraClient;

    iput-object p2, p0, Lcom/google/glass/camera/CameraClient$12;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$12;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$12;->val$message:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraListener;->onError(Ljava/lang/Exception;)V

    .line 961
    return-void
.end method
