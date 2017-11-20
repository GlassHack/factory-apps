.class final enum Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
.super Ljava/lang/Enum;
.source "HtmlAnswerCardSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum AUTOPLAY_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum EXTRA_ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum EXTRA_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum NONE:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

.field public static final enum TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->NONE:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 127
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 129
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 131
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 133
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "TTS"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 135
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "EXTRA_TTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 137
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "ACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 139
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "EXTRA_ACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 141
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    const-string v1, "AUTOPLAY_TTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->AUTOPLAY_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    .line 123
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    sget-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->NONE:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->SKIP:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->CARD:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->COMMON:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->EXTRA_ACTION:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->AUTOPLAY_TTS:Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->$VALUES:[Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    const-class v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->$VALUES:[Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    invoke-virtual {v0}, [Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser$StateType;

    return-object v0
.end method
