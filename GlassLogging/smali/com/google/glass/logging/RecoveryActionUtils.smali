.class public Lcom/google/glass/logging/RecoveryActionUtils;
.super Ljava/lang/Object;
.source "RecoveryActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/RecoveryActionUtils$1;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/RecoveryActionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handle(Landroid/content/Context;Lcom/google/glass/feedback/RecoveryAction;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recoveryAction"    # Lcom/google/glass/feedback/RecoveryAction;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    if-nez p1, :cond_1

    .line 25
    sget-object v2, Lcom/google/glass/logging/RecoveryActionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "RecoveryAction was null, taking no action."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    .line 30
    .local v0, "buildType":Lcom/google/glass/build/BuildHelper$Type;
    iget-object v2, p1, Lcom/google/glass/feedback/RecoveryAction;->buildTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    sget-object v2, Lcom/google/glass/logging/RecoveryActionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "recoveryAction %s overridden, does not apply to build type %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v0, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/google/glass/logging/RecoveryActionUtils$1;->$SwitchMap$com$google$glass$feedback$RecoveryAction:[I

    invoke-virtual {p1}, Lcom/google/glass/feedback/RecoveryAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 49
    :goto_1
    if-eqz v1, :cond_0

    .line 50
    sget-object v2, Lcom/google/glass/logging/RecoveryActionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Firing recovery action intent: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 52
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    :pswitch_0
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenShutdown;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    goto :goto_1

    .line 43
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
