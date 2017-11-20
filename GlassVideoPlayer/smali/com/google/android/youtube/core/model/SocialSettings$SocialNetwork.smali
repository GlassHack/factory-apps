.class public final enum Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

.field public static final enum FACEBOOK:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

.field public static final enum ORKUT:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

.field public static final enum TWITTER:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    const-string v1, "FACEBOOK"

    const-string v2, "1"

    const-string v3, "Facebook"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->FACEBOOK:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    .line 59
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    const-string v1, "TWITTER"

    const-string v2, "3"

    const-string v3, "Twitter"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->TWITTER:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    .line 60
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    const-string v1, "ORKUT"

    const-string v2, "5"

    const-string v3, "Orkut"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ORKUT:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->FACEBOOK:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->TWITTER:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ORKUT:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->id:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
