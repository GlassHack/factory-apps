.class public Lcom/google/android/shared/util/Whitespace;
.super Ljava/lang/Object;
.source "Whitespace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collapseRangeFrom(Ljava/lang/CharSequence;IIC)Ljava/lang/String;
    .locals 6
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "repl"    # C
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 85
    invoke-static {p0, p1, p2}, Lcom/google/android/shared/util/Whitespace;->indexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 86
    .local v1, "nonMatchPos":I
    if-ne v1, v5, :cond_1

    .line 87
    if-ne p2, p1, :cond_0

    const-string v3, ""

    .line 124
    :goto_0
    return-object v3

    .line 87
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_1
    const/4 v2, 0x0

    .line 95
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eq v1, p1, :cond_2

    .line 97
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, p3, :cond_3

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, p2, v1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    :cond_2
    :goto_1
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3, p2}, Lcom/google/android/shared/util/Whitespace;->indexIn(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 106
    .local v0, "matchPos":I
    if-ne v0, v5, :cond_5

    .line 107
    if-nez v2, :cond_4

    .line 108
    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 100
    .end local v0    # "matchPos":I
    :cond_3
    add-int/lit8 p1, v1, -0x1

    goto :goto_1

    .line 110
    .restart local v0    # "matchPos":I
    :cond_4
    invoke-virtual {v2, p0, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 112
    :cond_5
    if-eqz v2, :cond_6

    .line 113
    invoke-virtual {v2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 115
    :cond_6
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, p2}, Lcom/google/android/shared/util/Whitespace;->indexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 116
    if-ne v1, v5, :cond_9

    .line 117
    if-nez v2, :cond_8

    .line 119
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p3, :cond_7

    .line 120
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 122
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, p1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    :cond_8
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 127
    :cond_9
    if-nez v2, :cond_b

    sub-int v3, v1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, p3, :cond_b

    .line 128
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, p2, p1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    :cond_b
    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static indexIn(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/shared/util/Whitespace;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexIn(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .prologue
    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 52
    .local v0, "len":I
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 53
    invoke-static {p0, p1, v0}, Lcom/google/android/shared/util/Whitespace;->indexIn(Ljava/lang/CharSequence;II)I

    move-result v1

    return v1
.end method

.method static indexIn(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "end"    # I

    .prologue
    .line 57
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 58
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/shared/util/Whitespace;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 57
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static indexOfNonMatchIn(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "end"    # I

    .prologue
    .line 66
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 67
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/shared/util/Whitespace;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 66
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static lastIndexOfNonMatchIn(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 75
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 76
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/shared/util/Whitespace;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 75
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static matches(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 22
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public static matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/android/shared/util/Whitespace;->indexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 4
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "replacement"    # C

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p0, v3, v2}, Lcom/google/android/shared/util/Whitespace;->indexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 39
    .local v1, "start":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 40
    const-string v2, ""

    .line 43
    :goto_0
    return-object v2

    .line 42
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p0, v3, v2}, Lcom/google/android/shared/util/Whitespace;->lastIndexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 43
    .local v0, "end":I
    invoke-static {p0, v1, v0, p1}, Lcom/google/android/shared/util/Whitespace;->collapseRangeFrom(Ljava/lang/CharSequence;IIC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static trimLeadingAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 3
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "replacement"    # C

    .prologue
    .line 30
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/google/android/shared/util/Whitespace;->indexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 31
    .local v0, "start":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 32
    const-string v1, ""

    .line 34
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/shared/util/Whitespace;->collapseRangeFrom(Ljava/lang/CharSequence;IIC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
