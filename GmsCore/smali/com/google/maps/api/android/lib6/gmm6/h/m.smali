.class public final enum Lcom/google/maps/api/android/lib6/gmm6/h/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

.field public static final enum b:Lcom/google/maps/api/android/lib6/gmm6/h/m;

.field public static final enum c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

.field private static final synthetic d:[Lcom/google/maps/api/android/lib6/gmm6/h/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;

    const-string v1, "EMPTY_MESH"

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;

    const-string v1, "TESSELLATE_MONOTONE"

    invoke-direct {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;->b:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;

    const-string v1, "CUT_AND_TESSELLATE"

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/h/m;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->b:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;->d:[Lcom/google/maps/api/android/lib6/gmm6/h/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/h/m;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/h/m;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/m;->d:[Lcom/google/maps/api/android/lib6/gmm6/h/m;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/h/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/h/m;

    return-object v0
.end method
