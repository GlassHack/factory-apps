.class public Lcom/google/glass/setup/ShutdownRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownRequestReceiver.java"


# static fields
.field public static final ACTION_FORCE_SHUTDOWN:Ljava/lang/String; = "com.google.glass.setup.action.REQUEST_SHUTDOWN"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/ShutdownRequestReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v0, "com.google.glass.setup.action.REQUEST_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/google/glass/setup/ShutdownRequestReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Shutting down the device during setup..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_IN_SETUP:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 33
    invoke-static {p1}, Lcom/google/android/glass/hidden/HiddenShutdown;->now(Landroid/content/Context;)V

    goto :goto_0
.end method
