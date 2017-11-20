.class public Lcom/google/glass/musicplayer/ListenToQueryActivity;
.super Lcom/google/glass/musicplayer/MusicGlassActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_INPUT_TYPE:Ljava/lang/String; = "inputType"

.field private static final EXTRA_QUERY:Ljava/lang/String; = "query"

.field private static final HEADER_ROOT_PLAYLISTS_INDEX:I = 0x3

.field private static final HEADER_ROOT_RADIO_INDEX:I = 0x4

.field public static final INPUT_TOUCH:I = 0x1

.field public static final INPUT_VOICE:I = 0x0

.field private static final MSG_START_LOADER:I = 0x1

.field private static final NO_SECONDARY_MESSAGE:I = -0x1

.field private static final START_LOADER_DELAY_MS:J = 0x1f4L

.field private static final XDI_BROWSE_ROOT_BASE_PATH:Ljava/lang/String; = "browse"

.field private static final XDI_SEARCH_BASE_PATH:Ljava/lang/String; = "search"

.field private static baseUri:Landroid/net/Uri;

.field private static cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

.field private static xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;


# instance fields
.field private browseTask:Landroid/os/AsyncTask;

.field private handler:Landroid/os/Handler;

.field lastGlassError:Lcom/google/glass/app/GlassError;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private loaderText:Landroid/widget/TextView;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private searchTask:Landroid/os/AsyncTask;

.field private slider:Lcom/google/glass/widget/SliderView;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/glass/musicplayer/CursorUtils;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/CursorUtils;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    .line 85
    new-instance v0, Lcom/google/glass/musicplayer/XdiHelper;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/XdiHelper;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicGlassActivity;-><init>()V

    .line 43
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->lastGlassError:Lcom/google/glass/app/GlassError;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/musicplayer/ListenToQueryActivity;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->startLoadingAnimation(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/musicplayer/ListenToQueryActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->hideLoadingAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/musicplayer/CursorUtils;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/musicplayer/ListenToQueryActivity;III)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->showError(III)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/musicplayer/ListenToQueryActivity;IIII)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->showError(IIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/musicplayer/ListenToQueryActivity;Ljava/util/ArrayList;ZI)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->startResultsActivity(Ljava/util/ArrayList;ZI)V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->baseUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/musicplayer/cards/Radio;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getIflRadio()Lcom/google/glass/musicplayer/cards/Radio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/musicplayer/ListenToQueryActivity;Landroid/net/Uri;Z)Lcom/google/glass/musicplayer/cards/Category;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getRadioOrMixCategory(Landroid/net/Uri;Z)Lcom/google/glass/musicplayer/cards/Category;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/musicplayer/ListenToQueryActivity;Landroid/net/Uri;)Lcom/google/glass/musicplayer/cards/Category;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getPlaylistCategory(Landroid/net/Uri;)Lcom/google/glass/musicplayer/cards/Category;

    move-result-object v0

    return-object v0
.end method

.method private createXdiIntentForIflRadio()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.xdi.intent.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    const-string v1, "container"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    return-object v0
.end method

