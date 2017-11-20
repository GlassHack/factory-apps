.class public Lcom/google/glass/logging/RaftLogsReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "RaftLogsReceiver.java"


# static fields
.field private static final GSERVICES_KEY_RAFT_LOGS:Ljava/lang/String; = "raft_logs"

.field private static final PERSIST_KEY_RAFT_LOGS:Ljava/lang/String; = "persist.sys.raft_logs"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/RaftLogsReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/logging/RaftLogsReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "raft_logs"

    invoke-static {v1, v2, v5}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 28
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/google/glass/logging/RaftLogsReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Toggling raft logs [enabled=%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getInstance()Lcom/google/android/glass/hidden/HiddenSystemProperties;

    move-result-object v1

    const-string v2, "persist.sys.raft_logs"

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
