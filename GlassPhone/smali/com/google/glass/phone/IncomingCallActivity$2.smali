.class Lcom/google/glass/phone/IncomingCallActivity$2;
.super Lcom/google/glass/phone/SimplePhoneCallListener;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/IncomingCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final listenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/phone/IncomingCallActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/IncomingCallActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/glass/phone/IncomingCallActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-direct {p0}, Lcom/google/glass/phone/SimplePhoneCallListener;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v0}, Lcom/google/glass/phone/IncomingCallActivity;->access$300(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "listener"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->listenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 3
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->listenerLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/phone/IncomingCallActivity;->access$802(Lcom/google/glass/phone/IncomingCallActivity;Z)Z

    .line 114
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/IncomingCallActivity;->finishAndTurnScreenOffIfRequested()V

    .line 115
    return-void
.end method

.method public onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->listenerLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallConnecting"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/phone/IncomingCallActivity;->access$802(Lcom/google/glass/phone/IncomingCallActivity;Z)Z

    .line 107
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v0, v3}, Lcom/google/glass/phone/IncomingCallActivity;->access$602(Lcom/google/glass/phone/IncomingCallActivity;Z)Z

    .line 108
    return-void
.end method

.method public onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 3
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->listenerLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/IncomingCallActivity;->finishAndTurnScreenOffIfRequested()V

    .line 101
    return-void
.end method

.method public onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->listenerLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallDisconnecting"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v0, v3}, Lcom/google/glass/phone/IncomingCallActivity;->access$602(Lcom/google/glass/phone/IncomingCallActivity;Z)Z

    .line 94
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v0}, Lcom/google/glass/phone/IncomingCallActivity;->access$700(Lcom/google/glass/phone/IncomingCallActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$string;->phone_call_hanging_up:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    return-void
.end method

.method public onCallError(Lcom/google/glass/phone/PhoneCall;)V
    .locals 1
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/IncomingCallActivity;->finishAndTurnScreenOffIfRequested()V

    .line 120
    return-void
.end method

.method public onCallerIdentified(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3
    .param p1, "caller"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->listenerLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallerIdentified"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v0, p1}, Lcom/google/glass/phone/IncomingCallActivity;->access$500(Lcom/google/glass/phone/IncomingCallActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 88
    return-void
.end method

.method public onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
    .locals 3
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->listenerLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPhoneNumberSet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$2;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v0, p2}, Lcom/google/glass/phone/IncomingCallActivity;->access$400(Lcom/google/glass/phone/IncomingCallActivity;Ljava/lang/String;)V

    .line 82
    return-void
.end method
