.class public Lcom/google/glass/voice/StreamingTextView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAIN_TEXT_POV:I = -0x1

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field public static final STABLE_COLOR:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final UNSTABLE_COLOR:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private isShowingFinalText:Z

.field private mainText:Landroid/widget/TextView;

.field private textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

.field private viewDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xa4

    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StreamingTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 37
    const-string v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/voice/StreamingTextView;->UNSTABLE_COLOR:I

    .line 58
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/voice/StreamingTextView;->STABLE_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/StreamingTextView;->isShowingFinalText:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/StreamingTextView;->isShowingFinalText:Z

    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 81
    iput-object p3, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    .line 82
    new-instance v0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;-><init>(Lcom/google/glass/voice/StreamingTextView;)V

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView;->viewDensity:F

    .line 85
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/voice/StreamingTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private updateDotsAndMainText(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 176
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    goto :goto_0
.end method


# virtual methods
.method public getLineCount()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Landroid/text/Spannable;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingFinalText()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/glass/voice/StreamingTextView;->isShowingFinalText:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 91
    sget v0, Lcom/google/glass/common/R$id;->streaming_text_main:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/StreamingTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    .line 92
    new-instance v0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;-><init>(Lcom/google/glass/voice/StreamingTextView;)V

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView;->viewDensity:F

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 97
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    sget-object v0, Lcom/google/glass/voice/StreamingTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#reset"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 103
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->reset()V

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView;->viewDensity:F

    .line 108
    iput-boolean v3, p0, Lcom/google/glass/voice/StreamingTextView;->isShowingFinalText:Z

    .line 109
    return-void
.end method

.method public reveal()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 116
    return-void
.end method

.method public setFinalRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 158
    iput-boolean v3, p0, Lcom/google/glass/voice/StreamingTextView;->isShowingFinalText:Z

    .line 159
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/voice/StreamingTextView$TextSegment;

    new-instance v1, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    invoke-direct {v1, p0, p1, v3, v4}, Lcom/google/glass/voice/StreamingTextView$TextSegment;-><init>(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/CharSequence;ZZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    invoke-direct {v1, p0, p2, v3, v3}, Lcom/google/glass/voice/StreamingTextView$TextSegment;-><init>(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/CharSequence;ZZ)V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    invoke-direct {v2, p0, p3, v3, v4}, Lcom/google/glass/voice/StreamingTextView$TextSegment;-><init>(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/CharSequence;ZZ)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->setFinalText(Ljava/util/List;)V

    .line 165
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/StreamingTextView;->updateDotsAndMainText(I)V

    .line 166
    return-void
.end method

.method public updateKeyboardInputText(Ljava/lang/CharSequence;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/voice/StreamingTextView$TextSegment;

    new-instance v1, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    invoke-direct {v1, p0, p1, v2, v2}, Lcom/google/glass/voice/StreamingTextView$TextSegment;-><init>(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/CharSequence;ZZ)V

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->updateText(Ljava/util/List;)V

    .line 147
    invoke-direct {p0, p2}, Lcom/google/glass/voice/StreamingTextView;->updateDotsAndMainText(I)V

    .line 148
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/StreamingTextView$TextSegment;

    new-instance v1, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/google/glass/voice/StreamingTextView$TextSegment;-><init>(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/CharSequence;ZZ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    invoke-direct {v1, p0, p2, v2, v2}, Lcom/google/glass/voice/StreamingTextView$TextSegment;-><init>(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/CharSequence;ZZ)V

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->updateText(Ljava/util/List;)V

    .line 135
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/StreamingTextView;->updateDotsAndMainText(I)V

    .line 136
    return-void
.end method
