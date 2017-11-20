.class Lcom/google/glass/camera/BaseRecordVideoActivity$6;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final audioChangeLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 394
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "audioChangeListener"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;->audioChangeLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 393
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 402
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;->audioChangeLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Audio focus released or lost."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
