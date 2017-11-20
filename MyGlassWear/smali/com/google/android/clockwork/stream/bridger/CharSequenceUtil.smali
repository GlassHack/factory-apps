.class public Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;
.super Ljava/lang/Object;
.source "CharSequenceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charSequenceToHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "charSequence"    # Ljava/lang/CharSequence;
    .param p1, "fallback"    # Ljava/lang/String;

    .prologue
    .line 27
    instance-of v3, p0, Landroid/text/SpannableString;

    if-eqz v3, :cond_1

    .line 28
    check-cast p0, Landroid/text/SpannableString;

    .end local p0    # "charSequence":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p1

    .line 43
    .end local p1    # "fallback":Ljava/lang/String;
    .local v0, "i":I
    .local v1, "lines":[Ljava/lang/String;
    .local v2, "result":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object p1

    .line 29
    .end local v0    # "i":I
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/StringBuilder;
    .restart local p0    # "charSequence":Ljava/lang/CharSequence;
    .restart local p1    # "fallback":Ljava/lang/String;
    :cond_1
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 31
    check-cast p0, Ljava/lang/String;

    .end local p0    # "charSequence":Ljava/lang/CharSequence;
    const-string v3, "\\r?\\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    .restart local v1    # "lines":[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_2

    .line 33
    const-string p1, ""

    goto :goto_0

    .line 35
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 37
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_3
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "htmlString"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->trimTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static trimTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    .end local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 62
    .local v0, "newLength":I
    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 66
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method
