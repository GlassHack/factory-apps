.class Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;
.super Ljava/lang/Object;
.source "HtmlAnswerCardSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserFrame"
.end annotation


# instance fields
.field private endDepth:I

.field extra:Ljava/lang/Object;

.field final synthetic this$1:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;

.field private type:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;


# direct methods
.method public constructor <init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;I)V
    .locals 1
    .param p2, "type"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    .param p3, "endDepth"    # I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->this$1:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 159
    iput p3, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->endDepth:I

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;

    .prologue
    .line 151
    iget v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$HtmlAnswerCardsHandler$ParserFrame;->endDepth:I

    return v0
.end method
