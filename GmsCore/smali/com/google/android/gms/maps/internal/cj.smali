.class public Lcom/google/android/gms/maps/internal/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/google/android/gms/maps/internal/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/h;
    .locals 3

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/android/gms/maps/internal/cj;->b:Lcom/google/android/gms/maps/internal/h;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/google/android/gms/maps/internal/cj;->b:Lcom/google/android/gms/maps/internal/h;

    .line 67
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lcom/google/android/gms/common/i;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/i;-><init>(I)V

    throw v1

    .line 58
    :pswitch_0
    const-class v0, Lcom/google/android/gms/maps/internal/cj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Making Creator dynamically"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/cj;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.maps.internal.CreatorImpl"

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/internal/cj;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/internal/cj;->b:Lcom/google/android/gms/maps/internal/h;

    .line 61
    :try_start_0
    sget-object v0, Lcom/google/android/gms/maps/internal/cj;->b:Lcom/google/android/gms/maps/internal/h;

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/cj;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v1

    const v2, 0x5d4044

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/internal/h;->a(Lcom/google/android/gms/e/i;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    sget-object v0, Lcom/google/android/gms/maps/internal/cj;->b:Lcom/google/android/gms/maps/internal/h;

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to instantiate the dynamic class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to call the default constructor of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/cj;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find dynamic class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/android/gms/maps/internal/cj;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/google/android/gms/common/k;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/internal/cj;->a:Landroid/content/Context;

    .line 149
    :cond_0
    sget-object v0, Lcom/google/android/gms/maps/internal/cj;->a:Landroid/content/Context;

    return-object v0
.end method
