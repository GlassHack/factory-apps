.class final enum Lcom/google/android/gms/fitness/d/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/fitness/d/a/d;

.field public static final enum b:Lcom/google/android/gms/fitness/d/a/d;

.field public static final enum c:Lcom/google/android/gms/fitness/d/a/d;

.field public static final enum d:Lcom/google/android/gms/fitness/d/a/d;

.field private static final synthetic f:[Lcom/google/android/gms/fitness/d/a/d;


# instance fields
.field private e:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/google/android/gms/fitness/d/a/d;

    const-string v1, "CYCLING_SPEED_AND_CADENCE"

    const-string v2, "00001816-0000-1000-8000-00805F9B34FB"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/fitness/d/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/d;->a:Lcom/google/android/gms/fitness/d/a/d;

    .line 16
    new-instance v0, Lcom/google/android/gms/fitness/d/a/d;

    const-string v1, "DEVICE_INFORMATION"

    const-string v2, "0000180A-0000-1000-8000-00805F9B34FB"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/fitness/d/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/d;->b:Lcom/google/android/gms/fitness/d/a/d;

    .line 17
    new-instance v0, Lcom/google/android/gms/fitness/d/a/d;

    const-string v1, "HEART_RATE"

    const-string v2, "0000180D-0000-1000-8000-00805F9B34FB"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/fitness/d/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/d;->c:Lcom/google/android/gms/fitness/d/a/d;

    .line 18
    new-instance v0, Lcom/google/android/gms/fitness/d/a/d;

    const-string v1, "RUNNING_SPEED_AND_CADENCE"

    const-string v2, "00001814-0000-1000-8000-00805F9B34FB"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/fitness/d/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/d;->d:Lcom/google/android/gms/fitness/d/a/d;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/fitness/d/a/d;

    sget-object v1, Lcom/google/android/gms/fitness/d/a/d;->a:Lcom/google/android/gms/fitness/d/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/fitness/d/a/d;->b:Lcom/google/android/gms/fitness/d/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/d/a/d;->c:Lcom/google/android/gms/fitness/d/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/d/a/d;->d:Lcom/google/android/gms/fitness/d/a/d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/fitness/d/a/d;->f:[Lcom/google/android/gms/fitness/d/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/d;->e:Ljava/util/UUID;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fitness/d/a/d;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/android/gms/fitness/d/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/a/d;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/fitness/d/a/d;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/fitness/d/a/d;->f:[Lcom/google/android/gms/fitness/d/a/d;

    invoke-virtual {v0}, [Lcom/google/android/gms/fitness/d/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fitness/d/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/d;->e:Ljava/util/UUID;

    return-object v0
.end method
