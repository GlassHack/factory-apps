.class public Lcom/google/glass/maps/util/SpanUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 31
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    instance-of v2, p0, Landroid/text/Spanned;

    .line 37
    instance-of v3, p1, Landroid/text/Spanned;

    .line 38
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 39
    check-cast p0, Landroid/text/Spanned;

    check-cast p1, Landroid/text/Spanned;

    invoke-static {p0, p1}, Lcom/google/glass/maps/util/SpanUtil;->spansAreSame(Landroid/text/Spanned;Landroid/text/Spanned;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 46
    goto :goto_0

    .line 42
    :cond_5
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method private static spansAreSame(Landroid/text/Spanned;Landroid/text/Spanned;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 59
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v3, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 60
    array-length v0, v2

    array-length v4, v3

    if-eq v0, v4, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 63
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 65
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v2, v0

    .line 66
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v3, v0

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    aget-object v4, v2, v0

    .line 67
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v3, v0

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 73
    aget-object v4, v2, v0

    instance-of v4, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
