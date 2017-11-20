.class final enum Lcom/google/android/location/os/real/am;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/os/real/am;

.field public static final enum b:Lcom/google/android/location/os/real/am;

.field public static final enum c:Lcom/google/android/location/os/real/am;

.field public static final enum d:Lcom/google/android/location/os/real/am;

.field private static final synthetic e:[Lcom/google/android/location/os/real/am;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/google/android/location/os/real/am;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/os/real/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/am;->a:Lcom/google/android/location/os/real/am;

    new-instance v0, Lcom/google/android/location/os/real/am;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/os/real/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/am;->b:Lcom/google/android/location/os/real/am;

    new-instance v0, Lcom/google/android/location/os/real/am;

    const-string v1, "MODEL_QUERY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/os/real/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/am;->c:Lcom/google/android/location/os/real/am;

    new-instance v0, Lcom/google/android/location/os/real/am;

    const-string v1, "DEVICE_LOCATION_QUERY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/os/real/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/am;->d:Lcom/google/android/location/os/real/am;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/location/os/real/am;

    sget-object v1, Lcom/google/android/location/os/real/am;->a:Lcom/google/android/location/os/real/am;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/os/real/am;->b:Lcom/google/android/location/os/real/am;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/os/real/am;->c:Lcom/google/android/location/os/real/am;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/os/real/am;->d:Lcom/google/android/location/os/real/am;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/os/real/am;->e:[Lcom/google/android/location/os/real/am;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/os/real/am;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/google/android/location/os/real/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/am;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/os/real/am;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/location/os/real/am;->e:[Lcom/google/android/location/os/real/am;

    invoke-virtual {v0}, [Lcom/google/android/location/os/real/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/os/real/am;

    return-object v0
.end method
