.class public Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "CnsMyGlassWaitingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$1;,
        Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final companionStateListener:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;

.field private launchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->companionStateListener:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->launchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->launchIntent:Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->companionStateListener:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 41
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->companionStateListener:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 51
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 52
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->launchIntent:Landroid/content/Intent;

    .line 58
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/google/glass/bluetooth/R$layout;->cns_myglass_waiting_activity:I

    return v0
.end method

.method protected useCardScrollView()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
