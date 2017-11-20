.class final Lcom/google/maps/api/android/lib6/gmm6/l/be;
.super Lcom/google/maps/api/android/lib6/gmm6/l/av;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bf;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ay;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bf;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/be;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/bf;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/o;Landroid/content/res/Resources;Ljava/util/Locale;Ljava/io/File;ZZ)Lcom/google/maps/api/android/lib6/gmm6/m/y;
    .locals 2

    const/16 v0, 0x100

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/q;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/m/q;-><init>(Lcom/google/maps/api/android/lib6/b/o;ILjava/util/Locale;Ljava/io/File;)V

    return-object v1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)I

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
