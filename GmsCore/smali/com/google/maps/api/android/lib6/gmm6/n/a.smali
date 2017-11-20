.class public final Lcom/google/maps/api/android/lib6/gmm6/n/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/google/maps/api/android/lib6/gmm6/n/a;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a([I)Lcom/google/maps/api/android/lib6/gmm6/n/a;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/n/a;Lcom/google/maps/api/android/lib6/gmm6/n/a;)Lcom/google/maps/api/android/lib6/gmm6/n/a;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/a;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;-><init>(I)V

    return-object v0
.end method

.method public static varargs a([I)Lcom/google/maps/api/android/lib6/gmm6/n/a;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b([I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;-><init>(I)V

    return-object v0
.end method

.method private static varargs b([I)I
    .locals 5

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/n/a;)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a(Lcom/google/maps/api/android/lib6/gmm6/n/a;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/n/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/n/a;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/a;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_0
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
