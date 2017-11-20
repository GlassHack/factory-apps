.class final enum Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum NEXT:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum NONE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum PAUSE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum PLAY:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum PREV:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum RADIO:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum STOP:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field public static final enum VOLUME:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NONE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PLAY:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PAUSE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NEXT:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "PREV"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PREV:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "RADIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->RADIO:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->STOP:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const-string v1, "VOLUME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->VOLUME:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    sget-object v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NONE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PLAY:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PAUSE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NEXT:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PREV:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->RADIO:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->STOP:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->VOLUME:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->$VALUES:[Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->$VALUES:[Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    invoke-virtual {v0}, [Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    return-object v0
.end method
