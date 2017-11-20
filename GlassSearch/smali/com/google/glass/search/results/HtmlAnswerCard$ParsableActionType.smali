.class public final enum Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
.super Ljava/lang/Enum;
.source "HtmlAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/HtmlAnswerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParsableActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

.field public static final enum CUSTOM:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

.field public static final enum NAVIGATE:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

.field public static final enum PLAY_VIDEO:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

.field public static final enum READ_ALOUD:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

.field public static final enum VIEW_WEB_SITE:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

.field public static final enum VOICE_CALL:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    const-string v1, "READ_ALOUD"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->READ_ALOUD:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .line 92
    new-instance v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    const-string v1, "VOICE_CALL"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->VOICE_CALL:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .line 93
    new-instance v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    const-string v1, "NAVIGATE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->NAVIGATE:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .line 94
    new-instance v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    const-string v1, "VIEW_WEB_SITE"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->VIEW_WEB_SITE:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .line 95
    new-instance v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    const-string v1, "PLAY_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->PLAY_VIDEO:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .line 96
    new-instance v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->CUSTOM:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->READ_ALOUD:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->VOICE_CALL:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->NAVIGATE:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->VIEW_WEB_SITE:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->PLAY_VIDEO:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->CUSTOM:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->$VALUES:[Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->$VALUES:[Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    invoke-virtual {v0}, [Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    return-object v0
.end method
