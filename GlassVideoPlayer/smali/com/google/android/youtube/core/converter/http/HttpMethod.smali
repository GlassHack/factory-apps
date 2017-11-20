.class public abstract enum Lcom/google/android/youtube/core/converter/http/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DELETE:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public static final enum GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public static final enum HEAD:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public static final enum PATCH:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public static final enum POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public static final enum PUT:Lcom/google/android/youtube/core/converter/http/HttpMethod;


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
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpMethod$1;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/converter/http/HttpMethod$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->HEAD:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpMethod$2;

    const-string v1, "GET"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/converter/http/HttpMethod$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 32
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpMethod$3;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/converter/http/HttpMethod$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpMethod$4;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/converter/http/HttpMethod$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PUT:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 44
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpMethod$5;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/converter/http/HttpMethod$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PATCH:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 50
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpMethod$6;

    const-string v1, "DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/converter/http/HttpMethod$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->DELETE:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/converter/http/HttpMethod;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->HEAD:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PUT:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PATCH:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/converter/http/HttpMethod;->DELETE:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->ENUM$VALUES:[Lcom/google/android/youtube/core/converter/http/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/youtube/core/converter/http/HttpMethod;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/converter/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/http/HttpMethod;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/converter/http/HttpMethod;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->ENUM$VALUES:[Lcom/google/android/youtube/core/converter/http/HttpMethod;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method public supportsPayload()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PUT:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PATCH:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
