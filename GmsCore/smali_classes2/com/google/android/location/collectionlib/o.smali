.class final enum Lcom/google/android/location/collectionlib/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/collectionlib/o;

.field public static final enum b:Lcom/google/android/location/collectionlib/o;

.field public static final enum c:Lcom/google/android/location/collectionlib/o;

.field public static final enum d:Lcom/google/android/location/collectionlib/o;

.field public static final enum e:Lcom/google/android/location/collectionlib/o;

.field private static final synthetic f:[Lcom/google/android/location/collectionlib/o;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 645
    new-instance v0, Lcom/google/android/location/collectionlib/o;

    const-string v1, "NOT_READ_YET"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/collectionlib/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/o;->a:Lcom/google/android/location/collectionlib/o;

    .line 649
    new-instance v0, Lcom/google/android/location/collectionlib/o;

    const-string v1, "READ_INTERRUPTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/collectionlib/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/o;->b:Lcom/google/android/location/collectionlib/o;

    .line 653
    new-instance v0, Lcom/google/android/location/collectionlib/o;

    const-string v1, "READ_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/collectionlib/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/o;->c:Lcom/google/android/location/collectionlib/o;

    .line 658
    new-instance v0, Lcom/google/android/location/collectionlib/o;

    const-string v1, "READ_FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/collectionlib/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/o;->d:Lcom/google/android/location/collectionlib/o;

    .line 662
    new-instance v0, Lcom/google/android/location/collectionlib/o;

    const-string v1, "INVALID_FORMAT"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/collectionlib/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/o;->e:Lcom/google/android/location/collectionlib/o;

    .line 641
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/location/collectionlib/o;

    sget-object v1, Lcom/google/android/location/collectionlib/o;->a:Lcom/google/android/location/collectionlib/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/collectionlib/o;->b:Lcom/google/android/location/collectionlib/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/collectionlib/o;->c:Lcom/google/android/location/collectionlib/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/collectionlib/o;->d:Lcom/google/android/location/collectionlib/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/collectionlib/o;->e:Lcom/google/android/location/collectionlib/o;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/location/collectionlib/o;->f:[Lcom/google/android/location/collectionlib/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/collectionlib/o;
    .locals 1

    .prologue
    .line 641
    const-class v0, Lcom/google/android/location/collectionlib/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/o;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/collectionlib/o;
    .locals 1

    .prologue
    .line 641
    sget-object v0, Lcom/google/android/location/collectionlib/o;->f:[Lcom/google/android/location/collectionlib/o;

    invoke-virtual {v0}, [Lcom/google/android/location/collectionlib/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/collectionlib/o;

    return-object v0
.end method
