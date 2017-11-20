.class Lcom/google/glass/voice/StreamingTextView$TextSegment;
.super Ljava/lang/Object;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextSegment"
.end annotation


# instance fields
.field isLowConfidence:Z

.field isStable:Z

.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/voice/StreamingTextView;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/CharSequence;ZZ)V
    .locals 1
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "isStable"    # Z
    .param p4, "isLowConfidence"    # Z

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->this$0:Lcom/google/glass/voice/StreamingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->text:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isStable:Z

    .line 68
    iput-boolean p4, p0, Lcom/google/glass/voice/StreamingTextView$TextSegment;->isLowConfidence:Z

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
