.class Lcom/google/glass/camera/BaseRecordVideoActivity$5;
.super Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;->createBatteryStateTipRunnable()Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p2, "tipResId"    # I
    .param p3, "shouldTimeout"    # Z

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;IZ)V

    return-void
.end method


# virtual methods
.method getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/batteryStateTipRunnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onTipHidden()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method
