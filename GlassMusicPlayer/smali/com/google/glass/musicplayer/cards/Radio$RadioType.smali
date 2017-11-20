.class public final enum Lcom/google/glass/musicplayer/cards/Radio$RadioType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/musicplayer/cards/Radio$RadioType;

.field public static final enum CARD_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

.field public static final enum GENERIC_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

.field public static final enum IFL:Lcom/google/glass/musicplayer/cards/Radio$RadioType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    const-string v1, "CARD_SEEDED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->CARD_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    .line 28
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    const-string v1, "IFL"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->IFL:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    .line 30
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    const-string v1, "GENERIC_SEEDED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->GENERIC_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    sget-object v1, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->CARD_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->IFL:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->GENERIC_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->$VALUES:[Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/musicplayer/cards/Radio$RadioType;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/musicplayer/cards/Radio$RadioType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->$VALUES:[Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-virtual {v0}, [Lcom/google/glass/musicplayer/cards/Radio$RadioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    return-object v0
.end method
