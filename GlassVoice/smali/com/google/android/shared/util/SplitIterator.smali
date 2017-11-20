.class public Lcom/google/android/shared/util/SplitIterator;
.super Ljava/lang/Object;
.source "SplitIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final SPLIT_ON_WHITESPACE:I = -0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mDelimiter:I

.field private final mOmitEmpty:Z

.field private mSearchStart:I

.field private final mSequence:Ljava/lang/CharSequence;

.field private mTokenEnd:I

.field private mTokenStart:I

.field private final mTrim:Z


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IZZ)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "delimiter"    # I
    .param p3, "trim"    # Z
    .param p4, "omitEmpty"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    .line 75
    iput p2, p0, Lcom/google/android/shared/util/SplitIterator;->mDelimiter:I

    .line 76
    iput-boolean p3, p0, Lcom/google/android/shared/util/SplitIterator;->mTrim:Z

    .line 77
    iput-boolean p4, p0, Lcom/google/android/shared/util/SplitIterator;->mOmitEmpty:Z

    .line 78
    invoke-direct {p0}, Lcom/google/android/shared/util/SplitIterator;->findNextToken()V

    .line 79
    return-void
.end method

.method private findNextToken()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    iget v0, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 83
    iget v0, p0, Lcom/google/android/shared/util/SplitIterator;->mDelimiter:I

    if-ne v0, v1, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/google/android/shared/util/SplitIterator;->findNextTokenWithWhitespaceDelimiter()V

    .line 88
    :goto_1
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    iget v0, p0, Lcom/google/android/shared/util/SplitIterator;->mDelimiter:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/util/SplitIterator;->findNextTokenWithCharDelimiter(C)V

    goto :goto_1
.end method

.method private findNextTokenWithCharDelimiter(C)V
    .locals 5
    .param p1, "delimiter"    # C

    .prologue
    const/4 v4, -0x1

    .line 120
    iget-object v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 121
    .local v1, "len":I
    :cond_0
    iget v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    if-eq v3, v4, :cond_6

    .line 122
    iget v2, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    .line 123
    .local v2, "start":I
    iget v0, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    .line 124
    .local v0, "end":I
    :goto_0
    if-eq v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_1

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    if-ne v0, v1, :cond_2

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    .line 128
    iget-boolean v3, p0, Lcom/google/android/shared/util/SplitIterator;->mTrim:Z

    if-eqz v3, :cond_4

    .line 129
    iget-object v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    invoke-static {v3, v2, v0}, Lcom/google/android/shared/util/Whitespace;->indexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 130
    if-eq v2, v4, :cond_3

    .line 131
    iput v2, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    .line 132
    iget-object v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    invoke-static {v3, v2, v0}, Lcom/google/android/shared/util/Whitespace;->lastIndexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    .line 144
    .end local v0    # "end":I
    .end local v2    # "start":I
    :goto_2
    return-void

    .line 127
    .restart local v0    # "end":I
    .restart local v2    # "start":I
    :cond_2
    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 135
    :cond_3
    move v2, v0

    .line 137
    :cond_4
    if-ne v2, v0, :cond_5

    iget-boolean v3, p0, Lcom/google/android/shared/util/SplitIterator;->mOmitEmpty:Z

    if-nez v3, :cond_0

    .line 138
    :cond_5
    iput v2, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    .line 139
    iput v0, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    goto :goto_2

    .line 143
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_6
    iput v4, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    goto :goto_2
.end method

.method private findNextTokenWithWhitespaceDelimiter()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 91
    iget v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    if-ne v1, v3, :cond_1

    .line 92
    iput v3, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 96
    .local v0, "len":I
    iget-boolean v1, p0, Lcom/google/android/shared/util/SplitIterator;->mOmitEmpty:Z

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    invoke-static {v1, v2, v0}, Lcom/google/android/shared/util/Whitespace;->indexOfNonMatchIn(Ljava/lang/CharSequence;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    .line 98
    iget v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    if-eq v1, v3, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/google/android/shared/util/Whitespace;->indexIn(Ljava/lang/CharSequence;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    .line 100
    iget v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    if-eq v1, v3, :cond_2

    .line 101
    iget v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    goto :goto_0

    .line 103
    :cond_2
    iput v0, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    .line 104
    iput v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    goto :goto_0

    .line 108
    :cond_3
    iget v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    iput v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    .line 109
    iget-object v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    invoke-static {v1, v2, v0}, Lcom/google/android/shared/util/Whitespace;->indexIn(Ljava/lang/CharSequence;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    .line 110
    iget v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    if-eq v1, v3, :cond_4

    .line 111
    iget v1, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    goto :goto_0

    .line 113
    :cond_4
    iput v0, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    .line 114
    iput v3, p0, Lcom/google/android/shared/util/SplitIterator;->mSearchStart:I

    goto :goto_0
.end method

.method public static splitOnCharOmitEmptyStrings(Ljava/lang/CharSequence;C)Lcom/google/android/shared/util/SplitIterator;
    .locals 3
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "delim"    # C

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/shared/util/SplitIterator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/shared/util/SplitIterator;-><init>(Ljava/lang/CharSequence;IZZ)V

    return-object v0
.end method

.method public static splitOnCharTrimOmitEmptyStrings(Ljava/lang/CharSequence;C)Lcom/google/android/shared/util/SplitIterator;
    .locals 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "delim"    # C

    .prologue
    const/4 v1, 0x1

    .line 52
    new-instance v0, Lcom/google/android/shared/util/SplitIterator;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/shared/util/SplitIterator;-><init>(Ljava/lang/CharSequence;IZZ)V

    return-object v0
.end method

.method public static splitOnWhitespaceOmitEmptyStrings(Ljava/lang/CharSequence;)Lcom/google/android/shared/util/SplitIterator;
    .locals 4
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/shared/util/SplitIterator;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/shared/util/SplitIterator;-><init>(Ljava/lang/CharSequence;IZZ)V

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/shared/util/SplitIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/shared/util/SplitIterator;->mSequence:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenStart:I

    iget v3, p0, Lcom/google/android/shared/util/SplitIterator;->mTokenEnd:I

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/shared/util/SplitIterator;->findNextToken()V

    .line 64
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
