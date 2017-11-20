.class public final enum Lcom/google/android/youtube/core/model/UserAuth$AuthType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/UserAuth$AuthType;

.field public static final enum OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    const-string v1, "CLIENTLOGIN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserAuth$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    const-string v1, "OAUTH2"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/UserAuth$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth$AuthType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/UserAuth$AuthType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
