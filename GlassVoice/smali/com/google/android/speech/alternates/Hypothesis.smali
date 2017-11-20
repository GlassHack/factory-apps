.class public abstract Lcom/google/android/speech/alternates/Hypothesis;
.super Ljava/lang/Object;
.source "Hypothesis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;,
        Lcom/google/android/speech/alternates/Hypothesis$SpanBasedHypothesis;,
        Lcom/google/android/speech/alternates/Hypothesis$TextOnlyHypothesis;,
        Lcom/google/android/speech/alternates/Hypothesis$Span;
    }
.end annotation


# instance fields
.field private mSpans:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis$Span;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis;->mText:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromAlternateSpanProtos(Ljava/lang/CharSequence;[Lcom/google/speech/common/Alternates$AlternateSpan;)Lcom/google/android/speech/alternates/Hypothesis;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "alternateSpans"    # [Lcom/google/speech/common/Alternates$AlternateSpan;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    invoke-static {p0}, Lcom/google/android/speech/alternates/Hypothesis;->fromText(Ljava/lang/CharSequence;)Lcom/google/android/speech/alternates/Hypothesis;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;

    invoke-direct {v0, p0, p1}, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;-><init>(Ljava/lang/CharSequence;[Lcom/google/speech/common/Alternates$AlternateSpan;)V

    goto :goto_0
.end method

.method public static fromSpans(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/google/android/speech/alternates/Hypothesis;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis$Span;",
            ">;)",
            "Lcom/google/android/speech/alternates/Hypothesis;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "spans":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/speech/alternates/Hypothesis$Span;>;"
    if-nez p1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/google/android/speech/alternates/Hypothesis;->fromText(Ljava/lang/CharSequence;)Lcom/google/android/speech/alternates/Hypothesis;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/speech/alternates/Hypothesis$SpanBasedHypothesis;

    invoke-direct {v0, p0, p1}, Lcom/google/android/speech/alternates/Hypothesis$SpanBasedHypothesis;-><init>(Ljava/lang/CharSequence;Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public static fromText(Ljava/lang/CharSequence;)Lcom/google/android/speech/alternates/Hypothesis;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/speech/alternates/Hypothesis$TextOnlyHypothesis;

    invoke-direct {v0, p0}, Lcom/google/android/speech/alternates/Hypothesis$TextOnlyHypothesis;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method protected abstract computeSpans()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis$Span;",
            ">;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 98
    instance-of v2, p1, Lcom/google/android/speech/alternates/Hypothesis;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/google/android/speech/alternates/Hypothesis;

    .line 100
    .local v0, "that":Lcom/google/android/speech/alternates/Hypothesis;
    iget-object v2, p0, Lcom/google/android/speech/alternates/Hypothesis;->mText:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/speech/alternates/Hypothesis;->mText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/Hypothesis;->getSpans()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/speech/alternates/Hypothesis;->getSpans()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 103
    .end local v0    # "that":Lcom/google/android/speech/alternates/Hypothesis;
    :cond_0
    return v1
.end method

.method public abstract getSpanCount()I
.end method

.method public final getSpans()Lcom/google/common/collect/ImmutableList;
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
    .line 74
    iget-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis;->mSpans:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/speech/alternates/Hypothesis;->computeSpans()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis;->mSpans:Lcom/google/common/collect/ImmutableList;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis;->mSpans:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/speech/alternates/Hypothesis;->mText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/Hypothesis;->getSpans()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hypothesis: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/speech/alternates/Hypothesis;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/Hypothesis;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " span(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
