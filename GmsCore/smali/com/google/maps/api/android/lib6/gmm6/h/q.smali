.class public final enum Lcom/google/maps/api/android/lib6/gmm6/h/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/maps/api/android/lib6/gmm6/h/q;

.field public static final enum b:Lcom/google/maps/api/android/lib6/gmm6/h/q;

.field public static final enum c:Lcom/google/maps/api/android/lib6/gmm6/h/q;

.field public static final enum d:Lcom/google/maps/api/android/lib6/gmm6/h/q;

.field private static enum e:Lcom/google/maps/api/android/lib6/gmm6/h/q;

.field private static final synthetic f:[Lcom/google/maps/api/android/lib6/gmm6/h/q;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;

    const-string v1, "NO_VERIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->e:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;

    const-string v1, "NO_VERIFICATION_WITH_REASON"

    invoke-direct {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->a:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;

    const-string v1, "AREA_VERIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->b:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;

    const-string v1, "AREA_VERIFICATION_WITH_REASON"

    invoke-direct {v0, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->c:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;

    const-string v1, "COMPLETE_VERIFICATION"

    invoke-direct {v0, v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->d:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/h/q;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/q;->e:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/q;->a:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/q;->b:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/q;->c:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/q;->d:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->f:[Lcom/google/maps/api/android/lib6/gmm6/h/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/h/q;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/h/q;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->f:[Lcom/google/maps/api/android/lib6/gmm6/h/q;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/h/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/h/q;

    return-object v0
.end method
