.class public final enum Lcom/google/android/youtube/core/model/Video$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/Video$MediaType;

.field public static final enum EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

.field public static final enum MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

.field public static final enum TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 840
    new-instance v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Video$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 841
    new-instance v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    const-string v1, "TRAILER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Video$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 842
    new-instance v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    const-string v1, "EPISODE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Video$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 839
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$MediaType;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Video$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$MediaType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$MediaType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Video$MediaType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
