.class public abstract Lcom/google/glass/deferredcontent/LoadingTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHA_OPAQUE:F = 1.0f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ALPHA_TRANSPARENT:F

.field private static allowAlphaFade:Z


# instance fields
.field private final context:Landroid/content/Context;

.field private final isCancelled:Lcom/google/glass/util/Condition;

.field private isRunning:Z

.field private listeners:Ljava/util/List;

.field scrollItemPosition:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private scrollItemSubview:Landroid/view/View;

.field private scrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private final task:Landroid/os/AsyncTask;

.field private timeAddedToPendingList:J

.field private timeStarted:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/glass/deferredcontent/LoadingTask;->allowAlphaFade:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;-><init>(Lcom/google/glass/deferredcontent/LoadingTask;Lcom/google/glass/deferredcontent/LoadingTask$1;)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->task:Landroid/os/AsyncTask;

    .line 123
    new-instance v0, Lcom/google/glass/util/Condition;

    invoke-direct {v0}, Lcom/google/glass/util/Condition;-><init>()V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemPosition:I

    .line 151
    iput-object p1, p0, Lcom/google/glass/deferredcontent/LoadingTask;->context:Landroid/content/Context;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/deferredcontent/LoadingTask;)Lcom/google/glass/util/Condition;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/deferredcontent/LoadingTask;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->timeStarted:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/LoadingTask;->stop()V

    return-void
.end method

.method static getPositionTag(Landroid/view/View;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 202
    if-nez p0, :cond_1

    .line 203
    const/4 v0, 0x0

    .line 213
    :cond_0
    return-object v0

    .line 205
    :cond_1
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 206
    :goto_0
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/view/View;

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 211
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object p0, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static setAllowAlphaFade(Z)V
    .locals 0

    .prologue
    .line 390
    sput-boolean p0, Lcom/google/glass/deferredcontent/LoadingTask;->allowAlphaFade:Z

    .line 391
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isRunning:Z

    .line 245
    return-void
.end method


# virtual methods
.method public addOnCompletedListener(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->listeners:Ljava/util/List;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method protected abstract bindContent(Ljava/lang/Object;)V
.end method

.method public cancel(Z)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->set()V

    .line 236
    iget-boolean v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isRunning:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 239
    :cond_0
    return-void
.end method

.method enableScrollPrioritization(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemSubview:Landroid/view/View;

    .line 165
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method getScrollView()Lcom/google/android/glass/widget/CardScrollView;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    return-object v0
.end method

.method public getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    return-object v0
.end method

.method getTimeAddedToPendingList()J
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->timeAddedToPendingList:J

    return-wide v0
.end method

.method protected abstract getUserEventTag()Ljava/lang/String;
.end method

.method protected hideView(Landroid/view/View;ZZ)V
    .locals 4

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 337
    :cond_0
    sget-boolean v0, Lcom/google/glass/deferredcontent/LoadingTask;->allowAlphaFade:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 338
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$integer;->horizontal_scroll_deferred_load_animation_duration_ms:I

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 343
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 344
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/deferredcontent/LoadingTask$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/glass/deferredcontent/LoadingTask$1;-><init>(Lcom/google/glass/deferredcontent/LoadingTask;Landroid/view/View;Z)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 354
    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected final isCancelled()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    return v0
.end method

.method protected final isFinished()Z
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/LoadingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInMemoryTask()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method protected final isRunning()Z
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/LoadingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
.end method

.method protected notifyOnCompleted(Z)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    invoke-interface {v0, p1}, Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;->onCompleted(Z)V

    .line 367
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method protected abstract prepareContent(F)V
.end method

.method prepareForScrollPrioritization()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemSubview:Landroid/view/View;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemSubview:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->getPositionTag(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    if-nez v0, :cond_2

    .line 185
    iput-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemSubview:Landroid/view/View;

    goto :goto_0

    .line 188
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemPosition:I

    .line 191
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemSubview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 192
    :goto_1
    if-eqz v0, :cond_3

    const-class v1, Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 195
    :cond_3
    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 196
    iput-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemSubview:Landroid/view/View;

    goto :goto_0
.end method

.method setTimeAddedToPendingList(J)V
    .locals 0

    .prologue
    .line 385
    iput-wide p1, p0, Lcom/google/glass/deferredcontent/LoadingTask;->timeAddedToPendingList:J

    .line 386
    return-void
.end method

.method protected showView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 305
    if-nez p1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 309
    :cond_0
    sget-boolean v0, Lcom/google/glass/deferredcontent/LoadingTask;->allowAlphaFade:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 311
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$integer;->horizontal_scroll_deferred_load_animation_duration_ms:I

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 315
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 316
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 319
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method start(Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 224
    iget-boolean v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isRunning:Z

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->isRunning:Z

    .line 226
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->timeStarted:J

    .line 227
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    :cond_0
    return-void
.end method
