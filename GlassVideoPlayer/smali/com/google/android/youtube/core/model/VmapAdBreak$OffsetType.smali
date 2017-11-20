.class public final enum Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

.field public static final enum PERCENTAGE:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

.field public static final enum POSITIONAL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

.field public static final enum POST_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

.field public static final enum PRE_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

.field public static final enum TIME:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->TIME:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    new-instance v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    const-string v1, "PERCENTAGE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->PERCENTAGE:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    new-instance v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    const-string v1, "PRE_ROLL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->PRE_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    new-instance v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    const-string v1, "POST_ROLL"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->POST_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    new-instance v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    const-string v1, "POSITIONAL"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->POSITIONAL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    new-instance v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->UNKNOWN:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    sget-object v1, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->TIME:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->PERCENTAGE:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->PRE_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->POST_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->POSITIONAL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->UNKNOWN:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
