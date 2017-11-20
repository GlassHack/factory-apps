.class public final Lcom/google/maps/api/android/lib6/gmm6/l/ac;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/google/maps/api/android/lib6/gmm6/l/ac;


# instance fields
.field private final a:I

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/l/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a()Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;-><init>(ILcom/google/maps/api/android/lib6/gmm6/l/w;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    return-void
.end method

.method public constructor <init>(ILcom/google/maps/api/android/lib6/gmm6/l/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->a:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    return-void
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/l/ac;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ac;
    .locals 3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v1

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;-><init>(ILcom/google/maps/api/android/lib6/gmm6/l/w;)V

    return-object v2
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->hashCode()I

    move-result v0

    goto :goto_0
.end method
