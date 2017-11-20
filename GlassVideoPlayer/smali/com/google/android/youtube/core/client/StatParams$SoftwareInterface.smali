.class public final enum Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ANDROID:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

.field public static final enum OTHERAPP:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

.field public static final enum TVANDROID:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;


# instance fields
.field public final param:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    const-string v1, "ANDROID"

    const-string v2, "android"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->ANDROID:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    const-string v1, "TVANDROID"

    const-string v2, "tvandroid"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->TVANDROID:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    const-string v1, "OTHERAPP"

    const-string v2, "otherapp"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->OTHERAPP:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown_interface"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->UNKNOWN:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->ANDROID:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->TVANDROID:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->OTHERAPP:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->UNKNOWN:Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->ENUM$VALUES:[Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->param:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;->ENUM$VALUES:[Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/client/StatParams$SoftwareInterface;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
