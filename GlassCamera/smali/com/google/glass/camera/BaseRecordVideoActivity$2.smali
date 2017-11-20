.class Lcom/google/glass/camera/BaseRecordVideoActivity$2;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
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
    .line 192
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 196
    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$700(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v0

    .line 197
    .local v0, "elapsedTime":J
    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v4, v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$800(Lcom/google/glass/camera/BaseRecordVideoActivity;J)V

    .line 200
    rem-long v4, v0, v6

    sub-long v2, v6, v4

    .line 201
    .local v2, "nextSecond":J
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v5}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$900(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    return-void
.end method
