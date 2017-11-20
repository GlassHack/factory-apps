.class final Lcom/google/android/speech/alternates/Hypothesis$SpanBasedHypothesis;
.super Lcom/google/android/speech/alternates/Hypothesis;
.source "Hypothesis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/alternates/Hypothesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpanBasedHypothesis"
.end annotation


# instance fields
.field private final mSpans:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis$Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis$Span;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "spans":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/speech/alternates/Hypothesis$Span;>;"
    invoke-direct {p0, p1}, Lcom/google/android/speech/alternates/Hypothesis;-><init>(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis$SpanBasedHypothesis;->mSpans:Lcom/google/common/collect/ImmutableList;

    .line 212
    return-void
.end method


# virtual methods
.method protected computeSpans()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis$Span;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis$SpanBasedHypothesis;->mSpans:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis$SpanBasedHypothesis;->mSpans:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
