.class public final enum Lcom/google/glass/musicplayer/cards/Card$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum ALBUM:Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum ARTIST:Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum BEST_MATCH:Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum CATEGORY:Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum GENERIC_RADIO_SEED:Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum PLAYLIST:Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum RADIO:Lcom/google/glass/musicplayer/cards/Card$Type;

.field public static final enum SONG:Lcom/google/glass/musicplayer/cards/Card$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "SONG"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 21
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->ALBUM:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 22
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->ARTIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 23
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->PLAYLIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 24
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "RADIO"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->RADIO:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 25
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "BEST_MATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->BEST_MATCH:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 26
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "CATEGORY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->CATEGORY:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 27
    new-instance v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    const-string v1, "GENERIC_RADIO_SEED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/musicplayer/cards/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->GENERIC_RADIO_SEED:Lcom/google/glass/musicplayer/cards/Card$Type;

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/glass/musicplayer/cards/Card$Type;

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->ALBUM:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->ARTIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->PLAYLIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->RADIO:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/musicplayer/cards/Card$Type;->BEST_MATCH:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/musicplayer/cards/Card$Type;->CATEGORY:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/musicplayer/cards/Card$Type;->GENERIC_RADIO_SEED:Lcom/google/glass/musicplayer/cards/Card$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->$VALUES:[Lcom/google/glass/musicplayer/cards/Card$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->$VALUES:[Lcom/google/glass/musicplayer/cards/Card$Type;

    invoke-virtual {v0}, [Lcom/google/glass/musicplayer/cards/Card$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method
