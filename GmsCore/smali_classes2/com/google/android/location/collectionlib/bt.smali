.class final enum Lcom/google/android/location/collectionlib/bt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/collectionlib/bt;

.field public static final enum b:Lcom/google/android/location/collectionlib/bt;

.field private static final synthetic c:[Lcom/google/android/location/collectionlib/bt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/android/location/collectionlib/bt;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/collectionlib/bt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/bt;->a:Lcom/google/android/location/collectionlib/bt;

    .line 73
    new-instance v0, Lcom/google/android/location/collectionlib/bt;

    const-string v1, "BLOCK"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/collectionlib/bt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/collectionlib/bt;->b:Lcom/google/android/location/collectionlib/bt;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/collectionlib/bt;

    sget-object v1, Lcom/google/android/location/collectionlib/bt;->a:Lcom/google/android/location/collectionlib/bt;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/collectionlib/bt;->b:Lcom/google/android/location/collectionlib/bt;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/location/collectionlib/bt;->c:[Lcom/google/android/location/collectionlib/bt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/collectionlib/bt;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/android/location/collectionlib/bt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/bt;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/collectionlib/bt;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/location/collectionlib/bt;->c:[Lcom/google/android/location/collectionlib/bt;

    invoke-virtual {v0}, [Lcom/google/android/location/collectionlib/bt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/collectionlib/bt;

    return-object v0
.end method
