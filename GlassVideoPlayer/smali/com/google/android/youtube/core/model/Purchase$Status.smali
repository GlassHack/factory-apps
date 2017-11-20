.class public final enum Lcom/google/android/youtube/core/model/Purchase$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/Purchase$Status;

.field public static final enum EXPIRED:Lcom/google/android/youtube/core/model/Purchase$Status;

.field public static final enum OTHER:Lcom/google/android/youtube/core/model/Purchase$Status;

.field public static final enum PENDING:Lcom/google/android/youtube/core/model/Purchase$Status;

.field public static final enum REJECTED:Lcom/google/android/youtube/core/model/Purchase$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->PENDING:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 33
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 34
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->EXPIRED:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 35
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->REJECTED:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/model/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->OTHER:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Purchase$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->PENDING:Lcom/google/android/youtube/core/model/Purchase$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->EXPIRED:Lcom/google/android/youtube/core/model/Purchase$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->REJECTED:Lcom/google/android/youtube/core/model/Purchase$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->OTHER:Lcom/google/android/youtube/core/model/Purchase$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Purchase$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Purchase$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Purchase$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
