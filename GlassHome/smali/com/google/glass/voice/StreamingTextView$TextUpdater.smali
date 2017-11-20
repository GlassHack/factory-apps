.class Lcom/google/glass/voice/StreamingTextView$TextUpdater;
.super Ljava/lang/Object;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextUpdater"
.end annotation


# instance fields
.field private mPendingStart:I

.field private mText:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/google/glass/voice/StreamingTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/StreamingTextView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/voice/StreamingTextView;

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
    .locals 5
    .param p1, "textStart"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "useUnstableColor"    # Z
    .param p4, "underline"    # Z

    .prologue
    const/16 v4, 0x21

    .line 247
    iget-object v2, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, p1, v3, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    if-eqz p3, :cond_1

    sget v2, Lcom/google/glass/voice/StreamingTextView;->UNSTABLE_COLOR:I

    :goto_0
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 250
    .local v0, "fcs":Landroid/text/style/ForegroundColorSpan;
    iget-object v2, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 251
    if-eqz p4, :cond_0

    .line 252
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 253
    .local v1, "us":Landroid/text/style/UnderlineSpan;
    iget-object v2, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v1, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 255
    .end local v1    # "us":Landroid/text/style/UnderlineSpan;
    :cond_0
    return-void

    .line 248
    .end local v0    # "fcs":Landroid/text/style/ForegroundColorSpan;
    :cond_1
    sget v2, Lcom/google/glass/voice/StreamingTextView;->STABLE_COLOR:I

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StreamingTextView$TextSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "finalText":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/StreamingTextView$TextSegment;>;"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StreamingTextView$TextSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/StreamingTextView$TextSegment;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    iget v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 226
    .local v0, "currentIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v3, "stableText":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v1, "pendingText":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;

    .line 229
    .local v2, "segment":Lcom/google/glass/voice/StreamingTextView$TextSegment;
    iget-boolean v4, v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isStable:Z

    if-eqz v4, :cond_0

    .line 230
    iget-object v4, v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_1
    iget-object v8, v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    iget-boolean v4, v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isStable:Z

    if-nez v4, :cond_1

    move v4, v5

    :goto_2
    iget-boolean v9, v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isLowConfidence:Z

    invoke-direct {p0, v0, v8, v4, v9}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->setText(ILjava/lang/String;ZZ)V

    .line 235
    iget-object v4, v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 236
    goto :goto_0

    .line 232
    :cond_0
    iget-object v4, v2, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v4, v6

    .line 234
    goto :goto_2

    .line 237
    .end local v2    # "segment":Lcom/google/glass/voice/StreamingTextView$TextSegment;
    :cond_2
    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v7, "updateText(%s,%s,%s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v3, v8, v5

    const/4 v5, 0x2

    aput-object v1, v8, v5

    invoke-interface {v4, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    return-void
.end method
