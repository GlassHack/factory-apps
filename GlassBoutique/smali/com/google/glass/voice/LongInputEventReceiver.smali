.class public Lcom/google/glass/voice/LongInputEventReceiver;
.super Ljava/lang/Object;
.source "LongInputEventReceiver.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# static fields
.field private static final ANIMATE_UP_DURATION_MILLIS:J = 0xdcL

.field private static final TOP_MARGIN:I = 0x1e


# instance fields
.field private isRecognitionResultExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private updateRecognizedText(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 7
    .param p1, "inputController"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    const-wide/16 v5, 0xdc

    .line 37
    iget-boolean v3, p0, Lcom/google/glass/voice/LongInputEventReceiver;->isRecognitionResultExpanded:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedInputController;->getRecognizedTextLineCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 38
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/glass/voice/LongInputEventReceiver;->isRecognitionResultExpanded:Z

    .line 40
    sget v3, Lcom/google/glass/common/R$id;->streaming_text:I

    .line 41
    invoke-virtual {p1, v3}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/StreamingTextView;

    .line 42
    .local v1, "streamingTextView":Lcom/google/glass/voice/StreamingTextView;
    sget v3, Lcom/google/glass/common/R$id;->voice_input_subselected_item:I

    invoke-virtual {p1, v3}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "subSelectedItem":Landroid/view/View;
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->getY()F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    sub-float v0, v3, v4

    .line 46
    .local v0, "moveUpBy":F
    sget v3, Lcom/google/glass/common/R$id;->header:I

    invoke-virtual {p1, v3}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    neg-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    neg-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 50
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    neg-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 53
    .end local v0    # "moveUpBy":F
    .end local v1    # "streamingTextView":Lcom/google/glass/voice/StreamingTextView;
    .end local v2    # "subSelectedItem":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 31
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZED_TEXT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/voice/LongInputEventReceiver;->updateRecognizedText(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 34
    :cond_0
    return-void
.end method
