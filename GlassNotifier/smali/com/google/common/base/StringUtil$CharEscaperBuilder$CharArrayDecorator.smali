.class Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/common/base/StringUtil$CharEscaper;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/StringUtil$CharEscaperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayDecorator"
.end annotation


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method constructor <init>([[C)V
    .locals 1
    .param p1, "replacements"    # [[C

    .prologue
    .line 2096
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/StringUtil$CharEscaper;-><init>(Lcom/google/common/base/StringUtil$1;)V

    .line 2097
    iput-object p1, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 2098
    array-length v0, p1

    iput v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    .line 2099
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2108
    .local v2, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2109
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2110
    .local v0, "c":C
    iget-object v3, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 2111
    invoke-virtual {p0, p1, v1}, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2114
    .end local v0    # "c":C
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 2108
    .restart local v0    # "c":C
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected escape(C)[C
    .locals 1
    .param p1, "c"    # C
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2120
    iget v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
