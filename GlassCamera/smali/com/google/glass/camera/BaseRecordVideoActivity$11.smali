.class Lcom/google/glass/camera/BaseRecordVideoActivity$11;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V
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
    .line 903
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$11;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$11;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->stopRecording()V

    .line 907
    return-void
.end method
