.class final enum Lcom/google/android/location/bc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/bc;

.field public static final enum b:Lcom/google/android/location/bc;

.field public static final enum c:Lcom/google/android/location/bc;

.field private static final synthetic d:[Lcom/google/android/location/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/google/android/location/bc;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/bc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/bc;->a:Lcom/google/android/location/bc;

    .line 97
    new-instance v0, Lcom/google/android/location/bc;

    const-string v1, "WIFI_WAIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/bc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/bc;->b:Lcom/google/android/location/bc;

    .line 98
    new-instance v0, Lcom/google/android/location/bc;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/bc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/bc;->c:Lcom/google/android/location/bc;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/bc;

    sget-object v1, Lcom/google/android/location/bc;->a:Lcom/google/android/location/bc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/bc;->b:Lcom/google/android/location/bc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/bc;->c:Lcom/google/android/location/bc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/location/bc;->d:[Lcom/google/android/location/bc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/bc;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/google/android/location/bc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/bc;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/bc;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/location/bc;->d:[Lcom/google/android/location/bc;

    invoke-virtual {v0}, [Lcom/google/android/location/bc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/bc;

    return-object v0
.end method
