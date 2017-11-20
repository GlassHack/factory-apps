.class public final enum Lcom/google/android/location/f/ba;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/f/ba;

.field public static final enum b:Lcom/google/android/location/f/ba;

.field public static final enum c:Lcom/google/android/location/f/ba;

.field public static final enum d:Lcom/google/android/location/f/ba;

.field private static final synthetic e:[Lcom/google/android/location/f/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/google/android/location/f/ba;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/f/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/f/ba;->a:Lcom/google/android/location/f/ba;

    new-instance v0, Lcom/google/android/location/f/ba;

    const-string v1, "LOW_CONFIDENCE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/f/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/f/ba;->b:Lcom/google/android/location/f/ba;

    new-instance v0, Lcom/google/android/location/f/ba;

    const-string v1, "MEDIUM_CONFIDENCE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/f/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/f/ba;->c:Lcom/google/android/location/f/ba;

    new-instance v0, Lcom/google/android/location/f/ba;

    const-string v1, "HIGH_CONFIDENCE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/f/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/f/ba;->d:Lcom/google/android/location/f/ba;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/location/f/ba;

    sget-object v1, Lcom/google/android/location/f/ba;->a:Lcom/google/android/location/f/ba;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/f/ba;->b:Lcom/google/android/location/f/ba;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/f/ba;->c:Lcom/google/android/location/f/ba;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/f/ba;->d:Lcom/google/android/location/f/ba;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/f/ba;->e:[Lcom/google/android/location/f/ba;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/google/android/location/f/ba;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/google/android/location/f/ba;->d:Lcom/google/android/location/f/ba;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/f/ba;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/google/android/location/f/ba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ba;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/f/ba;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/location/f/ba;->e:[Lcom/google/android/location/f/ba;

    invoke-virtual {v0}, [Lcom/google/android/location/f/ba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/f/ba;

    return-object v0
.end method
