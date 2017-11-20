.class final Lcom/google/android/speech/alternates/Hypothesis$TextOnlyHypothesis;
.super Lcom/google/android/speech/alternates/Hypothesis;
.source "Hypothesis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/alternates/Hypothesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextOnlyHypothesis"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/google/android/speech/alternates/Hypothesis;-><init>(Ljava/lang/CharSequence;)V

    .line 192
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
    .line 202
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method
