.class public Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
.super Ljava/lang/Object;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlAnswerCardResults"
.end annotation


# instance fields
.field public final autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

.field public final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/search/results/HtmlAnswerCard;",
            ">;"
        }
    .end annotation
.end field

.field public final commonSectionSource:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/util/List;Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;Ljava/lang/String;)V
    .locals 1
    .param p2, "autoplayTtsFormatString"    # Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .param p3, "commonSectionSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/search/results/HtmlAnswerCard;",
            ">;",
            "Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/HtmlAnswerCard;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .line 44
    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "commonSectionSource":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->commonSectionSource:Ljava/lang/String;

    .line 45
    return-void
.end method
