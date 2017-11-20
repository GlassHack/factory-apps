.class public final enum Lcom/google/maps/api/android/lib6/gmm6/o/bf;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

.field public static final enum b:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

.field private static final synthetic c:[Lcom/google/maps/api/android/lib6/gmm6/o/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    const-string v1, "UPPER_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    const-string v1, "UPPER_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->c:[Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/o/bf;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/o/bf;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->c:[Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/o/bf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    return-object v0
.end method
