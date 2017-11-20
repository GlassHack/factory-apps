.class public final Lcom/google/maps/api/android/lib6/gmm6/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/f;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/f;->a:Lcom/google/maps/api/android/lib6/gmm6/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/f;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/f;->a:Lcom/google/maps/api/android/lib6/gmm6/f;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/gms/maps/v;->a:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "http://clients4.google.com/glm/mmap/api"

    return-object v0
.end method

.method public static d()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->p()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v2, 0x20000

    if-lt v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a()Lcom/google/maps/api/android/lib6/gmm6/d/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/d/c;->a:Z

    return v0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a()Lcom/google/maps/api/android/lib6/gmm6/n/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a()Lcom/google/maps/api/android/lib6/gmm6/n/j;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/j;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()V
    .locals 0

    return-void
.end method

.method public static i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
