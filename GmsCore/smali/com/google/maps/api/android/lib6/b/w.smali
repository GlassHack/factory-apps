.class public final Lcom/google/maps/api/android/lib6/b/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/g/a/d;

.field private static final b:Ljava/util/Vector;

.field private static c:[B

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/w;->a:Lcom/google/g/a/d;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/w;->b:Ljava/util/Vector;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/maps/api/android/lib6/b/w;->d:J

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/w;->b()V

    return-void
.end method

.method public static a()V
    .locals 6

    const/4 v0, 0x0

    sput-object v0, Lcom/google/maps/api/android/lib6/b/w;->c:[B

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OutOfMemory"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/b/w;->a:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v0, Lcom/google/maps/api/android/lib6/b/w;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/google/maps/api/android/lib6/b/w;->d:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/b/w;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/b/w;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/w;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sput-wide v2, Lcom/google/maps/api/android/lib6/b/w;->d:J

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/google/maps/api/android/lib6/b/w;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/b/w;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/w;->b()V

    return-void
.end method

.method private static b()V
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/w;->c:[B

    if-nez v0, :cond_0

    const v0, 0x8000

    :try_start_0
    new-array v0, v0, [B

    sput-object v0, Lcom/google/maps/api/android/lib6/b/w;->c:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
