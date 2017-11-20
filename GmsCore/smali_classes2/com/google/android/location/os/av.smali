.class public final enum Lcom/google/android/location/os/av;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/os/av;

.field private static final synthetic b:[Lcom/google/android/location/os/av;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/location/os/av;

    const-string v1, "TRIGGER_ACTIVE_BURST_COLLECTION"

    invoke-direct {v0, v1}, Lcom/google/android/location/os/av;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/os/av;->a:Lcom/google/android/location/os/av;

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/location/os/av;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/os/av;->a:Lcom/google/android/location/os/av;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/os/av;->b:[Lcom/google/android/location/os/av;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/os/av;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/google/android/location/os/av;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/av;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/os/av;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/location/os/av;->b:[Lcom/google/android/location/os/av;

    invoke-virtual {v0}, [Lcom/google/android/location/os/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/os/av;

    return-object v0
.end method
