.class public final Lcom/google/glass/settings/ui/FactoryResetActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FactoryResetActivity.java"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/FactoryResetActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 4

    .prologue
    .line 26
    iget-object v1, p0, Lcom/google/glass/settings/ui/FactoryResetActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Requesting factory reset"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/FactoryResetActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 30
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "userEvent":Lcom/google/glass/userevent/UserEventHelper;
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->FACTORY_RESET:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 32
    invoke-virtual {v0}, Lcom/google/glass/userevent/UserEventHelper;->flush()V

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.deviceadmin.LOCAL_WIPE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/FactoryResetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    const/4 v1, 0x1

    return v1
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/google/glass/settings/ui/R$layout;->factory_reset_activity:I

    return v0
.end method
