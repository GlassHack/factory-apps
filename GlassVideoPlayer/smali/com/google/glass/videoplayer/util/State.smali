.class public final enum Lcom/google/glass/videoplayer/util/State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/videoplayer/util/State;

.field public static final enum CANCELED:Lcom/google/glass/videoplayer/util/State;

.field public static final enum ERROR:Lcom/google/glass/videoplayer/util/State;

.field public static final enum INITIALIZED:Lcom/google/glass/videoplayer/util/State;

.field public static final enum LOADING:Lcom/google/glass/videoplayer/util/State;

.field public static final enum NONE:Lcom/google/glass/videoplayer/util/State;

.field public static final enum PAUSED:Lcom/google/glass/videoplayer/util/State;

.field public static final enum PLAYING:Lcom/google/glass/videoplayer/util/State;

.field public static final enum REQUESTING_ID:Lcom/google/glass/videoplayer/util/State;

.field public static final enum STOP:Lcom/google/glass/videoplayer/util/State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "REQUESTING_ID"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->REQUESTING_ID:Lcom/google/glass/videoplayer/util/State;

    .line 12
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->LOADING:Lcom/google/glass/videoplayer/util/State;

    .line 13
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->INITIALIZED:Lcom/google/glass/videoplayer/util/State;

    .line 14
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->PLAYING:Lcom/google/glass/videoplayer/util/State;

    .line 15
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->PAUSED:Lcom/google/glass/videoplayer/util/State;

    .line 16
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->ERROR:Lcom/google/glass/videoplayer/util/State;

    .line 17
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->STOP:Lcom/google/glass/videoplayer/util/State;

    .line 18
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "CANCELED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->CANCELED:Lcom/google/glass/videoplayer/util/State;

    .line 19
    new-instance v0, Lcom/google/glass/videoplayer/util/State;

    const-string v1, "NONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/glass/videoplayer/util/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->NONE:Lcom/google/glass/videoplayer/util/State;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/glass/videoplayer/util/State;

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->REQUESTING_ID:Lcom/google/glass/videoplayer/util/State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->LOADING:Lcom/google/glass/videoplayer/util/State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->INITIALIZED:Lcom/google/glass/videoplayer/util/State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->PLAYING:Lcom/google/glass/videoplayer/util/State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->PAUSED:Lcom/google/glass/videoplayer/util/State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/videoplayer/util/State;->ERROR:Lcom/google/glass/videoplayer/util/State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/videoplayer/util/State;->STOP:Lcom/google/glass/videoplayer/util/State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/videoplayer/util/State;->CANCELED:Lcom/google/glass/videoplayer/util/State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/videoplayer/util/State;->NONE:Lcom/google/glass/videoplayer/util/State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/videoplayer/util/State;->$VALUES:[Lcom/google/glass/videoplayer/util/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/videoplayer/util/State;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/google/glass/videoplayer/util/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/videoplayer/util/State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/videoplayer/util/State;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/glass/videoplayer/util/State;->$VALUES:[Lcom/google/glass/videoplayer/util/State;

    invoke-virtual {v0}, [Lcom/google/glass/videoplayer/util/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/videoplayer/util/State;

    return-object v0
.end method
