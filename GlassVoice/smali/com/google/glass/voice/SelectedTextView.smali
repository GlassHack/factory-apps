.class public Lcom/google/glass/voice/SelectedTextView;
.super Landroid/widget/LinearLayout;
.source "SelectedTextView.java"


# static fields
.field private static final SELECTED_COLOR:I

.field private static final UNSELECTED_COLOR:I = -0x1000000

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final selectedBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

.field private static final unselectedBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;


# instance fields
.field public currentText:Ljava/lang/String;

.field currentWordIndex:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private highlightedText:Landroid/text/SpannableStringBuilder;

.field mainText:Landroid/widget/TextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field wordOffsets:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field words:[Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/SelectedTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    const/16 v0, 0x80

    const/16 v1, 0xff

    const/16 v2, 0x57

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/glass/voice/SelectedTextView;->SELECTED_COLOR:I

    .line 47
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/google/glass/voice/SelectedTextView;->SELECTED_COLOR:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/google/glass/voice/SelectedTextView;->selectedBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    .line 49
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/google/glass/voice/SelectedTextView;->unselectedBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private getPostfix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    iget v1, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    if-gez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    .line 248
    :goto_0
    return-object v1

    .line 240
    :cond_0
    iget v1, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 241
    const-string v1, ""

    goto :goto_0

    .line 243
    :cond_1
    iget v1, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    iget v2, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 245
    .local v0, "startPostfix":I
    :goto_1
    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 246
    const-string v1, ""

    goto :goto_0

    .line 243
    .end local v0    # "startPostfix":I
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    .line 244
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 248
    .restart local v0    # "startPostfix":I
    :cond_3
    const-string v2, " "

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    if-gez v0, :cond_0

    .line 228
    const-string v0, ""

    .line 233
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    iget v3, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getReplaceCurrentWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "correction"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/glass/voice/SelectedTextView;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/voice/SelectedTextView;->getPostfix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private highlightCurrentWord()Z
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    iget-object v4, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    iget v4, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    aget v1, v3, v4

    .line 187
    .local v1, "start":I
    iget v3, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    iget-object v4, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 188
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    iget v4, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v3, v1

    .line 192
    .local v0, "end":I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 194
    move v0, v1

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/google/glass/voice/SelectedTextView;->unselectedBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v5, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/google/glass/voice/SelectedTextView;->selectedBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 204
    invoke-direct {p0}, Lcom/google/glass/voice/SelectedTextView;->updateMainText()V

    .line 205
    const/4 v2, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "end":I
    :cond_3
    move v0, v1

    .restart local v0    # "end":I
    goto :goto_1
.end method

.method private highlightWord(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 148
    :cond_1
    iput p1, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    .line 149
    invoke-direct {p0}, Lcom/google/glass/voice/SelectedTextView;->highlightCurrentWord()Z

    move-result v0

    goto :goto_0
.end method

.method private setText(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 131
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->currentText:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    aput v1, v2, v0

    .line 139
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method private updateMainText()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->mainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->mainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    iget v2, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->mainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteWord()V
    .locals 1

    .prologue
    .line 210
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/SelectedTextView;->setCorrection(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public highlightLastWord()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    .line 176
    invoke-direct {p0}, Lcom/google/glass/voice/SelectedTextView;->highlightCurrentWord()Z

    move-result v0

    goto :goto_0
.end method

.method public highlightNextWord()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 157
    :cond_1
    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    .line 158
    invoke-direct {p0}, Lcom/google/glass/voice/SelectedTextView;->highlightCurrentWord()Z

    move-result v0

    goto :goto_0
.end method

.method public highlightPreviousWord()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    if-gtz v0, :cond_1

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_1
    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    .line 167
    invoke-direct {p0}, Lcom/google/glass/voice/SelectedTextView;->highlightCurrentWord()Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    sget v0, Lcom/google/glass/voice/R$id;->correcting_text_main:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/SelectedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->mainText:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/voice/SelectedTextView;->reset()V

    .line 62
    return-void
.end method

.method public reset()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->mainText:Landroid/widget/TextView;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/voice/SelectedTextView;->highlightedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 69
    iput-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    .line 72
    return-void
.end method

.method public setCorrection(Ljava/lang/String;)V
    .locals 3
    .param p1, "correction"    # Ljava/lang/String;

    .prologue
    .line 215
    iget v0, p0, Lcom/google/glass/voice/SelectedTextView;->currentWordIndex:I

    .line 216
    .local v0, "tempIndex":I
    invoke-direct {p0, p1}, Lcom/google/glass/voice/SelectedTextView;->getReplaceCurrentWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/voice/SelectedTextView;->reset()V

    .line 218
    invoke-direct {p0, v1}, Lcom/google/glass/voice/SelectedTextView;->setText(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/google/glass/voice/SelectedTextView;->words:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 222
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/voice/SelectedTextView;->highlightWord(I)Z

    .line 223
    return-void
.end method

.method public setInitialText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefixText"    # Ljava/lang/String;
    .param p2, "lowConfText"    # Ljava/lang/String;
    .param p3, "postfixText"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/voice/SelectedTextView;->setText(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 104
    .local v1, "lowConfOffset":I
    const/4 v2, -0x1

    .line 105
    .local v2, "lowConfWord":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/google/glass/voice/SelectedTextView;->wordOffsets:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_1

    .line 107
    move v2, v0

    .line 111
    :cond_0
    if-ltz v2, :cond_2

    .line 112
    invoke-direct {p0, v2}, Lcom/google/glass/voice/SelectedTextView;->highlightWord(I)Z

    .line 116
    :goto_1
    return-void

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/SelectedTextView;->highlightLastWord()Z

    goto :goto_1
.end method
