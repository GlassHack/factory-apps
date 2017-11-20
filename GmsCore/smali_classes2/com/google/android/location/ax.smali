.class public final enum Lcom/google/android/location/ax;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/ax;

.field public static final enum b:Lcom/google/android/location/ax;

.field private static final synthetic c:[Lcom/google/android/location/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/google/android/location/ax;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ax;->a:Lcom/google/android/location/ax;

    new-instance v0, Lcom/google/android/location/ax;

    const-string v1, "REFINED_BY_IN_OUTDOOR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ax;->b:Lcom/google/android/location/ax;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/ax;

    sget-object v1, Lcom/google/android/location/ax;->a:Lcom/google/android/location/ax;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/ax;->b:Lcom/google/android/location/ax;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/location/ax;->c:[Lcom/google/android/location/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/ax;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/android/location/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/ax;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/ax;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/location/ax;->c:[Lcom/google/android/location/ax;

    invoke-virtual {v0}, [Lcom/google/android/location/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/ax;

    return-object v0
.end method
