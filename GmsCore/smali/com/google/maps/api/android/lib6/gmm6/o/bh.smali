.class public final enum Lcom/google/maps/api/android/lib6/gmm6/o/bh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field public static final enum b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field public static final enum c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field public static final enum d:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field public static final enum e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field public static final enum f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field public static final g:I

.field private static final synthetic i:[Lcom/google/maps/api/android/lib6/gmm6/o/bh;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const-string v1, "HYBRID"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const-string v1, "NIGHT"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const-string v1, "TERRAIN"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const-string v1, "RASTER_ONLY"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const-string v1, "NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->i:[Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->values()[Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->g:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/o/bh;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/o/bh;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->i:[Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/o/bh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->h:I

    return v0
.end method
