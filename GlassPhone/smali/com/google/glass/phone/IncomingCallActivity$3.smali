.class Lcom/google/glass/phone/IncomingCallActivity$3;
.super Ljava/lang/Object;
.source "IncomingCallActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/IncomingCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final audioLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/phone/IncomingCallActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/IncomingCallActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/glass/phone/IncomingCallActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/glass/phone/IncomingCallActivity$3;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$3;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    .line 127
    invoke-static {v0}, Lcom/google/glass/phone/IncomingCallActivity;->access$300(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "audioChangeListener"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$3;->audioLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 126
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$3;->audioLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Audio focus released or lost."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
