.class public final enum Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

.field public static final enum INVALID_PROTO:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

.field public static final enum NOT_AUTHORIZED:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

.field public static final enum UNKNOWN_REQUEST:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    const-string v1, "UNKNOWN_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 90
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    const-string v1, "NOT_AUTHORIZED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NOT_AUTHORIZED:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 93
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    const-string v1, "INVALID_PROTO"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INVALID_PROTO:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 96
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 102
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NOT_AUTHORIZED:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INVALID_PROTO:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->$VALUES:[Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->$VALUES:[Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    return-object v0
.end method
