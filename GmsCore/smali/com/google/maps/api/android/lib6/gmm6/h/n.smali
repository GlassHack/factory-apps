.class public final enum Lcom/google/maps/api/android/lib6/gmm6/h/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/maps/api/android/lib6/gmm6/h/n;

.field public static final enum b:Lcom/google/maps/api/android/lib6/gmm6/h/n;

.field public static final enum c:Lcom/google/maps/api/android/lib6/gmm6/h/n;

.field public static final enum d:Lcom/google/maps/api/android/lib6/gmm6/h/n;

.field private static final synthetic e:[Lcom/google/maps/api/android/lib6/gmm6/h/n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;

    const-string v1, "CCW_OUTLINE"

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->a:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;

    const-string v1, "CW_HOLES"

    invoke-direct {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->b:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;

    const-string v1, "NON_SELF_INTERSECTING"

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->c:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;

    const-string v1, "NO_LINES_STICKING_OUT"

    invoke-direct {v0, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->d:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/h/n;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/n;->a:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/n;->b:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/n;->c:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/n;->d:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->e:[Lcom/google/maps/api/android/lib6/gmm6/h/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/h/n;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/h/n;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->e:[Lcom/google/maps/api/android/lib6/gmm6/h/n;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/h/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/h/n;

    return-object v0
.end method
