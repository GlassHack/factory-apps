.class public final enum Lcom/google/android/youtube/core/async/GDataRequest$Version;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequest$Version;

.field public static final enum V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

.field public static final enum V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;


# instance fields
.field public final headerValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    const-string v1, "V_2"

    const-string v2, "2"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/core/async/GDataRequest$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    const-string v1, "V_2_1"

    const-string v2, "2.1"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/async/GDataRequest$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequest$Version;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequest$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->headerValue:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest$Version;
    .locals 1

    .prologue
    .line 38
    const-string v0, "2.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest$Version;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequest$Version;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequest$Version;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/async/GDataRequest$Version;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->headerValue:Ljava/lang/String;

    return-object v0
.end method
