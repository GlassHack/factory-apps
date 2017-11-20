.class public Lcom/google/glass/widget/SmoothRotatingTextView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DURATION_BETWEEN_ROTATION_MS:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentTextViewIndex:I

.field private durationBetweenRotationMs:J

.field private handler:Landroid/os/Handler;

.field isAnimationStarted:Z

.field isNextAnimationScheduled:Z

.field private iterator:Ljava/util/Iterator;

.field private repeat:Z

.field private textList:Ljava/util/List;

.field private textRotationAnimation:Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;

.field private textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/SmoothRotatingTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/widget/SmoothRotatingTextView;->DEFAULT_DURATION_BETWEEN_ROTATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/SmoothRotatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SmoothRotatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v0, 0x0

    const/4 v4, -0x2

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    iput-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textList:Ljava/util/List;

    .line 48
    iput v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->currentTextViewIndex:I

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->handler:Landroid/os/Handler;

    .line 53
    new-instance v1, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    iput-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textRotationAnimation:Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->repeat:Z

    .line 58
    sget-wide v1, Lcom/google/glass/widget/SmoothRotatingTextView;->DEFAULT_DURATION_BETWEEN_ROTATION_MS:J

    iput-wide v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->durationBetweenRotationMs:J

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    new-instance v2, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/widget/SmoothRotatingTextView$1;)V

    aput-object v2, v1, v0

    .line 76
    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->setGravity(I)V

    .line 81
    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/SmoothRotatingTextView;->addView(Landroid/view/View;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/widget/SmoothRotatingTextView;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->rotate()V

    return-void
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/widget/SmoothRotatingTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/widget/SmoothRotatingTextView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/widget/SmoothRotatingTextView;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->setupTextView()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/widget/SmoothRotatingTextView;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/widget/SmoothRotatingTextView;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    return-object p1
.end method

.method private getNextTextViewIndex()I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->currentTextViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private rotate()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 104
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;

    .line 121
    :goto_0
    sget-object v1, Lcom/google/glass/widget/SmoothRotatingTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Rotate to text:%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->access$100(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->getNextTextView()Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    move-result-object v1

    .line 123
    invoke-static {v1, v0}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->access$200(Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;Lcom/google/glass/widget/SmoothRotatingTextView$Text;)V

    .line 124
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textRotationAnimation:Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;

    invoke-virtual {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->getCurrentTextView()Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->access$300(Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;Landroid/view/View;Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->getNextTextViewIndex()I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->currentTextViewIndex:I

    .line 126
    :cond_0
    :goto_1
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_3

    .line 109
    iget-boolean v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->repeat:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_3

    .line 110
    :cond_2
    iput-boolean v5, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->isAnimationStarted:Z

    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    .line 119
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;

    goto :goto_0
.end method

.method private setupTextView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->getCurrentTextView()Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    .line 146
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;

    .line 147
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->setVisibility(I)V

    .line 148
    invoke-static {v1, v0}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->access$200(Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;Lcom/google/glass/widget/SmoothRotatingTextView$Text;)V

    .line 149
    sget-object v1, Lcom/google/glass/widget/SmoothRotatingTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setup text: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->access$100(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    return-void
.end method


# virtual methods
.method public addTextMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 185
    sget v0, Lcom/google/glass/common/R$style;->OverlayText:I

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;I)V

    .line 186
    return-void
.end method

.method public addTextMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;II)V

    .line 182
    return-void
.end method

.method public addTextMessage(Ljava/lang/CharSequence;II)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/widget/SmoothRotatingTextView$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/widget/SmoothRotatingTextView$3;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public clearAllMessages()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/widget/SmoothRotatingTextView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/SmoothRotatingTextView$2;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-boolean v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->isAnimationStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->isNextAnimationScheduled:Z

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    .line 235
    :cond_0
    return-void
.end method

.method getCurrentTextView()Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    iget v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->currentTextViewIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method getNextTextView()Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textViewsToRotate:[Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;

    invoke-direct {p0}, Lcom/google/glass/widget/SmoothRotatingTextView;->getNextTextViewIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public scheduleNextRotation()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->isAnimationStarted:Z

    .line 133
    iput-boolean v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->isNextAnimationScheduled:Z

    .line 134
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/widget/SmoothRotatingTextView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/SmoothRotatingTextView$1;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    iget-wide v2, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->durationBetweenRotationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method public setHandlerForTest(Landroid/os/Handler;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 199
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->handler:Landroid/os/Handler;

    .line 200
    return-void
.end method

.method public setRepeat(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->repeat:Z

    .line 194
    return-void
.end method

.method public setTextRotationAnimation(Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView;->textRotationAnimation:Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;

    .line 190
    return-void
.end method
