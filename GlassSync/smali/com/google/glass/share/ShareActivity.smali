.class public Lcom/google/glass/share/ShareActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "ShareActivity.java"

# interfaces
.implements Lcom/google/glass/share/ShareEntityListFragment$Listener;
.implements Lcom/google/glass/share/ShareDraftFragment$Listener;
.implements Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;


# instance fields
.field private annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

.field private disableSelection:Z

.field private glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

.field private goToTimelineAfterShare:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private menuAction:I

.field private photoShareConfig:Lcom/google/glass/voice/VoiceConfig;

.field private shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

.field private shareEntityConfirmed:Z

.field private shareEntityListFragment:Lcom/google/glass/share/ShareEntityListFragment;

.field private shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

.field private shouldShowShareTargets:Z

.field private temporaryShareCreated:Z

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final voiceAnnotationCallback:Lcom/google/glass/voice/ActionController$Callback;

.field private wentToTimelineItem:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 83
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 86
    new-instance v0, Lcom/google/glass/share/ShareActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/share/ShareActivity$1;-><init>(Lcom/google/glass/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->voiceAnnotationCallback:Lcom/google/glass/voice/ActionController$Callback;

    .line 126
    iput-boolean v1, p0, Lcom/google/glass/share/ShareActivity;->temporaryShareCreated:Z

    .line 127
    iput-boolean v1, p0, Lcom/google/glass/share/ShareActivity;->shareEntityConfirmed:Z

    .line 128
    iput-boolean v1, p0, Lcom/google/glass/share/ShareActivity;->wentToTimelineItem:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/share/ShareActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareActivity;->processAnnotationResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/share/ShareActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->goToTimelineAfterShare:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/share/ShareActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/glass/share/ShareActivity;->temporaryShareCreated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/share/ShareTimelineItemJob;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/share/ShareDraftFragment;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/share/ShareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/glass/share/ShareActivity;->goToTimelineIfRequested()V

    return-void
.end method

.method private allowAnnotation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 3
    .param p1, "shareTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-static {p1}, Lcom/google/glass/share/ShareActivity;->entitySupportsCaption(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "voice_annotation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static entitySupportsCaption(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 4
    .param p0, "shareTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v0

    .line 359
    .local v0, "entitySupportsCaption":Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v1

    .line 361
    .local v1, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v0

    .line 366
    .end local v1    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_0
    return v0
.end method

.method private getAnnotationIntent(Z)Landroid/content/Intent;
    .locals 4
    .param p1, "fromVoiceMenu"    # Z

    .prologue
    const/4 v2, 0x1

    .line 482
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationIntent()Landroid/content/Intent;

    move-result-object v0

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "hide_header"

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    const-string v1, "header_msg"

    sget-object v3, Lcom/google/android/glass/app/ContextualMenus$Command;->ADD_A_CAPTION:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 486
    invoke-static {v3}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v1, "hide_adding_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    return-object v0

    .line 484
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private goToTimelineIfRequested()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 512
    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->wentToTimelineItem:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->goToTimelineAfterShare:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->temporaryShareCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->shareEntityConfirmed:Z

    if-eqz v0, :cond_0

    .line 514
    iput-boolean v2, p0, Lcom/google/glass/share/ShareActivity;->wentToTimelineItem:Z

    .line 515
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->finish()V

    .line 516
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    .line 517
    invoke-virtual {v1}, Lcom/google/glass/share/ShareTimelineItemJob;->getShareTimelineId()Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v1

    .line 516
    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 519
    :cond_0
    return-void
.end method

.method private processAnnotationResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "annotation"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Annotation was empty, chances are user cancelled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0, p1}, Lcom/google/glass/share/ShareTimelineItemJob;->setAnnotation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSharingDraftView()V
    .locals 3

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/google/glass/sync/R$id;->share_container:I

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 454
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 456
    return-void
.end method

.method private showSharingMessage()V
    .locals 7

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 403
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "progress_string"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "progressMessage":Ljava/lang/String;
    const-string v5, "confirmed_string"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "confirmedMessage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    sget v5, Lcom/google/glass/sync/R$string;->sharing_menu_share_confirming:I

    invoke-virtual {p0, v5}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    sget v5, Lcom/google/glass/sync/R$string;->sharing_menu_share_confirmed:I

    invoke-virtual {p0, v5}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    :cond_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 413
    .local v3, "messageDialog":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/widget/MessageDialog;>;"
    new-instance v5, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 414
    invoke-virtual {v5, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    sget v6, Lcom/google/glass/sync/R$drawable;->ic_share_50:I

    .line 415
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 416
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/glass/share/ShareActivity$3;

    invoke-direct {v6, p0, v3}, Lcom/google/glass/share/ShareActivity$3;-><init>(Lcom/google/glass/share/ShareActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 417
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 443
    .local v0, "builder":Lcom/google/glass/widget/MessageDialog$Builder;
    iget-boolean v5, p0, Lcom/google/glass/share/ShareActivity;->goToTimelineAfterShare:Z

    if-nez v5, :cond_2

    .line 444
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    sget v6, Lcom/google/glass/sync/R$drawable;->ic_done_50:I

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 446
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 447
    invoke-static {}, Lcom/google/glass/widget/MessageDialogManager$Provider;->getInstance()Lcom/google/glass/widget/MessageDialogManager$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/widget/MessageDialogManager$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/widget/MessageDialogManager;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialogManager;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 448
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onAttachedToWindow()V

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/glass/sync/R$anim;->contextual_enter:I

    .line 140
    invoke-static {p0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 141
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 158
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 159
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    new-array v1, v13, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->ADD_A_CAPTION:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 161
    invoke-static {v2}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v13}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->photoShareConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 164
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 165
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 166
    new-instance v1, Lcom/google/glass/widget/GlasswareIconBinder;

    .line 167
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v1, v0}, Lcom/google/glass/widget/GlasswareIconBinder;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v1, p0, Lcom/google/glass/share/ShareActivity;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    .line 168
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 169
    new-instance v0, Lcom/google/glass/share/ShareDraftFragment;

    invoke-direct {v0}, Lcom/google/glass/share/ShareDraftFragment;-><init>()V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    .line 170
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0, p0}, Lcom/google/glass/share/ShareDraftFragment;->setListener(Lcom/google/glass/share/ShareDraftFragment$Listener;)V

    .line 172
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 173
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/google/glass/share/ShareActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 175
    new-instance v0, Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v1, "origin_log_data"

    .line 176
    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/share/ShareActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/share/ShareTimelineItemJob;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    .line 179
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareTimelineItemJob;->start()V

    .line 183
    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->shouldShowShareTargets:Z

    if-nez v0, :cond_0

    .line 184
    const-string v0, "chosen_share_target"

    .line 185
    invoke-static {v9, v0}, Lcom/google/glass/entity/EntityUtils;->getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v6

    .line 186
    .local v6, "chosenShareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {p0, v6}, Lcom/google/glass/share/ShareActivity;->onShareTargetSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    .line 222
    .end local v6    # "chosenShareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "valid_share_target_count"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 192
    .local v10, "shareTargetCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v11, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    if-lez v10, :cond_2

    .line 194
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "valid_share_target"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityUtils;->getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v7

    .line 197
    .local v7, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v7, :cond_1

    .line 198
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 202
    .end local v7    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No share targets provided to ShareActivity!"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    sget v0, Lcom/google/glass/sync/R$string;->sharing_no_share_targets:I

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareActivity;->showMessage(I)V

    .line 207
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to load share targets!"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "disable_selection"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->disableSelection:Z

    goto :goto_0

    .line 209
    :cond_4
    new-instance v0, Lcom/google/glass/share/ShareEntityListFragment;

    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    iget v2, p0, Lcom/google/glass/share/ShareActivity;->menuAction:I

    invoke-direct {v0, p0, v1, v2, v11}, Lcom/google/glass/share/ShareEntityListFragment;-><init>(Lcom/google/glass/share/ShareEntityListFragment$Listener;Lcom/google/glass/widget/GlasswareIconBinder;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareEntityListFragment:Lcom/google/glass/share/ShareEntityListFragment;

    .line 211
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showOptionMenu has %s share targets to show."

    new-array v2, v13, [Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v12}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/google/glass/sync/R$id;->share_container:I

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareEntityListFragment:Lcom/google/glass/share/ShareEntityListFragment;

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/sync/R$menu;->share_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDestroyInternal()V

    .line 248
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareTimelineItemJob;->cancelIfNotFinished()V

    .line 249
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 3
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->shouldShowShareTargets:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/glass/sync/R$anim;->contextual_exit:I

    .line 256
    invoke-static {p0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 258
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 266
    :goto_0
    return v2

    .line 262
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/share/ShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 263
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareTimelineItemJob;->cancelIfNotFinished()V

    .line 264
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->finish()V

    .line 265
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onNewIntent(%s)"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareActivity;->setIntent(Landroid/content/Intent;)V

    .line 148
    const-string v2, "animateToTimelineItem"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/share/ShareActivity;->goToTimelineAfterShare:Z

    .line 150
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "chosen_share_target"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->shouldShowShareTargets:Z

    .line 151
    const-string v0, "menuAction"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/share/ShareActivity;->menuAction:I

    .line 153
    return-void

    :cond_0
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/google/glass/sync/R$id;->share_menu_add_caption:I

    if-ne v2, v3, :cond_0

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "fromVoiceMenu":Z
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationController;

    .line 305
    invoke-direct {p0, v1}, Lcom/google/glass/share/ShareActivity;->getAnnotationIntent(Z)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/glass/voice/VoiceAnnotationController;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 306
    .local v0, "controller":Lcom/google/glass/voice/VoiceAnnotationController;
    invoke-static {}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->getInstance()Lcom/google/glass/voice/VoiceActionDialog$Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->voiceAnnotationCallback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-virtual {v2, p0, v0, v3}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceActionDialog;->show()V

    .line 308
    const/4 v2, 0x1

    .line 310
    .end local v0    # "controller":Lcom/google/glass/voice/VoiceAnnotationController;
    .end local v1    # "fromVoiceMenu":Z
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 278
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->shouldShowMenus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->onPrepareMenu()V

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareVoiceMenu(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 1
    .param p1, "voiceMenu"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onPrepareVoiceMenu(Lcom/google/glass/voice/VoiceMenuDialog;)V

    .line 289
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->onPrepareMenu()V

    .line 290
    return-void
.end method

.method public onResumeInternal()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 227
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    const-string v1, "PHOTO_SHARE"

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->photoShareConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    .line 228
    return-void
.end method

.method public onShareTargetConfirmed()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 461
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Share confirmed [id=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v4}, Lcom/google/glass/share/ShareTimelineItemJob;->getShareTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    iput-boolean v6, p0, Lcom/google/glass/share/ShareActivity;->shareEntityConfirmed:Z

    .line 463
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v1}, Lcom/google/glass/share/ShareTimelineItemJob;->notifyReadyToUpdateToFinalItem()V

    .line 464
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 465
    .local v0, "returnedIntent":Landroid/content/Intent;
    const-string v1, "share_target"

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    .line 466
    invoke-virtual {v2}, Lcom/google/glass/share/ShareTimelineItemJob;->getShareTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 469
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/share/ShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 470
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Set result, finishing"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-boolean v1, p0, Lcom/google/glass/share/ShareActivity;->goToTimelineAfterShare:Z

    if-eqz v1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/google/glass/share/ShareActivity;->goToTimelineIfRequested()V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->finishAndTurnScreenOffIfRequested()V

    goto :goto_0
.end method

.method public onShareTargetSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 1
    .param p1, "shareTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->disableSelection:Z

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0, p1}, Lcom/google/glass/share/ShareTimelineItemJob;->setShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareActivity;->allowAnnotation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/google/glass/share/ShareActivity;->showSharingDraftView()V

    .line 343
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/share/ShareActivity;->showSharingMessage()V

    goto :goto_1
.end method

.method public declared-synchronized onTemporaryShareCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .param p1, "temporaryShareItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/glass/share/ShareActivity$4;

    invoke-direct {v0, p0}, Lcom/google/glass/share/ShareActivity$4;-><init>(Lcom/google/glass/share/ShareActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTimelineItemLoaded(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "update_timeline_share"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareTimelineItemJob;->cancel()V

    .line 497
    :cond_0
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 373
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "21"

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v3}, Lcom/google/glass/share/ShareDraftFragment;->onPrepareMenu()V

    .line 376
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v2

    .line 377
    .local v2, "menuItems":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    const/4 v1, 0x1

    .line 378
    .local v1, "fromVoiceMenu":Z
    invoke-direct {p0, v1}, Lcom/google/glass/share/ShareActivity;->getAnnotationIntent(Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "feature"

    const-string v5, "action_controller"

    .line 379
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "action_controller_class"

    const-class v5, Lcom/google/glass/voice/VoiceAnnotationController;

    .line 381
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    .local v0, "controllerIntent":Landroid/content/Intent;
    sget-object v3, Lcom/google/android/glass/app/ContextualMenus$Command;->ADD_A_CAPTION:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget-object v4, Lcom/google/android/glass/app/ContextualMenus$Command;->ADD_A_CAPTION:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-static {v4}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v4

    new-instance v5, Lcom/google/glass/share/ShareActivity$2;

    invoke-direct {v5, p0}, Lcom/google/glass/share/ShareActivity$2;-><init>(Lcom/google/glass/share/ShareActivity;)V

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V

    .line 392
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/glass/share/ShareActivity;->openVoiceMenu(Lcom/google/glass/voice/menu/VoiceMenuBuilder;J)Lcom/google/glass/voice/VoiceConfig;

    .line 393
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->photoShareConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 397
    .end local v0    # "controllerIntent":Landroid/content/Intent;
    .end local v1    # "fromVoiceMenu":Z
    .end local v2    # "menuItems":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    :goto_0
    return-object v3

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unknown voice command: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onWindowFocusChanged(Z)V

    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareDraftFragment:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->resumeShare()V

    .line 319
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 242
    sget v0, Lcom/google/glass/sync/R$layout;->share_activity:I

    return v0
.end method

.method public shouldAllowCameraButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "disable_camera"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/glass/share/ShareActivity;->goToTimelineAfterShare:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldShowMenus()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareTimelineItemJob;->getShareTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareJob:Lcom/google/glass/share/ShareTimelineItemJob;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareTimelineItemJob;->hasAnnotation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
