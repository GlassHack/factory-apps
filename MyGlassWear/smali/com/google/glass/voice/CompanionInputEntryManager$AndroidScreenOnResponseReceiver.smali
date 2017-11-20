.class Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "CompanionInputEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/CompanionInputEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidScreenOnResponseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/CompanionInputEntryManager;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/CompanionInputEntryManager;)V
    .locals 3

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/CompanionInputEntryManager;Lcom/google/glass/voice/CompanionInputEntryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/voice/CompanionInputEntryManager;
    .param p2, "x1"    # Lcom/google/glass/voice/CompanionInputEntryManager$1;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;-><init>(Lcom/google/glass/voice/CompanionInputEntryManager;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-static {v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->access$200(Lcom/google/glass/voice/CompanionInputEntryManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.glass.extra.COMPANION_INTERACTIVE_STATE"

    .line 235
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-static {v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->access$200(Lcom/google/glass/voice/CompanionInputEntryManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "AndroidInteractiveResponseReceived"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-static {v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->access$400(Lcom/google/glass/voice/CompanionInputEntryManager;)Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;->onScreenOnResponseReceived()V

    .line 239
    :cond_0
    return-void
.end method
