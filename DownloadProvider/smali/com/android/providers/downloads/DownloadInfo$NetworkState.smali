.class public final enum Lcom/android/providers/downloads/DownloadInfo$NetworkState;
.super Ljava/lang/Enum;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/downloads/DownloadInfo$NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/downloads/DownloadInfo$NetworkState;

.field public static final enum BLOCKED:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

.field public static final enum CANNOT_USE_ROAMING:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

.field public static final enum NO_CONNECTION:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

.field public static final enum OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

.field public static final enum RECOMMENDED_UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

.field public static final enum TYPE_DISALLOWED_BY_REQUESTOR:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

.field public static final enum UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 174
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    const-string v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->NO_CONNECTION:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 179
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    const-string v1, "UNUSABLE_DUE_TO_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 185
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    const-string v1, "RECOMMENDED_UNUSABLE_DUE_TO_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->RECOMMENDED_UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 191
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    const-string v1, "CANNOT_USE_ROAMING"

    invoke-direct {v0, v1, v7}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->CANNOT_USE_ROAMING:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 197
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    const-string v1, "TYPE_DISALLOWED_BY_REQUESTOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->TYPE_DISALLOWED_BY_REQUESTOR:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 202
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    const-string v1, "BLOCKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->BLOCKED:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 165
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->NO_CONNECTION:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->RECOMMENDED_UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->CANNOT_USE_ROAMING:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->TYPE_DISALLOWED_BY_REQUESTOR:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->BLOCKED:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->$VALUES:[Lcom/android/providers/downloads/DownloadInfo$NetworkState;

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
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/downloads/DownloadInfo$NetworkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/downloads/DownloadInfo$NetworkState;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->$VALUES:[Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    invoke-virtual {v0}, [Lcom/android/providers/downloads/DownloadInfo$NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    return-object v0
.end method
