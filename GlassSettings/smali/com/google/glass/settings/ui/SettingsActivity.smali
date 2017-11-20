.class public Lcom/google/glass/settings/ui/SettingsActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SettingsActivity.java"


# static fields
.field static final LOCKRECOVERY_CHANGE_OR_DISABLE_ID:I = 0x66

.field static final LOCKRECOVERY_CODE_REQUEST_ID:I = 0x65

.field static final LOCKRECOVERY_REQUEST_TUTORIAL_ID:I = 0x67


# instance fields
.field private adapter:Lcom/google/glass/settings/ui/SettingsAdapter;

.field private developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final observer:Landroid/database/DataSetObserver;

.field private onResumeTask:Landroid/content/Intent;

.field private scroller:Lcom/google/android/glass/widget/CardScrollView;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    new-instance v0, Lcom/google/glass/settings/ui/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/SettingsActivity$1;-><init>(Lcom/google/glass/settings/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->observer:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsActivity;->processOnResumeTask()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p1, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->onResumeTask:Landroid/content/Intent;

    goto :goto_0
.end method

.method private processOnResumeTask()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 234
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsActivity;->onResumeTask:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsActivity;->onResumeTask:Landroid/content/Intent;

    .line 239
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/google/glass/util/SettingsHelper;->idFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 240
    .local v0, "id":I
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v3

    check-cast v3, Lcom/google/glass/settings/ui/SettingsAdapter;

    invoke-virtual {v3, v0}, Lcom/google/glass/settings/ui/SettingsAdapter;->getIdPosition(I)I

    move-result v2

    .line 241
    .local v2, "pos":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "ID %s is not loaded, waiting for data to load."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/settings/ui/SettingsActivity;->onResumeTask:Landroid/content/Intent;

    .line 247
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Going to ID %s at position %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v3, v2}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    goto :goto_0
.end method

.method private toggleDeveloperSettingsCard()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 224
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/SettingsAdapter;

    .line 225
    .local v0, "adapter":Lcom/google/glass/settings/ui/SettingsAdapter;
    invoke-virtual {v0, v3}, Lcom/google/glass/settings/ui/SettingsAdapter;->removeView(I)V

    .line 226
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->DSC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v1}, Lcom/google/glass/settings/DeveloperSettingsHelper;->isAdbEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Lcom/google/glass/settings/ui/DeveloperSettingsItemView;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/DeveloperSettingsItemView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;I)V

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 205
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 206
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.glass.action.LOCKSCREEN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enable"

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 211
    const/16 v0, 0x13a

    if-ne p2, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User failed to enter their pattern -- starting QR-code scanner."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.glass.action.EMERGENCY_UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/SettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :cond_2
    const/16 v0, 0x67

    if-ne p1, v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Lock screen tutorial completed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown requestCode %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->getInstance()Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    .line 72
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 74
    sget v0, Lcom/google/glass/settings/ui/R$id;->scroller:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 75
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 77
    new-instance v0, Lcom/google/glass/settings/ui/SettingsAdapter;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/SettingsAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->adapter:Lcom/google/glass/settings/ui/SettingsAdapter;

    .line 78
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->adapter:Lcom/google/glass/settings/ui/SettingsAdapter;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsActivity;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 79
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsActivity;->adapter:Lcom/google/glass/settings/ui/SettingsAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/SettingsActivity$2;-><init>(Lcom/google/glass/settings/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/SettingsActivity$3;-><init>(Lcom/google/glass/settings/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/SettingsActivity;->handleIntent(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/SettingsAdapter;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsAdapter;->onActivityDestroyed()V

    .line 154
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->adapter:Lcom/google/glass/settings/ui/SettingsAdapter;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsActivity;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 155
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 156
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    const/16 v6, 0xb

    if-ne p1, v6, :cond_1

    move v3, v4

    .line 188
    .local v3, "spoken":Z
    :goto_0
    iget-object v6, p0, Lcom/google/glass/settings/ui/SettingsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/google/glass/util/ContextualMenuLogger;->logContexualCommand(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/CharSequence;Z)V

    .line 190
    iget-object v6, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v6}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .local v2, "selectedView":Landroid/view/View;
    move-object v1, v2

    .line 191
    check-cast v1, Lcom/google/glass/settings/ui/SettingsCard;

    .line 192
    .local v1, "selectedCard":Lcom/google/glass/settings/ui/SettingsCard;
    if-eqz v2, :cond_2

    invoke-virtual {v1, p2}, Lcom/google/glass/settings/ui/SettingsCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v4

    .line 196
    .local v0, "result":Z
    :goto_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_toggle_adb:I

    if-ne v4, v5, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsActivity;->toggleDeveloperSettingsCard()V

    .line 200
    :cond_0
    return v0

    .end local v0    # "result":Z
    .end local v1    # "selectedCard":Lcom/google/glass/settings/ui/SettingsCard;
    .end local v2    # "selectedView":Landroid/view/View;
    .end local v3    # "spoken":Z
    :cond_1
    move v3, v5

    .line 187
    goto :goto_0

    .restart local v1    # "selectedCard":Lcom/google/glass/settings/ui/SettingsCard;
    .restart local v2    # "selectedView":Landroid/view/View;
    .restart local v3    # "spoken":Z
    :cond_2
    move v0, v5

    .line 192
    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/SettingsActivity;->handleIntent(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method protected onPauseInternal()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 148
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 149
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 178
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .local v1, "selectedView":Landroid/view/View;
    move-object v0, v1

    .line 179
    check-cast v0, Lcom/google/glass/settings/ui/SettingsCard;

    .line 180
    .local v0, "selectedCard":Lcom/google/glass/settings/ui/SettingsCard;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const/16 v2, 0xb

    if-ne p1, v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, p3, v2}, Lcom/google/glass/settings/ui/SettingsCard;->onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-super {p0, p1, v1, p3}, Lcom/google/glass/app/GlassActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 180
    goto :goto_0

    :cond_1
    move v3, v4

    .line 182
    goto :goto_1
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 134
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 138
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/SettingsAdapter;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsAdapter;->refreshSettingsUi()V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsActivity;->processOnResumeTask()V

    .line 143
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/google/glass/settings/ui/R$layout;->settings_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
