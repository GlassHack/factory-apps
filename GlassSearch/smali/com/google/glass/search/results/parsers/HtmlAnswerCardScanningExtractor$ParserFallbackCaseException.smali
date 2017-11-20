.class Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;
.super Ljava/lang/Exception;
.source "HtmlAnswerCardScanningExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserFallbackCaseException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;


# direct methods
.method public constructor <init>(Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;Ljava/lang/String;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor$ParserFallbackCaseException;->this$0:Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;

    .line 226
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 227
    return-void
.end method
