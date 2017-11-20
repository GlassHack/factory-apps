.class Lcom/google/glass/camera/BaseRecordVideoActivity$10;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$10;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$10;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$10;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v2, v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$10;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$3200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/TextureView;

    move-result-object v3

    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$10;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$3300(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/glass/camera/RecordingService;->startRecording(Lcom/google/glass/camera/RecordingServiceListener;Landroid/view/TextureView;Z)V

    .line 872
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
