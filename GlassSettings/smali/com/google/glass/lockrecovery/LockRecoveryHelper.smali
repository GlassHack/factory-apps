.class public Lcom/google/glass/lockrecovery/LockRecoveryHelper;
.super Ljava/lang/Object;
.source "LockRecoveryHelper.java"


# static fields
.field public static final ACTION_FETCH_RECOVERY_CODE:Ljava/lang/String; = "com.google.glass.action.FETCH_RECOVERY_CODE"

.field public static final ACTION_STORE_RECOVERY_CODE:Ljava/lang/String; = "com.google.glass.action.STORE_RECOVERY_CODE"

.field static final FETCH_CODE_ACTIVITY:Ljava/lang/String; = "com.google.glass.lockrecovery.FetchCodeActivity"

.field static final LOCKRECOVERY_PACKAGE:Ljava/lang/String; = "com.google.glass.lockrecovery"

.field static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECOVERY_CODE_EXTRA:Ljava/lang/String; = "RECOVERY_CODE"

.field static final RECOVERY_CODE_RECEIVER:Ljava/lang/String; = "com.google.glass.lockrecovery.RecoveryCodeReceiver"

.field public static final TUTORIAL_ACTIVITY:Ljava/lang/String; = "com.google.glass.lockrecovery.TutorialActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/lockrecovery/LockRecoveryHelper$1;

    invoke-direct {v1}, Lcom/google/glass/lockrecovery/LockRecoveryHelper$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doRecoveryFetch(Landroid/content/Context;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "handler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;>;"
    new-instance v6, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 110
    .local v6, "settingsSecure":Lcom/google/glass/util/SettingsSecure;
    new-instance v2, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;-><init>()V

    .line 111
    .local v2, "request":Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
    const-string v0, "android_id"

    invoke-virtual {v6, v0}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    .line 113
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->LOCKSCREEN_RECOVERY:Lcom/google/glass/net/ServerConstants$Action;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    move-object v5, p2

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    move-result v0

    return v0
.end method

.method public fetchRecoveryCode(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "requestId"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.FETCH_RECOVERY_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "fetchCodeIntent":Landroid/content/Intent;
    const-string v1, "com.google.glass.lockrecovery"

    const-string v2, "com.google.glass.lockrecovery.FetchCodeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method logFailureToEventLog(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V
    .locals 3
    .param p1, "helper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RECOVERY_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "r"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 124
    invoke-static {v1, p2, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public showTutorialVideo(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "requestId"    # I

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "tutorialIntent":Landroid/content/Intent;
    const-string v1, "com.google.glass.lockrecovery"

    const-string v2, "com.google.glass.lockrecovery.TutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 86
    return-void
.end method

.method public storeRecoveryCode(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recoveryCode"    # J

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.STORE_RECOVERY_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "storeCodeIntent":Landroid/content/Intent;
    const-string v1, "com.google.glass.lockrecovery"

    const-string v2, "com.google.glass.lockrecovery.RecoveryCodeReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "RECOVERY_CODE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 101
    return-void
.end method
