.class public final enum Lcom/google/android/location/os/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/os/d;

.field public static final enum b:Lcom/google/android/location/os/d;

.field private static final synthetic c:[Lcom/google/android/location/os/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/google/android/location/os/d;

    const-string v1, "OS_GENERATED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/os/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    new-instance v0, Lcom/google/android/location/os/d;

    const-string v1, "CLIENT_GENERATED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/os/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/os/d;

    sget-object v1, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/location/os/d;->c:[Lcom/google/android/location/os/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/os/d;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/google/android/location/os/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/d;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/os/d;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/location/os/d;->c:[Lcom/google/android/location/os/d;

    invoke-virtual {v0}, [Lcom/google/android/location/os/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/os/d;

    return-object v0
.end method
