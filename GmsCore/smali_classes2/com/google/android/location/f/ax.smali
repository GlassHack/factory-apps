.class public final enum Lcom/google/android/location/f/ax;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/f/ax;

.field public static final enum b:Lcom/google/android/location/f/ax;

.field public static final enum c:Lcom/google/android/location/f/ax;

.field private static final synthetic d:[Lcom/google/android/location/f/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/google/android/location/f/ax;

    const-string v1, "STATIONARY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/f/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/f/ax;->a:Lcom/google/android/location/f/ax;

    new-instance v0, Lcom/google/android/location/f/ax;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/f/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/f/ax;->b:Lcom/google/android/location/f/ax;

    new-instance v0, Lcom/google/android/location/f/ax;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/f/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/f/ax;->c:Lcom/google/android/location/f/ax;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/f/ax;

    sget-object v1, Lcom/google/android/location/f/ax;->a:Lcom/google/android/location/f/ax;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/f/ax;->b:Lcom/google/android/location/f/ax;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/f/ax;->c:Lcom/google/android/location/f/ax;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/location/f/ax;->d:[Lcom/google/android/location/f/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/f/ax;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/google/android/location/f/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ax;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/f/ax;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/location/f/ax;->d:[Lcom/google/android/location/f/ax;

    invoke-virtual {v0}, [Lcom/google/android/location/f/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/f/ax;

    return-object v0
.end method
