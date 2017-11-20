.class public final enum Lcom/google/android/location/collectionlib/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/collectionlib/aj;

.field public static final enum b:Lcom/google/android/location/collectionlib/aj;

.field public static final enum c:Lcom/google/android/location/collectionlib/aj;

.field public static final enum d:Lcom/google/android/location/collectionlib/aj;

.field private static final synthetic e:[Lcom/google/android/location/collectionlib/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/android/location/collectionlib/aj;

    const-string v1, "MEMORY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/collectionlib/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/aj;->a:Lcom/google/android/location/collectionlib/aj;

    .line 25
    new-instance v0, Lcom/google/android/location/collectionlib/aj;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/collectionlib/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/aj;->b:Lcom/google/android/location/collectionlib/aj;

    .line 28
    new-instance v0, Lcom/google/android/location/collectionlib/aj;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/collectionlib/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/aj;->c:Lcom/google/android/location/collectionlib/aj;

    .line 32
    new-instance v0, Lcom/google/android/location/collectionlib/aj;

    const-string v1, "MEMORY_SENSOR_EVENTS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/collectionlib/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/aj;->d:Lcom/google/android/location/collectionlib/aj;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/location/collectionlib/aj;

    sget-object v1, Lcom/google/android/location/collectionlib/aj;->a:Lcom/google/android/location/collectionlib/aj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/collectionlib/aj;->b:Lcom/google/android/location/collectionlib/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/collectionlib/aj;->c:Lcom/google/android/location/collectionlib/aj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/collectionlib/aj;->d:Lcom/google/android/location/collectionlib/aj;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/collectionlib/aj;->e:[Lcom/google/android/location/collectionlib/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/collectionlib/aj;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/location/collectionlib/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/aj;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/collectionlib/aj;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/location/collectionlib/aj;->e:[Lcom/google/android/location/collectionlib/aj;

    invoke-virtual {v0}, [Lcom/google/android/location/collectionlib/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/collectionlib/aj;

    return-object v0
.end method
