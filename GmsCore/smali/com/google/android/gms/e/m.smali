.class public final Lcom/google/android/gms/e/m;
.super Lcom/google/android/gms/e/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/e/j;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/e/m;->a:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/e/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/e/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 44
    instance-of v0, p0, Lcom/google/android/gms/e/m;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/google/android/gms/e/m;

    iget-object v0, p0, Lcom/google/android/gms/e/m;->a:Ljava/lang/Object;

    .line 60
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    array-length v2, v1

    if-ne v2, v3, :cond_2

    .line 56
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 57
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Binder object is null."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteBinder is the wrong class."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :catch_2
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not access the field in remoteBinder."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
