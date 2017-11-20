.class Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 3

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    .line 800
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/VoiceMenuDialog$1;)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 810
    invoke-static {}, Lcom/google/glass/voice/VoiceMenuDialog;->access$2000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$700(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->onConnectivityChanged()V

    .line 806
    return-void
.end method
