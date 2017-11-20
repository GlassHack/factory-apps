.class Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HtmlAnswerCardSaxParser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtmlAnswerCardsHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
    }
.end annotation


# instance fields
.field private autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/search/results/HtmlAnswerCard$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final commonContent:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

.field currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

.field private domDepth:I

.field private parserState:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;",
            ">;"
        }
    .end annotation
.end field

.field private parsingForContext:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

.field final synthetic this$0:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;


# direct methods
.method private constructor <init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;)V
    .locals 4
    .param p1, "this$0"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;
    .param p2, "context"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    .prologue
    const/4 v1, 0x0

    .line 185
    iput-object p1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->this$0:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 164
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 171
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    .line 174
    iput-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    .line 178
    new-instance v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v0}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    .line 180
    iput-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .line 186
    iput-object p2, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    .line 187
    iget-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    new-instance v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->NONE:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;-><init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;
    .param p2, "x1"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .param p3, "x2"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$1;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;-><init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;)Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;)Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    return-object v0
.end method

.method private advanceStateIfStartingField(Ljava/util/List;Ljava/util/EnumSet;Lorg/xml/sax/Attributes;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    .locals 4
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "classnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "contexts":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;>;"
    const-string v2, "gls-tts"

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    .line 272
    invoke-virtual {p2, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 273
    .local v1, "ttsType":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v3

    iput-object v3, v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 282
    .end local v1    # "ttsType":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    :goto_1
    return-object v1

    .line 272
    :cond_0
    sget-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    goto :goto_0

    .line 276
    :cond_1
    const-string v2, "gls-ma"

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    .line 278
    invoke-virtual {p2, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 279
    .local v0, "maType":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    :goto_2
    invoke-direct {p0, v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    move-object v1, v0

    .line 280
    goto :goto_1

    .line 278
    .end local v0    # "maType":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    :cond_2
    sget-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    goto :goto_2

    .line 282
    :cond_3
    iget-object v2, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    invoke-static {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v1

    goto :goto_1
.end method

.method private enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
    .locals 2
    .param p1, "type"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .prologue
    .line 211
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    iget v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;-><init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;I)V

    .line 212
    .local v0, "newFrame":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
    iget-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-object v0
.end method

.method private finishParserState(Ljava/lang/String;)V
    .locals 11
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 220
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 221
    .local v4, "oldFrame":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 222
    .local v3, "nextFrame":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
    const/4 v1, 0x0

    .line 223
    .local v1, "container":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    invoke-static {v3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v6

    sget-object v7, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v6, v7}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 224
    invoke-static {v3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v6

    sget-object v7, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v6, v7}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    :cond_0
    iget-object v1, v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .end local v1    # "container":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    check-cast v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    .line 228
    .restart local v1    # "container":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    :cond_1
    sget-object v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$1;->$SwitchMap$com$google$glass$search$results$parsers$HtmlAnswerCardSaxParser$StateType:[I

    invoke-static {v4}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 258
    invoke-static {}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Don\'t know how to finish parser state %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    if-eqz v1, :cond_2

    .line 231
    iget-object v6, v4, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v6, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    iput-object v6, v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    goto :goto_0

    .line 235
    :pswitch_2
    if-eqz v1, :cond_2

    .line 236
    iget-object v5, v4, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    .line 237
    .local v5, "recorder":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->parseMenuAction(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 238
    .local v2, "newAction":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 239
    iget-object v6, v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_3
    invoke-static {}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Ignoring action with invalid spec."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    .end local v2    # "newAction":Lorg/json/JSONObject;
    .end local v5    # "recorder":Ljava/lang/StringBuilder;
    :pswitch_3
    iget-object v0, v4, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    .line 247
    .local v0, "card":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    iget-object v6, v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "</"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startTopLevelElement(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/List;Ljava/util/EnumSet;)V
    .locals 11
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "contexts":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 334
    const-string v8, "article"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "gls-crd"

    .line 335
    invoke-interface {p3, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_1

    move v4, v6

    .line 336
    .local v4, "isCard":Z
    :goto_0
    const-string v8, "gls-com"

    invoke-interface {p3, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_2

    move v5, v6

    .line 337
    .local v5, "isCommon":Z
    :goto_1
    const-string v8, "gls-tts"

    invoke-interface {p3, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_3

    move v3, v6

    .line 338
    .local v3, "isAutoTts":Z
    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    .line 373
    :cond_0
    :goto_3
    return-void

    .end local v3    # "isAutoTts":Z
    .end local v4    # "isCard":Z
    .end local v5    # "isCommon":Z
    :cond_1
    move v4, v7

    .line 335
    goto :goto_0

    .restart local v4    # "isCard":Z
    :cond_2
    move v5, v7

    .line 336
    goto :goto_1

    .restart local v5    # "isCommon":Z
    :cond_3
    move v3, v7

    .line 337
    goto :goto_2

    .line 343
    .restart local v3    # "isAutoTts":Z
    :cond_4
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    sget-object v7, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v6, v7}, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 344
    sget-object v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-direct {p0, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    goto :goto_3

    .line 347
    :cond_5
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 348
    sget-object v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-direct {p0, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    goto :goto_3

    .line 352
    :cond_6
    if-eqz v4, :cond_9

    .line 353
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->contextualClassFor(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "contextClass":Ljava/lang/String;
    new-instance v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v1}, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;-><init>()V

    .line 356
    .local v1, "card":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    const-string v6, " "

    invoke-static {p2, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->getAttributesString(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "attrs":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v0, ""

    .line 358
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 359
    sget-object v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-direct {p0, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v6

    iput-object v1, v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 360
    iput-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    goto/16 :goto_3

    .line 356
    .end local v0    # "attrs":Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 361
    .end local v1    # "card":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    .end local v2    # "contextClass":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_a

    .line 362
    sget-object v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-direct {p0, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iput-object v7, v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 363
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iput-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    goto/16 :goto_3

    .line 364
    :cond_a
    if-eqz v3, :cond_0

    .line 366
    iget-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    if-nez v6, :cond_b

    .line 367
    invoke-virtual {p0, p2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .line 368
    sget-object v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->AUTOPLAY_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-direct {p0, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    iput-object v7, v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    goto/16 :goto_3

    .line 370
    :cond_b
    sget-object v6, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-direct {p0, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    goto/16 :goto_3
.end method


# virtual methods
.method public characters([CII)V
    .locals 8
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 403
    iget-object v4, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 404
    .local v2, "frame":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
    invoke-static {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v4

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->NONE:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v4, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v4

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v4, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 410
    .local v3, "newFragment":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "escapedFragment":Ljava/lang/String;
    sget-object v4, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$1;->$SwitchMap$com$google$glass$search$results$parsers$HtmlAnswerCardSaxParser$StateType:[I

    invoke-static {v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 426
    :pswitch_0
    iget-object v4, v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v4, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v5, v4, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, v4, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    .line 427
    iget-object v4, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iget-object v4, v4, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v0, v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    .line 416
    .local v0, "container":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    iget-object v4, v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 419
    .end local v0    # "container":Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
    :pswitch_2
    iget-object v4, v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v4, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iget-object v4, v4, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 423
    :pswitch_3
    iget-object v4, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iget-object v4, v4, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :pswitch_4
    iget-object v4, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iget-object v4, v4, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 433
    :pswitch_5
    iget-object v4, v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v4, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v5, v4, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, v4, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    .line 380
    iget v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 382
    iget-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 383
    .local v0, "frame":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iget-object v1, v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    invoke-static {v1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$600(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)I

    move-result v1

    iget v2, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->domDepth:I

    if-ne v1, v2, :cond_3

    .line 389
    invoke-direct {p0, p3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->finishParserState(Ljava/lang/String;)V

    .line 396
    :cond_2
    :goto_0
    return-void

    .line 393
    :cond_3
    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iget-object v1, v1, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .locals 4
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 198
    const-string v2, "lang"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "langIndex":I
    if-gez v1, :cond_0

    const-string v0, "en"

    .line 203
    .local v0, "lang":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 202
    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 291
    iget v5, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 293
    invoke-static {p4}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->getClassNames(Lorg/xml/sax/Attributes;)Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->getContextsAllowedByClassNames(Ljava/util/List;)Ljava/util/EnumSet;

    move-result-object v2

    .line 295
    .local v2, "contexts":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;>;"
    iget-object v5, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    invoke-static {v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v3

    .line 297
    .local v3, "currentState":Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->NONE:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->startTopLevelElement(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/List;Ljava/util/EnumSet;)V

    goto :goto_0

    .line 306
    :cond_2
    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 307
    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 310
    invoke-static {}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Ignoring embedded <%s> tag in state %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_3
    invoke-direct {p0, v1, v2, p4}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->advanceStateIfStartingField(Ljava/util/List;Ljava/util/EnumSet;Lorg/xml/sax/Attributes;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    move-result-object v3

    .line 316
    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 317
    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 318
    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    :cond_4
    iget-object v5, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/search/results/HtmlAnswerCard$Builder;

    iget-object v4, v5, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    .line 320
    .local v4, "recorder":Ljava/lang/StringBuilder;
    const-string v6, "<"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v5, " "

    invoke-static {p4}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;->getAttributesString(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "attrs":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, ""

    .line 323
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 320
    .end local v0    # "attrs":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 321
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
