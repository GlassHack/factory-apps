.class public final enum Lcom/google/maps/api/android/lib6/gmm6/d;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:Lcom/google/maps/api/android/lib6/gmm6/d;

.field private static enum b:Lcom/google/maps/api/android/lib6/gmm6/d;

.field private static final synthetic c:[Lcom/google/maps/api/android/lib6/gmm6/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/d;

    const-string v1, "ORIENTATION_PROVIDER_ACTIVITY_RESUME"

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/d;->a:Lcom/google/maps/api/android/lib6/gmm6/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/d;

    const-string v1, "START_MOTION_RECOGNIZER"

    invoke-direct {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/d;->b:Lcom/google/maps/api/android/lib6/gmm6/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/d;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/d;->a:Lcom/google/maps/api/android/lib6/gmm6/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/d;->b:Lcom/google/maps/api/android/lib6/gmm6/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/d;->c:[Lcom/google/maps/api/android/lib6/gmm6/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/d;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/d;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/d;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/d;->c:[Lcom/google/maps/api/android/lib6/gmm6/d;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/d;

    return-object v0
.end method
