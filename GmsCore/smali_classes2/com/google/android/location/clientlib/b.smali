.class public final enum Lcom/google/android/location/clientlib/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/clientlib/b;

.field public static final enum b:Lcom/google/android/location/clientlib/b;

.field public static final enum c:Lcom/google/android/location/clientlib/b;

.field public static final enum d:Lcom/google/android/location/clientlib/b;

.field public static final enum e:Lcom/google/android/location/clientlib/b;

.field private static final synthetic f:[Lcom/google/android/location/clientlib/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/google/android/location/clientlib/b;

    const-string v1, "IN_CAR"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/clientlib/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/b;->a:Lcom/google/android/location/clientlib/b;

    new-instance v0, Lcom/google/android/location/clientlib/b;

    const-string v1, "ON_BICYCLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/clientlib/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/b;->b:Lcom/google/android/location/clientlib/b;

    new-instance v0, Lcom/google/android/location/clientlib/b;

    const-string v1, "ON_FOOT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/clientlib/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/b;->c:Lcom/google/android/location/clientlib/b;

    new-instance v0, Lcom/google/android/location/clientlib/b;

    const-string v1, "STILL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/clientlib/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/b;->d:Lcom/google/android/location/clientlib/b;

    new-instance v0, Lcom/google/android/location/clientlib/b;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/clientlib/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/b;->e:Lcom/google/android/location/clientlib/b;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/location/clientlib/b;

    sget-object v1, Lcom/google/android/location/clientlib/b;->a:Lcom/google/android/location/clientlib/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/clientlib/b;->b:Lcom/google/android/location/clientlib/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/clientlib/b;->c:Lcom/google/android/location/clientlib/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/clientlib/b;->d:Lcom/google/android/location/clientlib/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/clientlib/b;->e:Lcom/google/android/location/clientlib/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/location/clientlib/b;->f:[Lcom/google/android/location/clientlib/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/clientlib/b;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/location/clientlib/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/clientlib/b;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/clientlib/b;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/location/clientlib/b;->f:[Lcom/google/android/location/clientlib/b;

    invoke-virtual {v0}, [Lcom/google/android/location/clientlib/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/clientlib/b;

    return-object v0
.end method
