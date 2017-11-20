.class public Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;
.super Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;
.source "HtmlAnswerCardSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$1;,
        Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;,
        Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static parseMethod:Ljava/lang/reflect/Method;

.field private static parserInstance:Ljava/lang/Object;

.field private static setContentHandlerMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    sput-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parserInstance:Ljava/lang/Object;

    .line 42
    sput-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parseMethod:Ljava/lang/reflect/Method;

    .line 43
    sput-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->setContentHandlerMethod:Ljava/lang/reflect/Method;

    .line 67
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->USE_SAX_PARSER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->loadParsingMethods()V

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static getAttributesString(Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->getAttributesString(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAttributesString(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "attrs"    # Lorg/xml/sax/Attributes;
    .param p1, "extraClass"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v1, "b":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 461
    .local v0, "addedExtraClass":Z
    invoke-interface {p0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 462
    .local v3, "numAttributes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 463
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v4, "=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 467
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 468
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/4 v0, 0x1

    .line 473
    :cond_1
    const-string v4, "\" "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 476
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "class=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getClassNames(Lorg/xml/sax/Attributes;)Ljava/util/List;
    .locals 4
    .param p0, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const-string v2, "class"

    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 447
    .local v1, "classIndex":I
    if-gez v1, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 449
    .local v0, "classArray":[Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 448
    .end local v0    # "classArray":[Ljava/lang/String;
    :cond_0
    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadParsingMethods()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 50
    :try_start_0
    const-string v2, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "parser":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "parse"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/xml/sax/InputSource;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parseMethod:Ljava/lang/reflect/Method;

    .line 52
    const-string v2, "setContentHandler"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/xml/sax/ContentHandler;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->setContentHandlerMethod:Ljava/lang/reflect/Method;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parserInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 64
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Couldn\'t parse HTML result"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Couldn\'t parse HTML result"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Couldn\'t parse HTML result"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Couldn\'t parse HTML result"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;[BZ)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 15
    .param p1, "context"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .param p2, "bytes"    # [B
    .param p3, "injectCommonSections"    # Z

    .prologue
    .line 80
    sget-object v9, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parserInstance:Ljava/lang/Object;

    if-nez v9, :cond_0

    .line 81
    invoke-static {}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->loadParsingMethods()V

    .line 84
    :cond_0
    :try_start_0
    new-instance v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-direct {v5, p0, v0, v9}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;-><init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$1;)V

    .line 85
    .local v5, "handler":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;
    sget-object v9, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->setContentHandlerMethod:Ljava/lang/reflect/Method;

    sget-object v10, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parserInstance:Ljava/lang/Object;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    .local v7, "is":Ljava/io/InputStream;
    sget-object v9, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parseMethod:Ljava/lang/reflect/Method;

    sget-object v10, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parserInstance:Ljava/lang/Object;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Lorg/xml/sax/InputSource;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 91
    .local v2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    invoke-static {v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->access$100(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;)Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/search/results/HtmlAnswerCard;)Lcom/google/glass/search/results/HtmlAnswerCard;

    move-result-object v3

    .line 92
    .local v3, "commonContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    if-eqz p3, :cond_1

    move-object v6, v3

    .line 93
    .local v6, "injectionContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    :goto_0
    invoke-static {v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->access$200(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    .line 94
    .local v1, "card":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    invoke-virtual {v1, v6}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/search/results/HtmlAnswerCard;)Lcom/google/glass/search/results/HtmlAnswerCard;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 99
    .end local v1    # "card":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    .end local v2    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    .end local v3    # "commonContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    .end local v5    # "handler":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;
    .end local v6    # "injectionContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    .end local v7    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/lang/IllegalAccessException;
    sget-object v9, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Couldn\'t parse HTML result"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v4, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    const/4 v8, 0x0

    :goto_3
    return-object v8

    .line 92
    .restart local v2    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    .restart local v3    # "commonContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    .restart local v5    # "handler":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 96
    .restart local v6    # "injectionContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    :cond_2
    :try_start_1
    new-instance v8, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;

    .line 97
    invoke-static {v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->access$300(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;)Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v9

    iget-object v10, v3, Lcom/google/glass/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    invoke-direct {v8, v2, v9, v10}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;-><init>(Ljava/util/List;Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .local v8, "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    goto :goto_3

    .line 101
    .end local v2    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    .end local v3    # "commonContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    .end local v5    # "handler":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;
    .end local v6    # "injectionContent":Lcom/google/glass/search/results/HtmlAnswerCard;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    :catch_1
    move-exception v4

    .line 102
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v9, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Couldn\'t parse HTML result"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v4, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 2
    .param p1, "context"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "injectCommonSections"    # Z

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 119
    :goto_0
    return-object v1

    .line 118
    :cond_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 119
    .local v0, "bytes":[B
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;[BZ)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v1

    goto :goto_0
.end method
