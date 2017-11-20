.class Lcom/google/glass/voice/service/menu/VoiceMenuService$1;
.super Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;
.source "VoiceMenuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-direct {p0}, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService$1;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->maybeAddVignetteMenuItem(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addMenuItems(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "screenshotFilePath"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$700(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method private maybeAddVignetteMenuItem(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p3, "screenshotFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    .local p2, "contextualItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v8, 0x0

    .line 103
    if-nez p3, :cond_0

    .line 139
    .end local p1    # "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    :goto_0
    return-object p1

    .line 107
    .restart local p1    # "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    :cond_0
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->MAKE_A_VIGNETTE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v5}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Ljava/lang/String;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    .line 108
    .local v2, "vignetteCommandValue":Lcom/google/glass/voice/menu/CommandValue;
    iget-object v5, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    sget-object v6, Lcom/google/android/glass/app/ContextualMenus$Command;->MAKE_A_VIGNETTE:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 109
    invoke-static {v6}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "vignetteMenuLabel":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 113
    .local v0, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    invoke-static {}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Not adding vignette item, because there is a contextual one."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0    # "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_2
    new-instance v5, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v6, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-direct {v5, v6}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v5, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v5

    .line 122
    invoke-virtual {v5, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v5

    new-instance v6, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$3;

    invoke-direct {v6, p0, p3}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$3;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5, v6}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 132
    .local v3, "vignetteItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v5, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .line 134
    invoke-virtual {v5}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v1

    .line 135
    .local v1, "menuUsageContract":Lcom/google/glass/voice/menu/GlassMenuUsageContract;
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->MAKE_A_VIGNETTE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v5}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->insertOnlyIfPreviouslyUnknown(Ljava/lang/String;J)Z

    .line 138
    invoke-static {}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Added vignette item."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getSortedMainMenuItemsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public closeVoiceMenu()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$002(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$100(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputHelper;->unregisterGrammarLoaders()V

    .line 146
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$700(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$4;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$4;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public isVoiceMenuOpen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$600(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceMenuDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$600(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openVoiceMenu([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)V
    .locals 4
    .param p1, "remoteVoiceMenuItems"    # [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "screenshotFilePath":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->VVV:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v1}, Lcom/google/glass/util/ScreenshotUtil;->captureAndSaveScreenshot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v1, p3}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$002(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    .line 70
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$100(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceInputHelper;->registerGrammarLoaders()V

    .line 71
    invoke-interface {p3}, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$1;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$1;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 77
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v1, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$202(Lcom/google/glass/voice/service/menu/VoiceMenuService;[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .line 78
    invoke-direct {p0, p2, v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->addMenuItems(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 79
    return-void
.end method
