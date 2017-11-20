.class public Lcom/google/android/speech/alternates/Hypothesis$Span;
.super Ljava/lang/Object;
.source "Hypothesis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/alternates/Hypothesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field public final mAlternates:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUtf16End:I

.field public final mUtf16Start:I

.field public final mUtf8Length:I

.field public final mUtf8Start:I


# direct methods
.method public constructor <init>(IIIILcom/google/common/collect/ImmutableList;)V
    .locals 0
    .param p1, "utf16Start"    # I
    .param p2, "utf16End"    # I
    .param p3, "utf8Start"    # I
    .param p4, "utf8Length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p5, "alternates":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16Start:I

    .line 146
    iput p2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16End:I

    .line 147
    iput p3, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Start:I

    .line 148
    iput p4, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Length:I

    .line 149
    iput-object p5, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mAlternates:Lcom/google/common/collect/ImmutableList;

    .line 150
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 172
    instance-of v2, p1, Lcom/google/android/speech/alternates/Hypothesis$Span;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/google/android/speech/alternates/Hypothesis$Span;

    .line 174
    .local v0, "that":Lcom/google/android/speech/alternates/Hypothesis$Span;
    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16Start:I

    iget v3, v0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16Start:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16End:I

    iget v3, v0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16End:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Start:I

    iget v3, v0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Start:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Length:I

    iget v3, v0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Length:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mAlternates:Lcom/google/common/collect/ImmutableList;

    iget-object v3, v0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mAlternates:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 180
    .end local v0    # "that":Lcom/google/android/speech/alternates/Hypothesis$Span;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16Start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16End:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mAlternates:Lcom/google/common/collect/ImmutableList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mUtf16Start"

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16Start:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mUtf16End"

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16End:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mUtf8Start"

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Start:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mUtf8Length"

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Length:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mAlternates"

    iget-object v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mAlternates:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlternates(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/speech/alternates/Hypothesis$Span;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/speech/alternates/Hypothesis$Span;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "newAlternates":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/speech/alternates/Hypothesis$Span;

    iget v1, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16Start:I

    iget v2, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf16End:I

    iget v3, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Start:I

    iget v4, p0, Lcom/google/android/speech/alternates/Hypothesis$Span;->mUtf8Length:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/alternates/Hypothesis$Span;-><init>(IIIILcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
