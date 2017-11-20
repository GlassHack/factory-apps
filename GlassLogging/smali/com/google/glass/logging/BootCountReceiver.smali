.class public Lcom/google/glass/logging/BootCountReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "BootCountReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/BootCountReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    const-string v0, "ro.build.fingerprint"

    const-string v1, "unknown build version"

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 19
    sget-object v4, Lcom/google/glass/logging/BootCountReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown action received: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->getInstance()Lcom/google/glass/userevent/UserEventPreferences$Provider;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventPreferences;

    move-result-object v3

    .line 23
    .local v3, "userEventPreferences":Lcom/google/glass/userevent/UserEventPreferences;
    invoke-virtual {v3}, Lcom/google/glass/userevent/UserEventPreferences;->getBootCount()I

    move-result v0

    .line 24
    .local v0, "bootCount":I
    invoke-direct {p0}, Lcom/google/glass/logging/BootCountReceiver;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "buildFingerprint":Ljava/lang/String;
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 37
    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/glass/userevent/UserEventPreferences;->setBootCount(I)V

    .line 38
    invoke-virtual {v3, v1}, Lcom/google/glass/userevent/UserEventPreferences;->setBuildFingerprint(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/userevent/UserEventPreferences;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "buildFingerprintPref":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
