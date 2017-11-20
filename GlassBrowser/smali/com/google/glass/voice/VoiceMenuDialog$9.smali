.class Lcom/google/glass/voice/VoiceMenuDialog$9;
.super Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog;->createVoiceInputHelper(Landroid/content/Context;)Lcom/google/glass/voice/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;

.field final synthetic val$activity:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->val$activity:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method notifyActivity(Landroid/content/Context;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "command"    # Lcom/google/glass/voice/VoiceCommand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$9$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/voice/VoiceMenuDialog$9$3;-><init>(Lcom/google/glass/voice/VoiceMenuDialog$9;Landroid/content/Context;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 10
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 433
    iget-object v6, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v6}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1400(Lcom/google/glass/voice/VoiceMenuDialog;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog$9;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Ignoring voice command because we don\'t have window focus."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :goto_0
    return-object v5

    .line 438
    :cond_0
    iget-object v6, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v6}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1000(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v6

    if-eqz v6, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog$9;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Not settled on VoiceMenuDialog, ignoring voice command."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_1
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->VMNM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    .line 445
    invoke-virtual {v6}, Lcom/google/glass/voice/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$string;->voice_label_never_mind:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 447
    invoke-static {}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Never mind hotword detected, stepping back in the voice menu"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-virtual {v5}, Lcom/google/glass/voice/VoiceMenuDialog;->onBackPressed()V

    .line 450
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v5}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    sget-object v5, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 455
    :cond_2
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v5}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    iget-object v5, v5, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->config:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 458
    :cond_3
    iget-object v6, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v6}, Lcom/google/glass/voice/VoiceMenuDialog;->access$700(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->triggerVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 459
    .local v0, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    if-nez v0, :cond_4

    .line 460
    invoke-static {}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "No matching menu item found."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :cond_4
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->val$activity:Landroid/content/Context;

    invoke-virtual {v0, v5, v9}, Lcom/google/glass/voice/menu/VoiceMenuItem;->showErrors(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 465
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v5, v9, v8}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1600(Lcom/google/glass/voice/VoiceMenuDialog;ZZ)V

    .line 467
    sget-object v5, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto/16 :goto_0

    .line 470
    :cond_5
    new-instance v2, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    iget-object v5, v5, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-virtual {v5}, Lcom/google/glass/voice/VoiceInputHelper;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    new-instance v6, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;

    iget-object v7, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {v6, v7}, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    new-instance v7, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    iget-object v8, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {v7, v8}, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    invoke-direct {v2, v0, v5, v6, v7}, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;-><init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;)V

    .line 472
    .local v2, "menuState":Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v5}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 475
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getSubMenu()Ljava/util/List;

    move-result-object v4

    .line 476
    .local v4, "subMenu":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOverflowMenuCallback()Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v3

    .line 477
    .local v3, "overflowMenuCallback":Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
    if-eqz v3, :cond_6

    .line 478
    iget-object v5, v2, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->isEmptyVoiceMenu:Z

    .line 479
    iget-object v5, v2, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    invoke-interface {v3, v5}, Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;->onAttachedToMenu(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V

    .line 482
    :cond_6
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    new-instance v6, Lcom/google/glass/voice/VoiceMenuDialog$9$1;

    invoke-direct {v6, p0, v0}, Lcom/google/glass/voice/VoiceMenuDialog$9$1;-><init>(Lcom/google/glass/voice/VoiceMenuDialog$9;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    invoke-static {v5, v0, v6}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1700(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 490
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->val$activity:Landroid/content/Context;

    invoke-virtual {p0, v5, p1}, Lcom/google/glass/voice/VoiceMenuDialog$9;->notifyActivity(Landroid/content/Context;Lcom/google/glass/voice/VoiceCommand;)V

    .line 491
    invoke-static {v4}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->getVoiceConfig(Ljava/util/List;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    goto/16 :goto_0

    .line 494
    .end local v3    # "overflowMenuCallback":Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
    .end local v4    # "subMenu":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    :cond_7
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 495
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-virtual {v5, v2}, Lcom/google/glass/voice/VoiceMenuDialog;->startAction(Lcom/google/glass/voice/VoiceMenuDialog$MenuState;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    goto/16 :goto_0

    .line 498
    :cond_8
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->val$activity:Landroid/content/Context;

    invoke-virtual {p0, v5, p1}, Lcom/google/glass/voice/VoiceMenuDialog$9;->notifyActivity(Landroid/content/Context;Lcom/google/glass/voice/VoiceCommand;)V

    .line 502
    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$9$2;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/voice/VoiceMenuDialog$9$2;-><init>(Lcom/google/glass/voice/VoiceMenuDialog$9;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 512
    .local v1, "itemSelectedRunnable":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog$9;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v5, v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1700(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 513
    sget-object v5, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto/16 :goto_0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "expected"    # Z

    .prologue
    .line 424
    return-void
.end method
