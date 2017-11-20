.class public final enum Lcom/google/android/location/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/g;

.field public static final enum b:Lcom/google/android/location/g;

.field private static final synthetic c:[Lcom/google/android/location/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/android/location/g;

    const-string v1, "USING_FULL_TIME_SPANS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    .line 48
    new-instance v0, Lcom/google/android/location/g;

    const-string v1, "USING_IN_OUTDOOR_HINTS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/g;->b:Lcom/google/android/location/g;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/g;

    sget-object v1, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/g;->b:Lcom/google/android/location/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/location/g;->c:[Lcom/google/android/location/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/g;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/location/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/g;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/g;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/location/g;->c:[Lcom/google/android/location/g;

    invoke-virtual {v0}, [Lcom/google/android/location/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/g;

    return-object v0
.end method
