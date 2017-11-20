.class abstract enum Lcom/google/android/location/reporting/m;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/i;


# static fields
.field public static final enum a:Lcom/google/android/location/reporting/m;

.field public static final enum b:Lcom/google/android/location/reporting/m;

.field public static final enum c:Lcom/google/android/location/reporting/m;

.field public static final enum d:Lcom/google/android/location/reporting/m;

.field private static final synthetic e:[Lcom/google/android/location/reporting/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lcom/google/android/location/reporting/n;

    const-string v1, "First"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/reporting/m;->a:Lcom/google/android/location/reporting/m;

    .line 282
    new-instance v0, Lcom/google/android/location/reporting/o;

    const-string v1, "ChargingInVehicle"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/reporting/m;->b:Lcom/google/android/location/reporting/m;

    .line 302
    new-instance v0, Lcom/google/android/location/reporting/p;

    const-string v1, "Phone"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/reporting/m;->c:Lcom/google/android/location/reporting/m;

    .line 327
    new-instance v0, Lcom/google/android/location/reporting/q;

    const-string v1, "Tablet"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/reporting/m;->d:Lcom/google/android/location/reporting/m;

    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/location/reporting/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/reporting/m;->a:Lcom/google/android/location/reporting/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/location/reporting/m;->b:Lcom/google/android/location/reporting/m;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/location/reporting/m;->c:Lcom/google/android/location/reporting/m;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/location/reporting/m;->d:Lcom/google/android/location/reporting/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/reporting/m;->e:[Lcom/google/android/location/reporting/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/reporting/m;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/reporting/m;
    .locals 1

    .prologue
    .line 254
    const-class v0, Lcom/google/android/location/reporting/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/m;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/reporting/m;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/google/android/location/reporting/m;->e:[Lcom/google/android/location/reporting/m;

    invoke-virtual {v0}, [Lcom/google/android/location/reporting/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/reporting/m;

    return-object v0
.end method
