.class public final Lcom/google/maps/api/android/lib6/gmm6/l/ag;
.super Lcom/google/maps/api/android/lib6/gmm6/l/af;


# static fields
.field public static final c:Lcom/google/maps/api/android/lib6/gmm6/l/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ag;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/af;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/af;-><init>(I)V

    return-void
.end method

.method public static b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ag;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ag;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->a:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
