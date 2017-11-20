.class public Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "LayoutOverlayActivity.java"


# static fields
.field public static final EXTRA_NAME:Ljava/lang/String; = "name"


# instance fields
.field private layoutOverlayAdapter:Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private scroller:Lcom/google/android/glass/widget/CardScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private getSelectedLayoutOverlay()Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    return-object v0
.end method

.method private setInitialScrollerSelection(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Leaving selection alone; overlay is currently OFF."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Selecting overlay %s in scroller."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->layoutOverlayAdapter:Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->layoutOverlayAdapter:Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->getItem(I)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1, v0}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 105
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Overlay %s found at position %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate() [savedInstanceState=%s]."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->layoutOverlayAdapter:Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;

    .line 42
    sget v0, Lcom/google/glass/settings/ui/R$id;->scroller:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 43
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v4}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->layoutOverlayAdapter:Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity$1;-><init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-void
.end method

.method onLayoutOverlayTapped()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->getSelectedLayoutOverlay()Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    .line 116
    .local v0, "overlay":Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "name"

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v3, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/settings/ui/R$string;->developer_setting_updated:I

    .line 121
    invoke-virtual {v3, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 122
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 123
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity$2;

    invoke-direct {v3, p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity$2;-><init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;)V

    .line 124
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 132
    return-void
.end method

.method public onPauseInternal()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 64
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 65
    return-void
.end method

.method public onResumeInternal()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 57
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->setInitialScrollerSelection(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onStartInternal()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStartInternal()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 76
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/google/glass/settings/ui/R$layout;->layout_overlay_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
