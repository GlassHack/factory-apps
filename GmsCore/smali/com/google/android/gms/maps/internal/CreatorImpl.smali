.class public Lcom/google/android/gms/maps/internal/CreatorImpl;
.super Lcom/google/android/gms/maps/internal/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/i;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Google Play services package version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/internal/b;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cy;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/c/cy;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/cc;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/CreatorImpl;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/maps/api/android/lib6/c/bn;

    invoke-direct {v1, v0, p2}, Lcom/google/maps/api/android/lib6/c/bn;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/w;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/CreatorImpl;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/maps/api/android/lib6/c/z;

    invoke-direct {v1, v0, p2}, Lcom/google/maps/api/android/lib6/c/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/e/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/maps/internal/CreatorImpl;->a(Lcom/google/android/gms/e/i;I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/e/i;I)V
    .locals 3

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google Play services client version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    sput-object v0, Lcom/google/maps/api/android/lib6/c/g;->a:Landroid/content/res/Resources;

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/c/ca;->a(I)V

    invoke-static {p2}, Lcom/google/android/gms/maps/internal/ck;->a(I)V

    invoke-static {p0}, Lcom/google/android/gms/maps/m;->a(Lcom/google/android/gms/maps/internal/h;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/e/i;)Lcom/google/android/gms/maps/internal/t;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/CreatorImpl;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(Landroid/app/Activity;)Z

    move-result v0

    new-instance v1, Lcom/google/maps/api/android/lib6/c/u;

    new-instance v2, Lcom/google/maps/api/android/lib6/c/v;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/c/v;-><init>(Z)V

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/c/u;-><init>(Lcom/google/maps/api/android/lib6/c/w;)V

    return-object v1
.end method

.method public final b()Lcom/google/android/gms/maps/model/a/a;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ci;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/c/ci;-><init>()V

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/e/i;)Lcom/google/android/gms/maps/internal/bz;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/CreatorImpl;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(Landroid/app/Activity;)Z

    move-result v0

    new-instance v1, Lcom/google/maps/api/android/lib6/c/be;

    new-instance v2, Lcom/google/maps/api/android/lib6/c/bf;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/c/bf;-><init>(Z)V

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/c/be;-><init>(Lcom/google/maps/api/android/lib6/c/bg;)V

    return-object v1
.end method
