.class public Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "AuthErrorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/AuthErrorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GlassSetupRequestBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/AuthErrorService;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/AuthErrorService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/setup/AuthErrorService;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/AuthErrorService;

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.companion.SETUP_GLASS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/AuthErrorService;Lcom/google/glass/setup/AuthErrorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/AuthErrorService;
    .param p2, "x1"    # Lcom/google/glass/setup/AuthErrorService$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;-><init>(Lcom/google/glass/setup/AuthErrorService;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/google/glass/setup/AuthErrorService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    invoke-static {}, Lcom/google/glass/setup/AuthErrorService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Setup request received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.glass.companion.SETUP_GLASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/AuthErrorService;

    const-string v2, "setup_string"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/setup/AuthErrorService;->handleSetupViaCompanionApp(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method
