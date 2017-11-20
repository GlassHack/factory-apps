.class Lcom/google/glass/voice/StreamingTextView$TextUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPendingStart:I

.field private mText:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/google/glass/voice/StreamingTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/StreamingTextView;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->this$0:Lcom/google/glass/voice/StreamingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    .line 212
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->reset()V

    .line 213
    return-void
.end method

.method private setText(ILjava/lang/String;ZZ)V
    .locals 4

    .prologue
    const/16 v3, 0x21

    .line 247
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    if-eqz p3, :cond_1

    sget v0, Lcom/google/glass/voice/StreamingTextView;->UNSTABLE_COLOR:I

    :goto_0
    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 250
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 251
    if-eqz p4, :cond_0

    .line 252
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 255
    :cond_0
    return-void

    .line 248
    :cond_1
    sget v0, Lcom/google/glass/voice/StreamingTextView;->STABLE_COLOR:I

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 221
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 222
    return-void
.end method

.method setFinalText(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->updateText(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 243
    return-void
.end method

.method updateText(Ljava/util/List;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 225
    iget v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    .line 229
    iget-boolean v2, v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isStable:Z

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_1
    iget-object v8, v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isStable:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_2
    iget-boolean v9, v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isLowConfidence:Z

    invoke-direct {p0, v1, v8, v2, v9}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->setText(ILjava/lang/String;ZZ)V

    .line 235
    iget-object v0, v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 236
    goto :goto_0

    .line 232
    :cond_0
    iget-object v2, v0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v2, v4

    .line 234
    goto :goto_2

    .line 237
    :cond_2
    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "updateText(%s,%s,%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    return-void
.end method
