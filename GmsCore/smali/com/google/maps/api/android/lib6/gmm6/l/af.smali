.class public Lcom/google/maps/api/android/lib6/gmm6/l/af;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/google/maps/api/android/lib6/gmm6/l/af;


# instance fields
.field protected final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/af;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/af;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/af;->b:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/af;
    .locals 2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/af;-><init>(I)V

    return-object v1
.end method

.method public static c()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/af;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