.method private getIflRadio()Lcom/google/glass/musicplayer/cards/Radio;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 367
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio;

    sget-object v2, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->IFL:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    sget v1, Lcom/google/glass/musicplayer/R$string;->im_feeling_lucky:I

    .line 368
    invoke-virtual {p0, v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->createXdiIntentForIflRadio()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/musicplayer/cards/Radio;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Radio$RadioType;Lcom/google/glass/musicplayer/cards/Card;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    return-object v0
.end method

.method private getInputType(Landroid/content/Intent;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 176
    const-string v1, "inputType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "inputType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPlaylistCategory(Landroid/net/Uri;)Lcom/google/glass/musicplayer/cards/Category;
    .locals 6

    .prologue
    .line 399
    const-wide/16 v0, 0x3

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 400
    new-instance v1, Lcom/google/glass/musicplayer/cards/Category;

    sget v2, Lcom/google/glass/musicplayer/R$string;->playlists:I

    invoke-virtual {p0, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_PLAYLISTS:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    const/4 v4, 0x0

    .line 402
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/glass/musicplayer/cards/Category;-><init>(Ljava/lang/String;Lcom/google/glass/musicplayer/cards/Category$CategoryType;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method private getRadioOrMixCategory(Landroid/net/Uri;Z)Lcom/google/glass/musicplayer/cards/Category;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 380
    const-wide/16 v0, 0x4

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 382
    if-eqz p2, :cond_0

    .line 383
    new-instance v0, Lcom/google/glass/musicplayer/cards/Category;

    sget v2, Lcom/google/glass/musicplayer/R$string;->my_stations:I

    invoke-virtual {p0, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_MY_STATIONS:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    .line 385
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/google/glass/musicplayer/cards/Category;-><init>(Ljava/lang/String;Lcom/google/glass/musicplayer/cards/Category$CategoryType;Ljava/lang/String;Landroid/content/Intent;)V

    .line 389
    :goto_0
    return-object v0

    .line 387
    :cond_0
    new-instance v0, Lcom/google/glass/musicplayer/cards/Category;

    sget v2, Lcom/google/glass/musicplayer/R$string;->my_mixes:I

    invoke-virtual {p0, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_MY_MIXES:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    .line 389
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/google/glass/musicplayer/cards/Category;-><init>(Ljava/lang/String;Lcom/google/glass/musicplayer/cards/Category$CategoryType;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getSearchUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->baseUri:Landroid/net/Uri;

    const-string v1, "search"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private hideLoadingAnimation()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->loaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->slider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 201
    return-void
.end method

.method private searchAndPlay(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "search query was empty"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    sget v0, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_cloud_sad_150:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->showError(III)V

    .line 298
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 218
    sget v0, Lcom/google/glass/musicplayer/R$string;->searching:I

    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->startLoadingAnimation(I)V

    .line 219
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getSearchUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "searchUri=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 224
    new-instance v2, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;-><init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    iput-object v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->searchTask:Landroid/os/AsyncTask;

    .line 296
    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->searchTask:Landroid/os/AsyncTask;

    .line 297
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Void;

    .line 296
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected static setInstanceForTest(Lcom/google/glass/musicplayer/CursorUtils;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 515
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 519
    :cond_0
    sput-object p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    goto :goto_0
.end method

.method protected static setInstanceForTest(Lcom/google/glass/musicplayer/XdiHelper;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 528
    :cond_0
    sput-object p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;

    goto :goto_0
.end method

.method private showError(III)V
    .locals 1

    .prologue
    .line 475
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->showError(IIII)V

    .line 476
    return-void
.end method

.method private showError(IIII)V
    .locals 2

    .prologue
    .line 488
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    const/16 v1, 0xc

    .line 489
    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 490
    invoke-virtual {v0, p4}, Lcom/google/common/a/n;->h(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 492
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v1

    .line 493
    invoke-virtual {v1, v0}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 496
    new-instance v0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;-><init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;III)V

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method private startBrowseUi(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    new-instance v0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;-><init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;I)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->browseTask:Landroid/os/AsyncTask;

    .line 359
    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->browseTask:Landroid/os/AsyncTask;

    .line 360
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Void;

    .line 359
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    return-void
.end method

.method private startLoadingAnimation(I)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->loaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->loaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->slider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 192
    return-void
.end method

.method private startResultsActivity(Ljava/util/ArrayList;ZI)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 421
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    const/4 v1, 0x3

    .line 426
    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v3}, Lcom/google/common/a/n;->c(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 429
    if-ne p3, v2, :cond_0

    .line 430
    invoke-virtual {v0, v3}, Lcom/google/common/a/n;->g(I)Lcom/google/common/a/n;

    .line 436
    :goto_0
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v1

    .line 437
    invoke-virtual {v1, v0}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    const-string v1, "cardList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 442
    const-string v1, "disableAutoplay"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 444
    return-void

    .line 431
    :cond_0
    if-nez p3, :cond_1

    .line 432
    invoke-virtual {v0, v2}, Lcom/google/common/a/n;->g(I)Lcom/google/common/a/n;

    goto :goto_0

    .line 434
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->g(I)Lcom/google/common/a/n;

    goto :goto_0
.end method


# virtual methods
.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 109
    new-instance v0, Lcom/google/glass/musicplayer/ListenToQueryActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$1;-><init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->handler:Landroid/os/Handler;

    .line 129
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 131
    sget v0, Lcom/google/glass/musicplayer/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->slider:Lcom/google/glass/widget/SliderView;

    .line 132
    sget v0, Lcom/google/glass/musicplayer/R$id;->loader_text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->loaderText:Landroid/widget/TextView;

    .line 134
    sget-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/XdiHelper;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->baseUri:Landroid/net/Uri;

    .line 136
    sget-object v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->baseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No xdi provider installed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    sget v0, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_cloud_sad_150:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->showError(III)V

    .line 173
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    if-nez v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Encountered null intent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getInputType(Landroid/content/Intent;)I

    move-result v2

    .line 150
    packed-switch v2, :pswitch_data_0

    .line 170
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown input type encountered!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :pswitch_0
    const-string v0, "query"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    const-string v0, "android.speech.extra.RESULTS"

    .line 155
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "result was null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->searchAndPlay(Ljava/lang/String;I)V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->startBrowseUi(I)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPauseInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->searchTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "canceling pending search task."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->searchTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->browseTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "canceling pending browse task."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->browseTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 459
    :cond_1
    invoke-super {p0}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onPauseInternal()V

    .line 460
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 464
    sget v0, Lcom/google/glass/musicplayer/R$layout;->listen_to_query_activity:I

    return v0
.end method
