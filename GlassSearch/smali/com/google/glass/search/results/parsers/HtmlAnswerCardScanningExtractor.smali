.class public Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;
.super Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;
.source "HtmlAnswerCardScanningExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;
    }
.end annotation


# static fields
.field static final ARTICLE_EITHER_TAG_PREFIX_PATTERN:Ljava/util/regex/Pattern;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final GLASS_TOP_LEVEL_CLASSNAME_PATTERN:Ljava/lang/String; = "(gls-com|gls-crd|gls-tts)"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final GLASS_TOP_LEVEL_CLASS_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LANG_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SPAN_EITHER_TAG_PREFIX_PATTERN:Ljava/util/regex/Pattern;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    const-string v0, "</?article"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->ARTICLE_EITHER_TAG_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "</?span"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->SPAN_EITHER_TAG_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lang"

    aput-object v1, v0, v5

    const-string v1, "="

    aput-object v1, v0, v6

    const-string v1, "("

    aput-object v1, v0, v7

    const-string v1, "\""

    .line 65
    invoke-static {v1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->anyCharsExcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "|"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "\'"

    .line 66
    invoke-static {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->anyCharsExcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "|"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\\s\"\'>"

    .line 68
    invoke-static {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->anyCharsExcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")(\\s|>)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ")"

    aput-object v2, v0, v1

    .line 64
    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->compileWhitespaceSkippingPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->LANG_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "class"

    aput-object v1, v0, v5

    const-string v1, "="

    aput-object v1, v0, v6

    const-string v1, "("

    aput-object v1, v0, v7

    const-string v1, "(gls-com|gls-crd|gls-tts)"

    const-string v2, "\""

    .line 77
    invoke-static {v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->isolatedClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "|"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "(gls-com|gls-crd|gls-tts)"

    const-string v3, "\'"

    .line 78
    invoke-static {v2, v3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->isolatedClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "|"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(gls-com|gls-crd|gls-tts)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ")"

    aput-object v2, v0, v1

    .line 76
    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->compileWhitespaceSkippingPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->GLASS_TOP_LEVEL_CLASS_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;-><init>()V

    .line 224
    return-void
.end method

.method private static anyCharsExcept(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "terminators"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "([^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]*?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs compileWhitespaceSkippingPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "tokenPatterns"    # [Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "\\s*"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private extractElementContent(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 219
    const-string v2, ">"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 220
    .local v0, "extractFrom":I
    const-string v2, "<"

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, "extractTo":I
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isolatedClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->anyCharsExcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\s)?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "isolateOnLeft":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->anyCharsExcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "((\\s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "isolateOnRight":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->compileWhitespaceSkippingPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 8
    .param p1, "context"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "injectCommonSections"    # Z

    .prologue
    const/4 v7, 0x0

    .line 237
    if-nez p2, :cond_1

    .line 239
    const/4 v1, 0x0

    .line 253
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->scanForTopLevelElements(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v1

    .line 244
    .local v1, "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    iget-object v3, v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 245
    new-instance v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;

    const-string v4, "Scanner found no Glass cards."

    invoke-direct {v3, p0, v4}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;-><init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;
    sget-object v4, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to parse scanner extraction: "

    invoke-virtual {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attempting full parse."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    new-instance v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;

    invoke-direct {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;-><init>()V

    .line 253
    .local v2, "saxParser":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;
    invoke-virtual {v2, p1, p2, p3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v1

    goto :goto_0

    .line 249
    .end local v2    # "saxParser":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method scanForTopLevelElements(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 40
    .param p1, "displayContext"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "injectCommonSections"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 88
    .local v13, "extractedCards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard$Builder;>;"
    new-instance v14, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v14}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;-><init>()V

    .line 89
    .local v14, "extractedCommonSection":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    const/4 v12, 0x0

    .line 91
    .local v12, "extractedAutoplayTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    sget-object v35, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->GLASS_TOP_LEVEL_CLASS_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    .line 92
    .local v29, "topLevelClassMatcher":Ljava/util/regex/Matcher;
    sget-object v35, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->ARTICLE_EITHER_TAG_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 93
    .local v3, "articleLookaheadMatcher":Ljava/util/regex/Matcher;
    sget-object v35, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->SPAN_EITHER_TAG_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 94
    .local v24, "spanLookaheadMatcher":Ljava/util/regex/Matcher;
    sget-object v35, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->LANG_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 95
    .local v19, "langAttributeMatcher":Ljava/util/regex/Matcher;
    const/4 v10, 0x0

    .line 96
    .local v10, "documentIndex":I
    :cond_0
    :goto_0
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 97
    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 98
    .local v5, "classAttrStart":I
    const/16 v35, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 99
    .local v22, "matchedClassAttr":Ljava/lang/String;
    const/16 v35, 0x0

    .line 100
    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x27

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1

    const/16 v35, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x22

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v33, 0x1

    .line 101
    .local v33, "wasQuoted":Z
    :goto_1
    if-eqz v33, :cond_3

    const/16 v35, 0x1

    .line 102
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "classNames":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->contextAllowedForClassNames(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;)Z

    move-result v16

    .line 108
    .local v16, "inContext":Z
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v37, v37, 0x2

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, " gls-tts "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    .line 109
    .local v34, "wasTts":Z
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v37, v37, 0x2

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, " gls-com "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    .line 111
    .local v32, "wasCommon":Z
    if-eqz v34, :cond_4

    move-object/from16 v20, v24

    .line 112
    .local v20, "lookaheadMatcher":Ljava/util/regex/Matcher;
    :goto_3
    if-eqz v34, :cond_5

    const-string v26, "<span"

    .line 113
    .local v26, "startingPrefix":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v11

    .line 114
    .local v11, "elementStartsAt":I
    if-gez v11, :cond_6

    .line 116
    add-int/lit8 v10, v5, 0x1

    .line 117
    goto/16 :goto_0

    .line 100
    .end local v6    # "classNames":Ljava/lang/String;
    .end local v11    # "elementStartsAt":I
    .end local v16    # "inContext":Z
    .end local v20    # "lookaheadMatcher":Ljava/util/regex/Matcher;
    .end local v26    # "startingPrefix":Ljava/lang/String;
    .end local v32    # "wasCommon":Z
    .end local v33    # "wasQuoted":Z
    .end local v34    # "wasTts":Z
    :cond_2
    const/16 v33, 0x0

    goto/16 :goto_1

    .restart local v33    # "wasQuoted":Z
    :cond_3
    move-object/from16 v6, v22

    .line 102
    goto/16 :goto_2

    .restart local v6    # "classNames":Ljava/lang/String;
    .restart local v16    # "inContext":Z
    .restart local v32    # "wasCommon":Z
    .restart local v34    # "wasTts":Z
    :cond_4
    move-object/from16 v20, v3

    .line 111
    goto :goto_3

    .line 112
    .restart local v20    # "lookaheadMatcher":Ljava/util/regex/Matcher;
    :cond_5
    const-string v26, "<article"

    goto :goto_4

    .line 120
    .restart local v11    # "elementStartsAt":I
    .restart local v26    # "startingPrefix":Ljava/lang/String;
    :cond_6
    const/16 v28, 0x1

    .line 122
    .local v28, "tagStackDepth":I
    add-int/lit8 v21, v11, 0x1

    .line 123
    .local v21, "lookaheadTagIndex":I
    :cond_7
    :goto_5
    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 124
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->start()I

    move-result v35

    add-int/lit8 v21, v35, 0x1

    .line 127
    move/from16 v0, v21

    if-ge v0, v5, :cond_9

    .line 129
    add-int/lit8 v10, v5, 0x1

    .line 198
    :cond_8
    :goto_6
    if-eqz v28, :cond_0

    .line 199
    new-instance v36, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;

    const-string v37, "Couldn\'t balance start tag "

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v38

    if-eqz v38, :cond_12

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    :goto_7
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;-><init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;Ljava/lang/String;)V

    throw v36

    .line 132
    :cond_9
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    .line 133
    .local v31, "wasClosingTag":Z
    if-eqz v31, :cond_11

    .line 134
    add-int/lit8 v28, v28, -0x1

    .line 135
    if-nez v28, :cond_7

    .line 137
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->end()I

    move-result v35

    add-int/lit8 v10, v35, 0x1

    .line 138
    if-eqz v16, :cond_8

    .line 139
    if-eqz v34, :cond_e

    .line 140
    if-nez v12, :cond_8

    .line 143
    add-int/lit8 v35, v10, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-direct {v0, v1, v11, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->extractElementContent(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v35

    .line 144
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 146
    .local v30, "value":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 147
    const/16 v35, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    .line 148
    .local v18, "lang":Ljava/lang/String;
    if-nez v18, :cond_a

    .line 149
    const/16 v35, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    .line 151
    :cond_a
    if-nez v18, :cond_b

    .line 153
    const/16 v35, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    .line 155
    :cond_b
    new-instance v12, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .end local v12    # "extractedAutoplayTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    if-nez v18, :cond_c

    const-string v18, "en"

    .end local v18    # "lang":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .restart local v12    # "extractedAutoplayTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    goto/16 :goto_6

    .line 158
    :cond_d
    new-instance v12, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .end local v12    # "extractedAutoplayTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    const-string v35, "en"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v12, v0, v1}, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v12    # "extractedAutoplayTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    goto/16 :goto_6

    .line 160
    .end local v30    # "value":Ljava/lang/String;
    :cond_e
    if-eqz v32, :cond_f

    .line 161
    add-int/lit8 v35, v10, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-direct {v0, v1, v11, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->extractElementContent(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "content":Ljava/lang/String;
    iget-object v0, v14, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 166
    .end local v9    # "content":Ljava/lang/String;
    :cond_f
    const-string v35, ">"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v27

    .line 167
    .local v27, "tagEndsAt":I
    add-int/lit8 v35, v27, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 168
    .local v25, "startTag":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;->contextualClassFor(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v39

    add-int v38, v38, v39

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v37, " "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "classNamesWithContext":Ljava/lang/String;
    if-eqz v33, :cond_10

    .line 171
    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 176
    :goto_8
    new-instance v23, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    invoke-direct/range {v23 .. v23}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;-><init>()V

    .line 177
    .local v23, "newCard":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 179
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    move-object/from16 v35, v0

    add-int/lit8 v36, v27, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v35, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 185
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 186
    goto/16 :goto_6

    .line 173
    .end local v23    # "newCard":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    :cond_10
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v37, v37, 0x2

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v37, "\""

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    goto :goto_8

    .line 193
    .end local v7    # "classNamesWithContext":Ljava/lang/String;
    .end local v25    # "startTag":Ljava/lang/String;
    .end local v27    # "tagEndsAt":I
    :cond_11
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_5

    .line 199
    .end local v31    # "wasClosingTag":Z
    :cond_12
    new-instance v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 205
    .end local v5    # "classAttrStart":I
    .end local v6    # "classNames":Ljava/lang/String;
    .end local v11    # "elementStartsAt":I
    .end local v16    # "inContext":Z
    .end local v20    # "lookaheadMatcher":Ljava/util/regex/Matcher;
    .end local v21    # "lookaheadTagIndex":I
    .end local v22    # "matchedClassAttr":Ljava/lang/String;
    .end local v26    # "startingPrefix":Ljava/lang/String;
    .end local v28    # "tagStackDepth":I
    .end local v32    # "wasCommon":Z
    .end local v33    # "wasQuoted":Z
    .end local v34    # "wasTts":Z
    :cond_13
    const/16 v35, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/search/results/HtmlAnswerCard;)Lcom/google/glass/search/results/HtmlAnswerCard;

    move-result-object v8

    .line 206
    .local v8, "commonSection":Lcom/google/glass/search/results/HtmlAnswerCard;
    if-eqz p3, :cond_14

    move-object/from16 v17, v8

    .line 207
    .local v17, "injectionContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    :goto_9
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 208
    .local v4, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v15, v0, :cond_15

    .line 209
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/search/results/HtmlAnswerCard;)Lcom/google/glass/search/results/HtmlAnswerCard;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 206
    .end local v4    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    .end local v15    # "i":I
    .end local v17    # "injectionContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    :cond_14
    const/16 v17, 0x0

    goto :goto_9

    .line 211
    .restart local v4    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    .restart local v15    # "i":I
    .restart local v17    # "injectionContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    :cond_15
    new-instance v35, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;

    iget-object v0, v8, Lcom/google/glass/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v0, v4, v12, v1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;-><init>(Ljava/util/List;Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;Ljava/lang/String;)V

    return-object v35
.end method
