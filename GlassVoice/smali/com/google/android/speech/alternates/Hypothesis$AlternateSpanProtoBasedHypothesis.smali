.class final Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;
.super Lcom/google/android/speech/alternates/Hypothesis;
.source "Hypothesis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/alternates/Hypothesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlternateSpanProtoBasedHypothesis"
.end annotation


# instance fields
.field private final mAlternateSpans:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;[Lcom/google/speech/common/Alternates$AlternateSpan;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "spans"    # [Lcom/google/speech/common/Alternates$AlternateSpan;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/speech/alternates/Hypothesis;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;->mAlternateSpans:Lcom/google/common/collect/ImmutableList;

    .line 232
    return-void
.end method

.method private getOffsetUtf16([BI)I
    .locals 5
    .param p1, "utf8Bytes"    # [B
    .param p2, "offsetUtf8"    # I

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "offsetUtf16":I
    const/4 v2, 0x0

    .line 281
    .local v2, "pos":I
    :cond_0
    :goto_0
    if-ge v2, p2, :cond_2

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 282
    aget-byte v3, p1, v2

    and-int/lit16 v0, v3, 0xff

    .line 284
    .local v0, "b":I
    ushr-int/lit8 v3, v0, 0x7

    if-nez v3, :cond_1

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_1
    ushr-int/lit8 v3, v0, 0x5

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 291
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p2, :cond_3

    .line 315
    .end local v0    # "b":I
    :cond_2
    return v1

    .line 294
    .restart local v0    # "b":I
    :cond_3
    add-int/lit8 v2, v2, 0x2

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_4
    ushr-int/lit8 v3, v0, 0x4

    const/16 v4, 0xe

    if-ne v3, v4, :cond_5

    .line 299
    add-int/lit8 v3, v2, 0x2

    if-ge v3, p2, :cond_2

    .line 302
    add-int/lit8 v2, v2, 0x3

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_5
    ushr-int/lit8 v3, v0, 0x3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    .line 308
    add-int/lit8 v3, v2, 0x3

    if-ge v3, p2, :cond_2

    .line 311
    add-int/lit8 v2, v2, 0x4

    .line 312
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private getTextAsUtf8()[B
    .locals 3

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected computeSpans()Lcom/google/common/collect/ImmutableList;
    .locals 12
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
    .line 241
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v10

    .line 243
    .local v10, "spanListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/speech/alternates/Hypothesis$Span;>;"
    iget-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;->mAlternateSpans:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 244
    .local v9, "proto":Lcom/google/speech/common/Alternates$AlternateSpan;
    invoke-direct {p0}, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;->getTextAsUtf8()[B

    move-result-object v11

    .line 245
    .local v11, "utf8Bytes":[B
    iget v0, v9, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    invoke-direct {p0, v11, v0}, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;->getOffsetUtf16([BI)I

    move-result v1

    .line 246
    .local v1, "startUtf16":I
    iget v0, v9, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    iget v3, v9, Lcom/google/speech/common/Alternates$AlternateSpan;->length:I

    add-int/2addr v0, v3

    invoke-direct {p0, v11, v0}, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;->getOffsetUtf16([BI)I

    move-result v2

    .line 247
    .local v2, "endUtf16":I
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v6

    .line 248
    .local v6, "alternatesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, v9, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 249
    iget-object v0, v9, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/google/speech/common/Alternates$Alternate;->text:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 252
    :cond_0
    new-instance v0, Lcom/google/android/speech/alternates/Hypothesis$Span;

    iget v3, v9, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    iget v4, v9, Lcom/google/speech/common/Alternates$AlternateSpan;->length:I

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/alternates/Hypothesis$Span;-><init>(IIIILcom/google/common/collect/ImmutableList;)V

    invoke-virtual {v10, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 256
    .end local v1    # "startUtf16":I
    .end local v2    # "endUtf16":I
    .end local v6    # "alternatesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v9    # "proto":Lcom/google/speech/common/Alternates$AlternateSpan;
    .end local v11    # "utf8Bytes":[B
    :cond_1
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/speech/alternates/Hypothesis$AlternateSpanProtoBasedHypothesis;->mAlternateSpans:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
