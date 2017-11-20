.class public final enum Lcom/google/android/location/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/o;

.field public static final enum b:Lcom/google/android/location/o;

.field public static final enum c:Lcom/google/android/location/o;

.field public static final enum d:Lcom/google/android/location/o;

.field public static final enum e:Lcom/google/android/location/o;

.field private static final synthetic f:[Lcom/google/android/location/o;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/google/android/location/o;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/o;->a:Lcom/google/android/location/o;

    .line 145
    new-instance v0, Lcom/google/android/location/o;

    const-string v1, "DETECTING_ACTIVITY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/o;->b:Lcom/google/android/location/o;

    .line 146
    new-instance v0, Lcom/google/android/location/o;

    const-string v1, "RANDOM_WAIT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/o;->c:Lcom/google/android/location/o;

    .line 147
    new-instance v0, Lcom/google/android/location/o;

    const-string v1, "CLIENT_WAIT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/o;->d:Lcom/google/android/location/o;

    .line 148
    new-instance v0, Lcom/google/android/location/o;

    const-string v1, "GPS_WAIT"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/o;->e:Lcom/google/android/location/o;

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/location/o;

    sget-object v1, Lcom/google/android/location/o;->a:Lcom/google/android/location/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/o;->b:Lcom/google/android/location/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/o;->c:Lcom/google/android/location/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/o;->d:Lcom/google/android/location/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/o;->e:Lcom/google/android/location/o;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/location/o;->f:[Lcom/google/android/location/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/o;
    .locals 1

    .prologue
    .line 143
    const-class v0, Lcom/google/android/location/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/o;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/o;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/location/o;->f:[Lcom/google/android/location/o;

    invoke-virtual {v0}, [Lcom/google/android/location/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/o;

    return-object v0
.end method
