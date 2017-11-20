.class final enum Lcom/google/android/gms/fitness/sensors/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/fitness/sensors/a/e;

.field private static final synthetic c:[Lcom/google/android/gms/fitness/sensors/a/e;


# instance fields
.field private b:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/e;

    const-string v1, "CLIENT_CHARACTERISTIC_CONFIGURATION"

    const-string v2, "00002902-0000-1000-8000-00805F9B34FB"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/a/e;->a:Lcom/google/android/gms/fitness/sensors/a/e;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/fitness/sensors/a/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/fitness/sensors/a/e;->a:Lcom/google/android/gms/fitness/sensors/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/sensors/a/e;->c:[Lcom/google/android/gms/fitness/sensors/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/e;->b:Ljava/util/UUID;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fitness/sensors/a/e;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/android/gms/fitness/sensors/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a/e;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/fitness/sensors/a/e;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/fitness/sensors/a/e;->c:[Lcom/google/android/gms/fitness/sensors/a/e;

    invoke-virtual {v0}, [Lcom/google/android/gms/fitness/sensors/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fitness/sensors/a/e;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/e;->b:Ljava/util/UUID;

    return-object v0
.end method
