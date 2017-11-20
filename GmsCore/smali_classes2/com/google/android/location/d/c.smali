.class public final enum Lcom/google/android/location/d/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/d/c;

.field public static final enum b:Lcom/google/android/location/d/c;

.field public static final enum c:Lcom/google/android/location/d/c;

.field public static final enum d:Lcom/google/android/location/d/c;

.field private static final synthetic e:[Lcom/google/android/location/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/google/android/location/d/c;

    const-string v1, "LOCATION_ACTIVE_ON"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/d/c;->a:Lcom/google/android/location/d/c;

    new-instance v0, Lcom/google/android/location/d/c;

    const-string v1, "LOCATION_ACTIVE_OFF"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/d/c;->b:Lcom/google/android/location/d/c;

    new-instance v0, Lcom/google/android/location/d/c;

    const-string v1, "SATELLITE_STATUS_ON"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/d/c;->c:Lcom/google/android/location/d/c;

    new-instance v0, Lcom/google/android/location/d/c;

    const-string v1, "SATELLITE_STATUS_OFF"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/d/c;->d:Lcom/google/android/location/d/c;

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/location/d/c;

    sget-object v1, Lcom/google/android/location/d/c;->a:Lcom/google/android/location/d/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/d/c;->b:Lcom/google/android/location/d/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/d/c;->c:Lcom/google/android/location/d/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/d/c;->d:Lcom/google/android/location/d/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/d/c;->e:[Lcom/google/android/location/d/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/d/c;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/google/android/location/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/c;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/d/c;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/android/location/d/c;->e:[Lcom/google/android/location/d/c;

    invoke-virtual {v0}, [Lcom/google/android/location/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/d/c;

    return-object v0
.end method
